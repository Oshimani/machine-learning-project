import { createWriteStream, readFileSync } from 'fs'
import fetch from 'node-fetch'

import { createPathIfNotExists } from './00_Utils.js'

const downloadImage = async (url, path, fileName) => {

    // fetch file
    const response = await fetch(url)
    // stream response body
    const buffer = await response.arrayBuffer()
    createPathIfNotExists(path, false)

    // write file to disk
    fileName = fileName || url.split("/").pop()
    createWriteStream(`${path}/${fileName}`).write(Buffer.from(buffer))
}

const downloadImages = async (urls, path, fileNamesAsIndex) => {
    urls.map(async (url, i) => {
        console.log("Downloading " + url)
        await downloadImage(url, path, fileNamesAsIndex ? i : undefined)
    })
}

const getUrlsFromFile = (path) => {
    const data = readFileSync(path, { encoding: 'utf-8' })
    const urls = data.split(";")
    console.log(`Found ${urls.length} Urls in ${path}`)
    return urls
}

(async () => {

    // BIO BIKES
    // FULLYS
    const fullyUrls = getUrlsFromFile("./urls/bio/fullys.txt")
    await downloadImages(fullyUrls,"./images/bio/fullys")

    // HARDTAILS
    const hardtailUrls = getUrlsFromFile("./urls/bio/hardtails.txt")
    await downloadImages(hardtailUrls,"./images/bio/hardtails")

})()