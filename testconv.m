close all
clear all
x=input('Enter x:   ');                % input x in the form [1,2,3,4,5]
h=input('Enter h:   ');
m=length(x);
n=length(h);
X=[x,zeros(1,n)];                     % padding of n zeros
H=[h,zeros(1,m)]; % padding of m zeros
m=input('row')';
n=input('column') ;
for i=1:m
    for j=1:n 
        a(i,j)=input('elements-')';
    end
end
a=reshape(a,m,n);

for i=1:n+m-1
    Y(i)=0;
    for j=1:i
        Y(i)=Y(i)+X(j)*H(i-j+1);
    end
end

stem(Y);
ylabel('Y[n]');
xlabel('----->n');
