clc;clear all;close all;
i=imread('C:\Users\Admin\Desktop\New folder\neo and micro.jpg');

%Pre-processing
i1=imresize(i,[584 565]);
figure;imshow(i1);title('original image');
i2= im2double(i1);
i3= rgb2lab(i2);
fill = cat(3, 1,0,0);
i4= bsxfun(@times, fill,i3);
i5= reshape(i4, [], 3);
[C, S] = pca(i5);
S = reshape(S, size(i3));
S = S(:, :, 1);
i6= (S-min(S(:)))./(max(S(:))-min(S(:)));
figure;imshow(i6);title('gray scale image');
i7= adapthisteq(i6, 'numTiles', [8 8], 'nBins',256);
figure;subplot(1,2,1);imshow(i7);title('histogram equalised image')
subplot(1,2,2);imhist(i7);
 
Avg_Filter = fspecial('average',[ 9 9]);
Filtered_Image = imfilter(i7, Avg_Filter);

figure; imshow(Filtered_Image);title('Filtered image');

%Thresholding
Substracted_Image = imsubtract(Filtered_Image,i7);
level = Threshold_Level(Substracted_Image);
Binary_Image1 = im2bw(Substracted_Image, level);
figure; imshow(Binary_Image1);title('Binary image ');
Clean_Image = bwareaopen(Binary_Image1,200);
figure; imshow(Clean_Image);title('Clean image')
Complemented_Image = imcomplement(Clean_Image);
figure; imshow(Complemented_Image)

%Feature Extraction

%top-hat transform
se=strel('disk',15);
er=imerode(i,se);
dl=imdilate(er,se);
eg=i-dl;
figure;imshow(eg);title('top hat transform');
%bottom-hat transform
g=strel('disk',15);
es=imclose(i,g)-i;
figure;imshow(es);title('bottom hat transform')
%final image
h=imsubtract(es,eg);
figure;imshow(h);title('Feature extraction')


%Colorized Extraction
Final_Result = Colorize_Image(i1, Complemented_Image, [0 0 0]);
figure();
subplot(1,2,1); imshow(Final_Result);
title('segmentation of blood vessels');
subplot(1,2,2);imshow(i1);