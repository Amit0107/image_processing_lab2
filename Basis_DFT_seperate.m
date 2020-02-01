clc;
clear all;
close all;
n=input('Enter the value of n: ');
 p=1;
for i1=1:n
    for j=1:n
        A=zeros(n,n);
        for k=1:n
            for l=1:n
                A(k,l)=exp(i*2*pi/n*(k-1)*(i1-1)+ i*2*pi/n*(j-1)*(l-1));
            end
        end
        subplot(n,n,p);
        imshow(A);
        p=p+1;
    end
end

        
    