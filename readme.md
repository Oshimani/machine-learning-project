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

---

# Research to be done
- What is Conv2D Layer
- What is MaxPool2D Layer
- What is relu activation
- What is tf.losses.SparseCategoricalCrossentropy(from_logits=True)
- What is tf.nn.softmax


-	Präsentation
o	Warum das Thema, warum ist es wichtig?
o	Fokus auf Praxis und keine Theorie?
	Theoretischer Hintergrund
	Warum das ausgewählte Verfahren?
	Welche Daten?
-	Aufbau des NN
o	Welche Schichten?
	Was machen die Layer?
	https://towardsdatascience.com/covolutional-neural-network-cb0883dd6529
-	Tranings Set ist sehr klein nur 7
Nächste Vorlesung ist 23.7.
