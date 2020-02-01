clc;
clear all;
close all;
n=input('Enter the value of n: ');
p=1;
A=zeros(n,n);
for i=1:n
    for j=1:n
         if j==1
             a=1/sqrt(n);
         else
             a=sqrt(2/n);
         end
         
         A(i,j)=a*cos((pi*(2*(i-1)+1)*(j-1))/(2*n));
         
    end
end
A=A';
% disp(A);
for i=1:n
    for j=1:n
        B=A(:,i)* A(:,j)';
        subplot(n,n,p);
        imshow(B,[]);
        p=p+1;
    end
end


        
    