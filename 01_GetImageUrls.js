import puppeteer from 'puppeteer'
import { existsSync, mkdirSync, writeFile } from 'fs'

import { createPathIfNotExists } from './00_Utils.js'

const getUrls = async (pageUrl, selector) => {
    // init browser
    const browser = await puppeteer.launch()
    const page = await browser.newPage()
    await page.goto(pageUrl)
    // wait for page to load remote data
    await page.waitForNetworkIdle()

    // get image tags and retrieve their src attribute
    const urls = await page.$$eval(selector,
        images => images.map(image => image.getAttribute("src"))
    )

    // logging
    console.log("Found " + urls.length + " images of bikes")
    console.log(urls.slice(0, 5))
    console.log("...")

    // close browser
    await browser.close()
    return urls
}

const writeUrlsToFile = async (urls, path, separator) => {
    return new Promise((resolve, reject) => {

        createPathIfNotExists(path, true)

        writeFile(path, urls.join(`${separator}\n`), { encoding: 'utf-8' }, (err) => {
            if (err) reject(err);
            console.log('The file has been saved!');
            resolve()
        })
    })
}

// MAIN FUNCTION
(async () => {

    // NON E-BIKES
    // get pictures of fullys
    const fullyUrls = await getUrls("https://99spokes.com/en-EU/bikes?ebike=0&region=europe&suspension=full", "div picture img")
    await writeUrlsToFile(fullyUrls, "./urls/bio/fullys.txt", ";")

    // get pictures of hardtails
    const hardtailUrls = await getUrls("https://99spokes.com/en-EU/bikes?ebike=0&region=europe&suspension=hardtail", "div picture img")
    await writeUrlsToFile(hardtailUrls, "./urls/bio/hardtails.txt", ";")

})()