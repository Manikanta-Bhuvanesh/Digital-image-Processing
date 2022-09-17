clear all
clc
I=imread('cameraman.tif');
subplot(5, 1, 1),
imshow(I);
title("Original cameraman image");
J = imnoise(I,'salt & pepper');
subplot(5, 1, 2),
imshow(J);
title("Original Noise image");

% Restore using contraharmonic
I1=im2double(I);
masksize=3;
Q=-1;
sumn=[];
sumd=[];
pixln=0;
pixld=0;
[row,col]=size(I1);
for i=1:row;
    for j=1:col;
        for m=-masksize:masksize;
            for n=-masksize:masksize;
                if (i+m>0 && i+m<row && j+n>0 && j+n<col && masksize+m>0 && masksize+m<row && masksize+n>0 && masksize+n<col) 
                    pixl1=(I1(i+m,j+n)).^(Q+1);                 
                    pixl2= (I1(i+m,j+n)).^Q;
                    pixln=pixln+pixl1;                        
                    pixld=pixld+pixl2;
                
                end
            end
        end
       res(i,j)=(pixln/pixld);
       pixln=0;
       pixld=0;
    end
end
subplot(5,1,3),
imshow(res);
title("Filter with Q=-1")

I1=im2double(I);
masksize=3;
Q=0;
sumn=[];
sumd=[];
pixln=0;
pixld=0;
[row,col]=size(I1);
for i=1:row;
    for j=1:col;
        for m=-masksize:masksize;
            for n=-masksize:masksize;
                if (i+m>0 && i+m<row && j+n>0 && j+n<col && masksize+m>0 && masksize+m<row && masksize+n>0 && masksize+n<col) 
                    pixl1=(I1(i+m,j+n)).^(Q+1);                 
                    pixl2= (I1(i+m,j+n)).^Q;
                    pixln=pixln+pixl1;                        
                    pixld=pixld+pixl2;
                
                end
            end
        end
       res(i,j)=(pixln/pixld);
       pixln=0;
       pixld=0;
    end
end
subplot(5,1,4),
imshow(res);
title("Filter with Q=0")

I1=im2double(I);
masksize=3;
Q=1;
sumn=[];
sumd=[];
pixln=0;
pixld=0;
[row,col]=size(I1);
for i=1:row;
    for j=1:col;
        for m=-masksize:masksize;
            for n=-masksize:masksize;
                if (i+m>0 && i+m<row && j+n>0 && j+n<col && masksize+m>0 && masksize+m<row && masksize+n>0 && masksize+n<col) 
                    pixl1=(I1(i+m,j+n)).^(Q+1);                 
                    pixl2= (I1(i+m,j+n)).^Q;
                    pixln=pixln+pixl1;                        
                    pixld=pixld+pixl2;
                
                end
            end
        end
       res(i,j)=(pixln/pixld);
       pixln=0;
       pixld=0;
    end
end
subplot(5,1,5),
imshow(res);
title("Filter with Q=1")
