clc
clear all;
close all;
I = imread('bnm.JPG');
I1 = rgb2gray(I);
%I1 = f(x,y);
figure,imshow(I1);
%figure,imhist(I1);
[m,n]=size(I1);
for i=1:m
    for j=1:n
        if I1(i,j)>235
            g(i,j)=1*I1(i,j).^2000;
        else
            g(i,j)=I1(i,j).^1;
        end
    end
end
% if f(x,y)> 230
%     g(x,y) = f(x,y)
% else
%     g(x,y) = 0
% end
% I1 = im2bw(I,f(x,y)/255);
figure,imshow(g);