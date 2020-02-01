clear all;
close all;
I=imread('tire.tif');
[m,n]=size(I);
arr=zeros(1,256);
y=zeros(1,256);
x=zeros(1,256);
for i=1:m
    for j=1:n
        arr(I(i,j)+1)=arr(I(i,j)+1)+1;
        y(I(i,j)+1)=y(I(i,j)+1)+1;
    end
end
for i=2:256
    arr(i)=arr(i-1)+arr(i);
end
for i=1:256
    arr(i)=(arr(i)/(m*n))*255;
    x(i)=i-1;
end
HI=zeros(m,n);
for i=1:m
    for j=1:n
        HI(i,j)=round(arr(I(i,j)+1));
    end
end
        
figure,bar(y,0.00001);
figure,bar(arr,0.00001);
figure,imhist(histeq(I));
figure,imshow(HI,[]);