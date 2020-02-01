clc;
clear all;
close all;
n=input('Enter the value of n: ');
 A=zeros(n*n,n*n);
for i1=1:n
    for j=1:n
        for k=1:n
            for l=1:n
                A(k+(i1-1)*n,l+(j-1)*n)=exp(i*2*pi/n*(k-1)*(i1-1)+ i*2*pi/n*(j-1)*(l-1));
            end
        end
    end
end
disp(A);
imshow(A,[]);
        
    