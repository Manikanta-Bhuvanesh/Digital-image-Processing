clear all
clc
I=imread('cameraman.tif');
subplot(8, 1, 1),
imshow(I);
title("Original cameraman image");
BW1 = edge(I,'Sobel');
subplot(8, 1, 2),
imshow(BW1);
title("Sobel");
BW2 = edge(I,'canny');
subplot(8, 1, 3),
imshow(BW2);
title("Canny");
BW3 = edge(I,'prewitt');
subplot(8, 1, 4),
imshow(BW3);
title("Prewitt");
BW4 = edge(I,'roberts');
subplot(8, 1, 5),
imshow(BW4);
title("Roberts");
BW5 = edge(I,'log');
subplot(8, 1, 6),
imshow(BW5);
title("Log");
BW6 = edge(I,'zerocross');
subplot(8, 1, 7),
imshow(BW6);
title("Zerocross");
BW7 = edge(I,'approxcanny');
subplot(8, 1, 8),
imshow(BW7);
title("Approxcanny");
sgtitle('Edge detection using different methods');