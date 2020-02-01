clear all;
close all;
clc ;
a=0.001;
b=0.1;
k=0.005;
I = imread('cameraman1.png');
I = im2double(I);
[r,c]=size(I);
F=fft2(I);

%x=(0.314*(u+v));

%
for u=1:r
   for v=1:c 
  H(u,v)=(exp(-k*((u*u+v*v)^(5/6))));
%H1(u,v)=(1/H(u,v));
    
   end
end

G=F.*H;
G1=ifft2(G);
figure,
subplot(1,3,1),imshow(I);title('Original image');
subplot(1,3,2),imshow(real(G1),[]);title(' turbulance blurred image');
O=G./H;
O1=ifft2(O);
subplot(1,3,3),imshow(real(O1),[]);title('restored image');
%p=abs(O1-I);
%figure,
%imshow(p);

