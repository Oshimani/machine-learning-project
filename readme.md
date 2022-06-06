# Machine Learning Project (Bike classification)

Goal of this project is to classify pictures of bikes using a neural network.
The AI should be able to decide whether a bike is a full suspension bike or a hardtail.
A secondary goal is to correctly classify e-bikes and bio bikes.

## Links provided by teacher

- https://tensorflow.rstudio.com/tutorials/beginners/basic-ml/tutorial_basic_classification/

- https://www.r-bloggers.com/2021/03/how-to-build-your-own-image-recognition-app-with-r-part-1/

- https://www.r-bloggers.com/2020/10/platypus-r-package-for-object-detection-and-image-segmentation/

---

## Getting images
Images are being fetched from 99spokes.com as they provide lots of images of bikes with white background.

### Requirements
- Node v17.5 or higher (required fetch api)

### Download Images
**make sure that the page url, selector and folder paths are configured propperly.**

Install dependencies
```sh
npm i
```

To get image urls run:
```sh
node 01_GetImageUrls.js
```

To download images from those urls run:
```sh
node 02_DownloadImages.js
```