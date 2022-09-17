clear all;
clc
I = imread('cameraman.tif');
subplot(1, 5, 1),
imshow(I);
title("Original cameraman image");
Lap=[0 1 0; 1 -4 1; 0 1 0];
[p1,output1]=Func134(I,Lap);
subplot(1, 5, 2),
imshow(output1);
title("Laplace filter sharpen (a)");
Lap1=[0 -1 0; -1 4 -1; 0 -1 0];
[p2,output2]=Func134(I,Lap1);
subplot(1, 5, 3),
imshow(output2);
title("Laplace filter sharpen (b)");
Lap2=[1 1 1;1 -8 1; 1 1 1];
[p3,output3]=Func134(I,Lap2);
subplot(1, 5, 4),
imshow(output3);
title("Laplace filter sharpen(c)");
Lap3=[-1 -1 -1;-1 8 -1; -1 -1 -1];
[p4,output4]=Func134(I,Lap3);
subplot(1, 5, 5),
imshow(output4);
title("Laplace filter sharpen (d)");
function [ p, image ] = Func134( img,Lap )
  I=zeros(size(img));
  A=padarray(img,[1,1]);
  A=double(A);
  for i=1:size(A,1)-2
      for j=1:size(A,2)-2
          I(i,j)=sum(sum(Lap.*A(i:i+2,j:j+2)));
      end
  end
p=uint8(I);
image=img-p;
end



