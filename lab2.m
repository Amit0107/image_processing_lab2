

[m,n]=size(newim);
for i=1:m
    for j=1:n
        newim1(2*i-1,2*j-1)=newim(i,j);
         newim1(2*i,2*j)=newim(i,j);
         newim1(2*i-1,2*j)=newim(i,j);
         newim1(2*i,2*j-1)=newim(i,j);
    end
end



figure;imshow(newim1);

title('UpSampled');
mse(a-newim1);



    