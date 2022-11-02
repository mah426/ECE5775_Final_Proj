# ECE5775 Final Project - Accelerating Car Classification

## Steps:
For our final project, we plan on implementing a car classification system to determine types of cars, from sedans, SUVs, buses, semi-trucks, and more. To train, we will need to create a neural network that will take input images of specific car types to test real world images. The first step in this process would be to take an input image and convert to grayscale. With this grayscale image, we can perform the training/testing on said image. Lastly, we will output the classification of the image.
	
Our baseline test will include a running neural network that will take a test image of a single car and output its resulting classification. We will try to train the images with the same resolution to allow for optimizations later on. With the image resolutions being the same among images, we would be able to use optimization techniques like unrolling, pipelining, array partitioning, just to name a few.
	
For determining performance of the neural network, we will train and classify at least 300, maybe more to understand the improvement of classification with a larger data set, images of cars. It will be important to train enough images with different angles of each car classification we intend to use to ensure a higher accuracy of the model. We will also be collecting data like how long it takes to train the image set as well as how long it takes during testing. With this data, once our optimizations have been done, we will be able to compare the performance gains of our optimizations as well as the accuracy.
	
Once everything above has been achieved, to push our design even further, we plan on testing images with multiple cars. We hope to determine the car classifications of each car in the image instead of just one car. We can use post processing to show what each car was classified as in a single image, all at once. We could output the input image overlaid with each car’s classification. We can use canny edge detection and K-means Clustering to split the image into multiple focal points and groups to classify each car individually.


Data to be collected: classification accuracy with varying training set size during testing, execution time of training, classification time, resource utilization


# Results:
## Baseline:
### Accuracy:
### Hardware Utilization:
#### BRAM_4K:
#### DSP48:
#### FF:
#### LUTs:

## Optimized:
### Accuracy:
### Hardware Utilization:
#### BRAM_4K:
#### DSP48:
#### FF:
#### LUTs:
