clear all;
clc
I=imread('cameramgrey.jpg');
nk=zeros(1,256);
for i=1:size(I,1)
    for j=1:size(I,2)
        value=I(i,j);
        nk(value+1)=nk(value+1)+1;
    end
end
nkavg=zeros(1,256);
Total=size(I,1)*size(I,2);
for i=1:256
    nkavg(i)=nk(i)/Total;
end

cdi=zeros(1,256);
cdi(1)=nkavg(1);
for i=2:256
    cdi(i)=cdi(i-1)+nkavg(i);
end
sk=zeros(1,256);
for i=1:256
    sk(i)=uint8(cdi(i)*(255));
end
mat=uint8(zeros(size(I)));
for i=1:size(I,1)
    for j=1:size(I,2)
        mat(i,j)=sk(I(i,j)+1);
    end
end
subplot(1,2,1),
histogram(I)
title("Original");
subplot(1,2,2),
histogram(I)
title("builtin");
