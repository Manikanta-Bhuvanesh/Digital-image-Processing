clear all;
clc
I = imread('cameraman.tif');
subplot(2, 3, 2),
imshow(I);
title("Original cameraman image");
J = imnoise(I,'salt & pepper',0.02);
subplot(2, 3, 4),
imshow(J);
title("noise density 0.02");
J1 = imnoise(I,'salt & pepper',0.03);
subplot(2, 3, 5),
imshow(J1);
title("noise density 0.03");
J2 = imnoise(I,'salt & pepper',0.04);
subplot(2, 3, 6),
imshow(J2);
title("noise density 0.04");



function image = Func123(img)
[row,col]=size(img);
x=randi([300,10000],1);
for i=2:x
    y_cord=randi([0,row-1],1);
    x_cord=randi([0,col-1],1);
    print(y_cord)
    img(y_cord,x_cord)=255;
end
image=img;
end