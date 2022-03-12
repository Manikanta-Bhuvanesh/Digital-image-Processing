%Intesity transformation
clear all;
clc
img = imread("cameramgrey.jpg");
subplot(5, 2, 1),
imshow(img);
title("Original cameraman image");
img2=imread("C:\Users\Manikanta Bhuvanesh\Desktop\6th sem\DIP\lab\lena.jpg");
subplot(5, 2, 2),
imshow(img2);
title("Original lena image");
L = 2 ^ 8;				
neg = (L - 1) - img;
subplot(5, 2, 3),
imshow(neg);
title("Negative cameraman Image")
neg2 = (L - 1) - img2;
subplot(5, 2, 4),
imshow(neg2);
title("Negative lena Image")

c=1;
b=im2double(img);
s1=(c*log(1+b));
subplot(5, 2, 5),
imshow(s1);
title("logarithmic cameraman Image c=1")

b2=im2double(img2);
s2=(c*log(1+b2));
subplot(5, 2, 6),
imshow(s2);
title("logarithmic lena Image c=1")

r=0.5;
p1=(c*(b.^r));
subplot(5,2,7),
imshow(p1);
title("Gamma cameraman Image r=0.5")

p2=(c*(b2.^r));
subplot(5,2,8),
imshow(p2);
title("Gamma lena Image r=0.5")

r=2;
p1=(c*(b.^r));
subplot(5,2,9),
imshow(p1);
title("Gamma cameraman Image r=2")

p2=(c*(b2.^r));
subplot(5,2,10),
imshow(p2);
title("Gamma lena Image r=2")

