%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% 图片二值化处理并输出为X-Y声音 %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% v1.0 %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
I=imread('C:\Users\janki\Desktop\20171225221419.jpg');%读取图片
I=rgb2gray(I);      %去除RGB，灰度化图片
imshow(I,[]);
title('Original Image');
cannyBW=edge(I,'canny');
figure;
imshow(cannyBW);    %采用Cannys算子边缘提取
title('Canny Edge');
XY=sparse(cannyBW); %化为稀疏矩阵
[y,x]=find(XY); %提取坐标
plot(x,y,'.');  %打印
X3=[x:y];
FS=44100;

sound(X3,FS);

audiowrite('12.WAV',X3,FS);%生成声波

