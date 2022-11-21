close all;
clear all;
clc;

f = imread('fruits.png');
figure(1),imshow(f);
imfinfo 'fruits.png'

pkg load image;
Re_size = imresize(f,1/18);
imwrite(Re_size,'fruits2.png');
figure(2), imshow(Re_size);
imfinfo 'fruits2.png'

hsv = rgb2hsv(f);
imwrite(hsv,'fruits3.png');
figure(3), imshow(hsv);
