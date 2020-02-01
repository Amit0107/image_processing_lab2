clc;
clear all;
close all;
n=input('Enter the value of n: ');
 A=zeros(n*n,n*n);
for i=1:n
    for j=1:n
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
                A(k+(i-1)*n,l+(j-1)*n)=a*b*cos((pi*(2*(i-1)+1)*(k-1))/(2*n))*cos((pi*(2*(j-1)+1)*(l-1))/(2*n));
            end
        end
    end
end
%disp(A);
imshow(A,[]);
        
    