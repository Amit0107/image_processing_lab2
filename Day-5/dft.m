

clc;
close all;
clear all;
sz=input('basis size:');
A=zeros(sz);
[row,col]=size(A);
mul=sqrt(1/sz);
for n=1:sz
    for k=1:sz
        A(n,k)=mul*sin(pi*(2*n-1)*(k-1)/(2*sz))+mul*cos(pi*(2*n-1)*(k-1)/(2*sz));
        if(n~=1)A(n,k)=A(n,k)*sqrt(2);
        end
    end
end
B=cell(sz);
for n=1:sz
    for k=1:sz16
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
