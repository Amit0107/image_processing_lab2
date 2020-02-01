im=imread('ew.jpg');
figure;imshow(im);
im2=rgb2gray(im);
figure;imshow(im2);
thres=graythresh(im2);
im3=im2bw(im2,thres);
figure;imshow(im3);
