clear all
clc
I=imread('cameraman.tif');
I1=I;
I2=I;
subplot(4, 1, 1),
imshow(I);
title("Original cameraman image");
v=0.01^2;
J=imnoise(I,'gaussian',0.5,v);
subplot(4, 1, 2),
imshow(J);
title("Original Noise image");



h=fspecial('average',3);
af=imfilter(J,h);
subplot(4, 1, 3),
imshow(af);
title("Restored cameraman image with arthemetic mean");

g=im2double(J);
warning off;
f=exp(imfilter(log(g),ones(3,3),'replicate')).^(1/9);
subplot(4, 1, 4),
imshow(f);
title("Restored cameraman image with geometic mean");