clear all;
clear;
a=imread('peppers.png');
%a=rgb2hsv(a);
a=im2double(a);
    H=a(:,:,1);
   S=a(:,:,2);
   I=a(:,:,3);
   H=H.*360;
%x=ScosH;
%y=cos(60-H);

 

if(0<=H<120)
 x=S.*cos(H);
y=cosd(60-H);
    t=x./y;
    R=I.*(1+t);
    B=I.*(1-S);
    G=1-(R+B);
    
    
elseif(120<=H<240)
    x=S.*cos(H);
y=cos(60-H);
    t=x./y;
    H=H-120;
    R=I.*(1-S);
    G=I.*(1+t);
    B=1-(R+G);
elseif(240<=H<=360)
    x=S.*cos(H);
y=cos(60-H);
    t=x./y;
    H=H-240;
    B=I.*(1+t);
    G=I.*(1-S);
    R=1-(G+B);
    
end

   RGB=zeros(size(a));
   RGB(:,:,1)=R;
   RGB(:,:,2)=G;
   RGB(:,:,3)=B;
   
   figure,
   subplot(3,2,1);imshow(a);title('HSI IMAGE');
   subplot(3,2,2);imshow(R);title('RED IMAGE');
   subplot(3,2,3);imshow(G);title('Green IMAGE');
   subplot(3,2,4);imshow(B);title('Blue IMAGE');
  subplot(3,2,5);imshow(RGB);title('RGB');
   