clc;
clear all;
close all;
I=imread('tire.tif');
[m,n]=size(I);
newI=zeros(m*2,n*2);

for i=1:m*2
    for j=1:n*2
        newI(i,j)=255;
    end
end
x=input('Enter the x abscissa of the point ');
y=input('Enter the ordinate of the point ');
for i=1:m
    for j=1:n
        newI(i+x,j+y)=I(i,j);
        newI(i,j)=I(i,j);
    end
end
imshow(newI,[]);


