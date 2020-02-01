%fourier spectrun


clc;
close all;
clear all;
I =imread('tire.tif');
figure,
subplot(2,2,1);
title('original')
imshow(I);
F=fft2(double(I));
subplot(2,2,2);
title('fourier spectrum');
imshow(F);
S=fftshift(F);
subplot(2,2,3);
title('center spectrum');
imshow(S);
%L=log2(S);
A=abs(S);
subplot(2,2,4);

imagesc(A);
title('log transformation');
