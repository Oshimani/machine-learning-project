import puppeteer from 'puppeteer'
import { existsSync, mkdirSync, writeFile } from 'fs'

import { createPathIfNotExists } from './00_Utils.js'

const blacklist = [
    "9d8cf.jpeg",
    "27c6f.jpeg",
    "fab42.jpeg",
    "d4345.jpeg",
    "8857f.jpeg",
    "667be.jpeg",
    "1284d.jpeg",
    "26714.jpeg",
    "2aaB4.jpeg",
    "d3c43.jpeg",
]

const getUrls = async (pageUrl, selector) => {
    // init browser
    const browser = await puppeteer.launch()
    const page = await browser.newPage()
    await page.goto(pageUrl)
    // wait for page to load remote data
    await page.waitForNetworkIdle()

    // get image tags and retrieve their src attribute
    let urls = await page.$$eval(selector,
        images => images.map(image => image.getAttribute("src"))
    )

    // filter blacklisted urls
    urls = urls.filter(url => {
        const filename = url.split("/").pop()
        return !blacklist.includes(filename)
    })

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

    let type = "training"
    // BIO BIKES
    // get pictures of fullys
    const fullyUrlsBelow5k = await getUrls("https://99spokes.com/en-EU/bikes?category=mountain&ebike=0&frameset=0&price=-5000&region=europe&suspension=full", "div picture img")
    const fullyUrlsAbove5k = await getUrls("https://99spokes.com/en-EU/bikes?category=mountain&ebike=0&frameset=0&price=5000-&region=europe&suspension=full", "div picture img")

    await writeUrlsToFile(fullyUrlsBelow5k, `./urls/${type}/fullys1.txt`, ";")
    await writeUrlsToFile(fullyUrlsAbove5k, `./urls/${type}/fullys2.txt`, ";")


    // get pictures of hardtails
    const hardtailUrlsBelow5K = await getUrls("https://99spokes.com/en-EU/bikes?ebike=0&frameset=0&price=-5000&region=europe&suspension=hardtail", "div picture img")
    const hardtailUrlsAbove5K = await getUrls("https://99spokes.com/en-EU/bikes?ebike=0&frameset=0&price=5000-&region=europe&suspension=hardtail", "div picture img")

    await writeUrlsToFile(hardtailUrlsBelow5K, `./urls/${type}/hardtails1.txt`, ";")
    await writeUrlsToFile(hardtailUrlsAbove5K, `./urls/${type}/hardtails2.txt`, ";")


    // TESTDATA
    type = "test"
    const testUrls = await getUrls("https://99spokes.com/en-EU/bikes?category=mountain&ebike=0&frameset=0&region=europe", "div picture img")

    await writeUrlsToFile(testUrls, `./urls/${type}/test.txt`, ";")

})()