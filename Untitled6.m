clc;
clear all;
clear figure;
I=imread('cameraman.tif');
imshow(I);
J=dct2(I);
figure,imshow(uint8(J));
newI=zeros(size(I,1),size(I,2));
A=zeros(50,50);
for i=1:50
    for j=1:50
        A(i,j)=J(i,j);
    end
end
newI=idct2(A,256,256);
figure,imshow(uint8(newI));
        