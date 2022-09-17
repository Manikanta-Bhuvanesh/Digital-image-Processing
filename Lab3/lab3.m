clear; close all; clc;
I = imread('cameraman.tif');
y = zeros(256,1);
for i = 1:256
   for j = i + 1:256
       for x = 0:255
           if I(i,j) == x
               y(x, 1) = y(x, 1) + 1;
           end    
       end
   end
end
x1 = 0:1:255;
bar(x1, y);
figure,title('Manual Histogram');

histogram(I)
figure,title("Built in Histogram");