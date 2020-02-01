clc;
clear all;
clear figure;
% I=imread('pout.tif');
I=[4 5 112 123;
    23 210 255 0;
    29 32 231 188;
    12 34 242 234];
[m,n]=size(I);
pt=zeros(1,256);
for i=1:m
    for j=1:n
        pt(I(i,j)+1)=pt(I(i,j)+1)+1;
    end
end
cpt=zeros(2,256);
for i=1:256
    if pt(i)>0
        cpt(2,1)=pt(i);
        cpt(1,1)=i-1;
        break;
    end
end
k=1;
for j=i+1:256
    
    if pt(j)>0
        k=k+1;
        cpt(1,k)=j-1;
        cpt(2,k)=cpt(2,k-1)+pt(j);
    end
end

% cpt(1)=pt(1);
% for i=2:256
%     cpt(i)=cpt(i-1)+pt(i);
% end
p=m*n;
for i=1:k
    cpt(2,i)=cpt(2,i)/p;
end
lo=0;
hi=0;
if I(1,1)==cpt(1,1)
    lo=0;
    hi=cpt(2,1);
else
    for i=2:k
       if cpt(1,i)==I(1,1)
          lo=cpt(2,i-1);
          hi=cpt(2,i);
          break;
       end
    end
end

for i=1:m
    for j=1:n
        if i==1 & j==1
            continue;
        end
        temp=hi-lo;
        if I(i,j)==cpt(1,1)
            
            hi=lo+(temp)*cpt(2,1);
            lo=lo+(temp)*0;
            
        else
            for i=2:k
                if cpt(1,i)==I(1,1)
                    hi=lo+temp*cpt(2,i);
                    lo=lo+temp*cpt(2,i-1);
                    break;
                end
            end
        end
    end
end
tagv = (lo+hi)/2
J=zeros(m,n);
for i=1:m
    for j=1:n
        lo=0;
        hi=cpt(2,1);
        if tagv>=lo & tagv<=hi
            J(i,j)=cpt(1,1);
        else
            for t=1:k-1
                lo=cpt(2,t);
                hi=cpt(2,t+1);
                if tagv>=lo & tagv<=hi
                    J(i,j)=cpt(1,t);
                    break;
                end
            end
        end
        tagv=(tagv-lo)/(hi-lo)
    end
end
J;
imshow(J,[]);
    