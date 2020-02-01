clc;
clear all;
clear figure;
I=imread('trees.tif');
I=im2double(I);
[m,n]=size(I);
c=zeros(m,m);
avg=zeros(1,m);
k=1;
for i=1:m
    avg(i)=mean(I(i,:));
end
for i=1:m
    for j=1:m
          a=I(i,:)-(avg(i)*ones(1,n));
          b=I(j,:)-(avg(j)*ones(1,n));
          C(i,j)=(a*b')/n;
    end
end
[E,A]=eig(C);
E=E';

for i=1:m
    Ei(i,:)=E(m-i+1,:);
end
% Ei=Ei';
% k=1;
I=I-avg'*ones(1,n);
Y=Ei*I;
imshow(I,[]);
% for i=1:10
%     P=zeros(n,n);
%     for j=1:10
%         P=Ei(:,i)*Ei(:,j)';
%         subplot(10,10,k);
%         imshow(P);
%         k=k+1;
%     end
% end


        