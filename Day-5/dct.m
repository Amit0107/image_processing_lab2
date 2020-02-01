clc;
close all;
clear all;
sz=input('basis size:');
A=zeros(sz);
[row,col]=size(A);
mul=sqrt(1/sz);
for n=1:sz
    for k=1:sz
        A(n,k)=mul*cos(pi*(2*n-1)*(k-1)/(2*sz));
        if(n~=1)A(n,k)=A(n,k)*sqrt(2);
        end
    end
end
B=cell(sz);
for n=1:sz
    for k=1:sz
        B{n,k}=(A(:,n))*(A(k,:));
    end
end
counter=1;
for n=1:row
    for k=1:col
        subplot(row,col,counter);
        imshow(B{k,n},[]);
        counter=counter+1;
    end
end
C=cell2mat(B);
figure,imshow(C,[]);
img=imread('tire.tif');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fourier spectrun


clc;
close all;
clear all;
I =imread('tire.tif');
figure,
subplot(2,2,1);
imshow(I);
F=fft2(double(I));
subplot(2,2,2);
imshow(F);
S=fftshift(F);
subplot(2,2,3);
imshow(S);
L=log2(S);
A=abs(L);
subplot(2,2,4);
imagesc(A);

