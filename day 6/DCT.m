clear all;
clc;
for i=0:7
    for j=0:7
        if j==0 
            a = sqrt(1/8);
        else
            a = sqrt(2/8);
        end
        I(i+1,j+1) = a * cos((pi*(2*i+1)*j)/16);
    end
end
k = 1;
for i=1:1:8
    for j=1:1:8 
        img = I(:,j)*I(i,:);
        subplot(8,8,k),imshow(img);
        k = k+1;
    end
end