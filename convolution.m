clear all;
close all;
clc ;
% input matrix
m=input('rows=');
n=input('columns=') ;
for i=1:m
    for j=1:n 
    
        x(i,j)=input('x(i ,j)')';
    end
end
x=reshape(x,m,n);  

hm=input('rows='); 
hn=input('columns=') ;
for i=1:hm
    for j=1:hn 
        h(i,j)=input('h(i,j)=');
    end
end
h=reshape(h,hm,hn); 
%%%%%Zero matrix
 for i=1:m
    z(i,1)=0;
  end
%%%box matrices%%%
for k=1:m
      for j=1:n
            i=k;
          H(j,i,k)=x(i,j);
          
      end
      
end
%%%% For box matrix use H(:,1,1)
  z1=m-1;
  m1=z1+m;
 A=cell(m,m1*m);
  
  