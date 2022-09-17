clear all;
clc
I = imread('cameraman.tif');
subplot(3, 3, 2),
imshow(I);
title("Original cameraman image");
J = imnoise(I,'gaussian',0);
subplot(3, 3, 4),
imshow(J);
title("Gaussian mean 0 and varience 0.01");
J1 = imnoise(I,'gaussian',1);
subplot(3, 3, 5),
imshow(J1);
title("Gaussian mean 1 and varience 0.01");
J2 = imnoise(I,'gaussian',215);
subplot(3, 3, 6),
imshow(J2);
title("Gaussian mean 215 and varience 0.01");
J3 = imnoise(I,'gaussian',0,0.03);
subplot(3, 3, 7),
imshow(J3);
title("Gaussian mean 0 and varience 0.03");
J4 = imnoise(I,'gaussian',0,0.04);
subplot(3, 3, 8),
imshow(J4);
title("Gaussian mean 0 and varience 0.04");
J5 = imnoise(I,'gaussian',0,0.05);
subplot(3, 3, 9),
imshow(J5);
title("Gaussian mean 0 and varience 0.05");


