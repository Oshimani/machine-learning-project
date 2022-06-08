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

    // TRAIN DATA
    let type = "training"

    // // FULLYS
    // const fullyFiles = ["fullys1.txt", "fullys2.txt"]

    // fullyFiles.map(async file => {
    //     const fullyUrls = getUrlsFromFile(`./urls/${type}/${file}`)
    //     await downloadImages(fullyUrls, `./images/${type}/fullys`)
    // })


    // // HARDTAILS
    // const hardtailFiles = ["hardtails1.txt", "hardtails2.txt"]

    // hardtailFiles.map(async file => {
    //     const hardtailUrls = getUrlsFromFile(`./urls/${type}/${file}`)
    //     await downloadImages(hardtailUrls, `./images/${type}/hardtails`)
    // })


    // TEST DATA
    type = "test"
    const testFiles = ["test.txt"]

    testFiles.map(async file => {
        const testUrls = getUrlsFromFile(`./urls/${type}/${file}`)
        await downloadImages(testUrls, `./images/${type}`)
    })
})()