clear all;
clc
I=imread('cameraman.tif');
subplot(2,3,2);
imshow(I);
title('Original Image');
b=20;
img_with_noise= im2double(I);
[row,col]=size(I);
x = randi([0,255],row,col);
img_with_noise(x <= b) = 0;
subplot(2,3,4);
imshow(img_with_noise);
title('pepper noise');


I=imread('cameraman.tif');
b=210;
img_with_noise= im2double(I);
[row,col]=size(I);
x = randi([0,255],row,col);
img_with_noise(x >= b) = 255;
subplot(2,3,6);
imshow(img_with_noise);
title('salt noise');