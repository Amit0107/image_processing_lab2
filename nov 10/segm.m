clear all;
clc;
a=imread('coins.png');
%a=im2double(a);
imhist(a);
for i=1:size(a,1)
    for j=1:size(a,2)
        if a(i,j)>80
            a(i,j)=255;
        else
            a(i,j)=0;
        end
    
    end

end
imshow(a);