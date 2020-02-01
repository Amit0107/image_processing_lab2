clc;
clear all;
close all;
I=imread('pout.tif');
I=im2double(I);
[c,d]=size(I);
newI=zeros(c,d);
n=input('Enter the value of n: ');
p=1;
for i=1:c
    for j=1:d
        A=zeros(n,n);
        for k=1:n
            for l=1:n
                if k==1
                    a=1/sqrt(n);
                else
                    a=sqrt(2/n);
                end
                if l==1
                    b=1/sqrt(n);
                else
                    b=sqrt(2/n);
                end
                A(k,l)=a*b*cos((pi*(2*(i-1)+1)*(k-1))/(2*n))*cos((pi*(2*(j-1)+1)*(l-1))/(2*n));
            end
        end
        
    end
end

        
    