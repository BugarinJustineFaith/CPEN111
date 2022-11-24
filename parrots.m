%BUGARIN, JUSTINE FAITH F.
%BSCPE 4 - 2
%CPEN 111
%MIDTERM EXAMINATION

close all;
clear all;
clc;
pkg load image;

%a.	Using the Editor of Octave, create a program that will load and display parrots.jpg
%b.	Examine the size of the parrots by typing whos to find out the size of the image that you have read in
parrots = imread('parrots.jpg'); %the file is in the same directory that is why i did not put the entire directory
figure(1),imshow(parrots);
whos parrots;

%c.	Convert the class uint8 color image parrots to a gray scale image, and display the full intensity range gray-scale image using the imshow command
grayscale = imagesc(parrots, [0, 255]); colormap(gray);
figure(2), imshow(grayscale);
whos grayscale;

%d.	Covert the true color image to a gray-scale image
grayscale2 = rgb2gray(parrots);
figure(3), imshow(grayscale2);
whos grayscale2;
