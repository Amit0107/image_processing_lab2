clear all;
close all;
clc ;
I = imread('cameraman1.png');
I = im2double(I);
[r,c]=size(I);
H = fspecial('motion',9,0);
MotionBlur = imfilter(I,H,'replicate');
%imshow(MotionBlur);
F=fft2(MotionBlur);
FT=transpose(F);

W=(FT./((F.*F)+0.01));

%P=I.*OUT;
%imshow(OUT);
G=F.*W;
G1=ifft2(G);
figure,
subplot(1,3,1),imshow(I);title('Original image');
subplot(1,3,2),imshow(real(G1),[]);title(' blurred image');
O=F./W;
O1=ifft2(O);
subplot(1,3,3),imshow(real(O1),[]);title('restored image');