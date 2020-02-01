clear all;
close all;
clc ;
Input = imread('cameraman.tif');
Input = im2double(Input);

N=256;
x=(0:N-1)';
C=cos((2*x+1)*x'*pi/(2*N))*sqrt(2/N);
C(:,1)=C(:,1)/sqrt(2);

dct = C*Input*C';

for i=50:1:256
    for j=50:1:256
        dct(i,j) = 0;
    end
end

I2 = C'*dct*C;
figure,
subplot(1,2,1);imshow(Input);title('Original image');

subplot(1,2,2);imshow(I2);title('Reconstructed image');