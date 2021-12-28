# Image-Blur-MATLAB
A MATLAB function for bluring the image. I built for my course of MATLAB on coursera by Vanderbilt University
It requires two input arguments, a two dimensional array ( image) and an integar for size of bluring matrix, like 1,2,3,4
a sample code for the function
I=imread('image.png');
w=2;
blurImage=blur(I,w);
imshow(blurImage)
