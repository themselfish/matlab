%灰度反转、负片
clc;clear;close all;
img=imread('C:\Users\吴\Pictures\666.jpg');
[h,w,color]=size(img);
if color==3
    img=rgb2gray(img);
end
greynum=zeros(1,256);
for i=1:h
    for j=1:w
        for k=0:255
            if img(i,j)==k
                greynum(k+1)=greynum(k+1)+1;
            end
        end
    end
end
img2=img;
img1=double(img);
        img=255-img;
        img1=log(1+img1);
subplot(2,2,1);imshow(img);title('灰度反转')
subplot(2,2,2);imshow(img1);title('对数变换后');
subplot(2,2,3);bar(greynum);title('programmed');xlabel('灰度级');ylabel('个数');
subplot(2,2,4);imhist(img2);title('MATLAB');