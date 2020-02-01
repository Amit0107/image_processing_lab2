clc;
clear all;
close all;
x=input('enter x matrix');
y=input('enter y matrix');
a=size(x);
b=size(y);
rows_x=a(1);
cols_x=a(2);
rows_y=b(1);
cols_y=b(2);
dim=cols_b-1;
conv_mat=[];
for j=1:1:cols_x+dim
    for j=1:1:cols_x+dim
        h(i,j)=zeroes(i,j);
    end
end
for i=1:1:rows_x
    for k=1:1:rows_x+dim-1
        for j=1:1:cols_x+dim
            if(k==1)
                h(k,j)=x(j,k);
            end
            if(k>1 && j>1)
                n=k-1;
                h(i,j)=x(k-n,j-n);
            end
        end
    end
end
                
                
                    
                    
                    
            
    
        
        
 

    
    
