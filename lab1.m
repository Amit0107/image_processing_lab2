    clc;close all;clear all;
    b=imread('ew.jpg');

    a=rgb2gray(b);
    a=imresize(a, [256 256]);
    imshow(a);
    title('Original');

    [m,n]=size(a);
    for i=1:m/2
        for j=1:n/2
            newim(i,j)=a(2*i-1,2*j-1);
        end
    end

    figure;imshow(newim);

    title('DownSampled');
