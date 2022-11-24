%BUGARIN, JUSTINE FAITH F.
%BSCPE 4 - 2
%CPEN 111
%MIDTERM EXAMINATION

close all;
clear all;
clc;
pkg load image;

%nature = imread('C:/Users/Justine Bugarin/Desktop/DOCUMENTS/COLLEGE/4th year/4th year (1st sem)/CPEN 111 - Elective Course #3 - AI and Machine Learning/midterm/nature.jpg'); %the file is in the same directory that is why i did not put the entire directory
nature = imread('nature.jpg'); %the file is in the same directory that is why i did not put the entire directory
figure(1), imshow(nature);
whos nature;

grayscale = rgb2gray(nature);
figure(2), imshow(grayscale);
whos grayscale;

%Assign an image color that intensifies red, green, and blue and display each image in one window
%red plane
img_red = nature;
img_red(:, :, 2) = 0;
img_red(:, :, 3) = 0;

%green plane
img_green = nature;
img_green(:, :, 1) = 0;
img_green(:, :, 3) = 0;

%blue plane
img_blue = nature;
img_blue(:, :, 1) = 0;
img_blue(:, :, 2) = 0;

figure(3), imshow(img_red);
subplot(3,1,1), subimage(img_red);
subplot(3,1,2), subimage(img_green);
subplot(3,1,3), subimage(img_blue);

imwrite(img_red, 'red_nature.png');
imwrite(img_green, 'green_nature.png');
imwrite(img_blue, 'blue_nature.png');


