clear all;
clc;
i=imread('peppers.png');
hs=rgb2hsv(i);
y=rgb2ycbcr(i);
l=rgb2lab(i);
figure,
subplot(2,2,1);imshow(hs);title('HSV image');
subplot(2,2,2);imshow(y);title('ycbcr image');
subplot(2,2,3);imshow(l);title('label image');
subplot(2,2,4);imshow(i);title('input image');


