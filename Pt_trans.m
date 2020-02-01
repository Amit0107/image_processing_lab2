clc;
clear all;
close all;
I=imread('tire.tif');
m=size(I,1);
n=size(I,2);
Iinv=zeros(m,n);
Ilog=zeros(m,n);
Ipow=zeros(m,n);
c=input('Enter the value of c: ');
y=input('\nEnter the value of gamma: ');
for i=1:m
    for j=1:n
        Iinv(i,j)=255-I(i,j);
        Ilog(i,j)=c*log2(double(I(i,j))+1);
        Ipow(i,j)=c*(double(I(i,j)).^y);
    end
end
%subplot(2,1,1);
imshow(I);
title('Original Image');
subplot(2,1,2);
figure,imshow(Iinv,[]);
title('Inverted Image');
figure,imshow(Ilog,[]);
title('Logarithmic Transformed Image');
figure,imshow(Ipow,[]);
title('Power-Log Transformed Image');