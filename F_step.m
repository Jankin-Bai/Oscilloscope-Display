%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% ͼƬ��ֵ���������ΪX-Y���� %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% v1.0 %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
I=imread('C:\Users\janki\Desktop\20171225221419.jpg');%��ȡͼƬ
I=rgb2gray(I);      %ȥ��RGB���ҶȻ�ͼƬ
imshow(I,[]);
title('Original Image');
cannyBW=edge(I,'canny');
figure;
imshow(cannyBW);    %����Cannys���ӱ�Ե��ȡ
title('Canny Edge');
XY=sparse(cannyBW); %��Ϊϡ�����
[y,x]=find(XY); %��ȡ����
plot(x,y,'.');  %��ӡ
X3=[x:y];
FS=44100;

sound(X3,FS);

audiowrite('12.WAV',X3,FS);%��������

