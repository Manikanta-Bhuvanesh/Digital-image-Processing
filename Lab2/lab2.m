clear all;
clc
I=imread('cameraman.tif');
subplot(2,2,1);
imshow(I);title('original image');
f=ones(5,5)/25;
g=[0.369 0.6065 0.369;0.6065 1 0.6065;0.3679 0.6065 0.3679]/4.8976;
J=imnoise(I,"gaussian",0,0.01);
subplot(2,2,2);
imshow(J);title('Noise image');
h=imfilter(J,g,'circular');
subplot(2,2,3);
imshow(h);title('Filtered image');
p=imfilter(I,g,'circular');
subplot(2,2,4);
imshow(p);title('Averaged image');
sgtitle('gaussian filtering');


