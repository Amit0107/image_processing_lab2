clear all;
clear;
a=imread('onion.png');

a=im2double(a);
r=a(:,:,1);
g=a(:,:,2);
b=a(:,:,3);
%t=zeros(size(a));
%n=zeros(size(a));
%d=zeros(size(a));

 n=1/2*((r-g)+(r-b));
d=((r-g).^2+((r-b).*(g-b))).^0.5;
t=acosd(n./d);
if(b<=g)
    h=t;
else
    h=360-t;
end
h=h/360;
   s=(1-(3./(r+g+b)));
   i=((r+g+b)./3);
   HSI=zeros(size(a));
   HSI(:,:,1)=h;
   HSI(:,:,2)=s;
   HSI(:,:,3)=i;
   
   figure,
   subplot(3,2,1);imshow(a);title('RGB IMAGE');
   subplot(3,2,2);imshow(h);title('HUE IMAGE');
   subplot(3,2,3);imshow(s);title('saturation IMAGE');
   subplot(3,2,4);imshow(i);title('intensity IMAGE');
  subplot(3,2,5);imshow(HSI);title('HSI');
     figure,
  imshow(HSI);