clear all;
clc;
a=imread('trees.tif');
a=im2double(a);
X=size(size(a,1)-2,size(a,2)-2);
Y=size(size(a,1)-2,size(a,2)-2);
Z=size(size(a,1)-2,size(a,2)-2);

L=[0,-1,0;-1,4,-1;0,-1,0];
HP=[-1,-1,-1;-1,8,-1;-1,-1,-1];
UM=[-1,-1,-1;-1,8,-1;-1,-1,-1];
for i=1:size(a,1)-2
    for j=1:size(a,2)-2
        b=a(i:i+2,j:j+2).*L;
        X(i,j)=sum(b(:));
        c=a(i:i+2,j:j+2).*HP;
        Y(i,j)=sum(c(:));
        d=a(i:i+2,j:j+2).*UM;
        Z(i,j)=sum(d(:));
       
        

    end
end
figure,
subplot(2,2,1);imshow(a);title('input image');

subplot(2,2,2);imshow(X);title('Laplacian');

subplot(2,2,3);imshow(Y);title('HIgh Pass');
subplot(2,2,4);imshow(Z);title('Unsharp image');