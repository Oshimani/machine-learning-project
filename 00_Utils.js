import { existsSync, mkdirSync } from 'fs'

export const createPathIfNotExists = (path, hasFile) => {

    // remove filename
    if (hasFile) {
        const arr = path.split("/")
        path = arr.slice(0, arr.length - 1).join("/")
    }

    // check if path exits, if not create it
    if (!existsSync(path))
        mkdirSync(path, { recursive: true })
} 