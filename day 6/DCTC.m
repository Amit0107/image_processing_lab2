clear all;
clc;
close all;
I = imread('cameraman.tif');
I = im2double(I);
% imshow(i);
N=256;


for i=0:N-1
    for j=0:N-1
      %  if j==0 
       %     w = sqrt(1/N);
        %else
         %   w = sqrt(2/N);
        %end
        img(i,j) =  cos((pi*(2*i+1)*j)/((2*N)))*sqrt(2/N);
         img(i,:)= img(i,:)*sqrt(2);
    end
end
k = 1;
%for i=1:1:N
 %   for j=1:1:N 
  %      img =I(:,j)*I(i,:);
        %subplot(N,N,k),imshow(img);
   %     k = k+1;
    %end
%end
dct = img*I*img';

for i=50:1:256
    for j=50:1:256
        dct(i,j) = 0;
    end
end

I2 = img'*dct*img;

imshow(I)
figure
imshow(I2)
