clc;
clear all;
close all;
I=imread('tire.tif');
[m,n]=size(I);
newI=zeros(m+n,n+m);
for i=1:m
    for j=1:n
        newI(i,j)=255;
    end
end
a=input('Enter the angle of rotation');
for i=1:m
    for j=1:n
        newI(i*sin(a)-j*cos(a),i*cos(a)+j*sin(a))=I(i,j);
    end
end
imshow(newI,[]);

