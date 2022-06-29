# Machine Learning Project (Bike classification)

Goal of this project is to classify pictures of bikes using a neural network.
The AI should be able to decide whether a bike is a full suspension bike or a hardtail.
A secondary goal is to correctly classify e-bikes and bio bikes.

# How to download new images (requires Node.js)
Images have been added to the source code. There is no need to run this step other that to download newly added images.

## Requirements
- Node v17.5 or higher (fetch api required)
## Getting images
Images are being fetched from 99spokes.com as they provide lots of images of bikes with white background.

## Download Images
**make sure that the page url, selector and folder paths are configured propperly.**

Make sure you are running at least version 17.5 of Node.js Then install the packages with the following command:
```sh
npm install
```

To get image urls the following command: They should now be in the folder ./urls/
```sh
node 01_GetImageUrls.js
```

To download images from those urls run: They should now be in the folder ./images/
```sh
node 02_DownloadImages.js
```

Urls and images have been organized in folders according to their labels.

# Running the Project file
To run the project file you need to have python3 and jupyter notebook installed. Open 03_Project.ipynb and click the "Run All"-Button.
This step is not required because the previous outputs have been saved.

---

## Links provided by teacher

- https://tensorflow.rstudio.com/tutorials/beginners/basic-ml/tutorial_basic_classification/

- https://www.r-bloggers.com/2021/03/how-to-build-your-own-image-recognition-app-with-r-part-1/

- https://www.r-bloggers.com/2020/10/platypus-r-package-for-object-detection-and-image-segmentation/