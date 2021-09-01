% ques 1
% Taking my RGB Photo

I = imread('img1.png');
figure;
imshow(I);
title('Original Image');
% ques 2 
%Making it a Grayscale Image

I=rgb2gray(I);
figure;
imshow(I);

[row,col]=size(I);
title('Grayscale Image');
%ques 3
%Plotting Histogram of Image I

hist1= zeros(1, 256);
for i=1:row
    for j=1:col
        temp=I(i,j)+1;
        hist1(temp)=hist1(temp)+1;   
    end
end
figure;
bar(hist1);
title('Histogram of Grayscale Image');
% %ques4
%Gamma Correction

gamma = 2.5;
c=1;
ImgGamma=im2double(I);
gamma_img=c*(ImgGamma.^gamma);
figure;
imshow(gamma_img);
title('Gamma Correction Image   \gamma = 2.5 c = 1');

%ques5
%Applying Power Law Transformation on Image I
%with c=1.5

gamma = 1;
c=1.5;
power_img=c*(ImgGamma.^gamma);
figure;
imshow(power_img);
title('Power Law Transformation   \gamma = 1 c = 1.5');

%ques6
%Plotting The Histogram of the Power Law Transformed Image
hist2= zeros(1, 256);
power_img_int=uint8(power_img*170);
for i=1:row
    for j=1:col
         temp=power_img_int(i,j)+1;
         hist2(temp)=hist2(temp)+1;   
     end
 end
 figure;
 bar(hist2);
 title('Power Law Transformation   \gamma = 1 c = 1.5');
% ques7
%Take a threshold value input from user, say A = 200

A=200;

% ques8
%Increase brightness by 50% for pixels with intensity smaller than A; else
%decrease it by 25% of image I

Mod_I=zeros(row,col);
Img=double(I);
for i=1:row
     for j=1:col
         if(I(i,j)<A)
             Mod_I(i,j)=im2double(I(i,j)*.5 + I(i,j));
         else
             Mod_I(i,j)=im2double(I(i,j) - I(i,j)*.25);
         end
     end
 end
 
 figure;
 imshow(Mod_I);
 title('Thresholded Image');
 
% %ques9
%Calculate and plot histogram of the thresholded image
hist3= zeros(1, 256);
Mod_I=uint8(Mod_I*170);
for i=1:row
    for j=1:col
        temp=Mod_I(i,j)+1;
        hist3(temp)=hist3(temp)+1;   
    end
end
figure;
bar(hist3);
title('Histogram of Thresholded Image');

%ques 10
%Apply Log Transformation on image I with c = 1.9
c=1.9;
Img_log=im2double(I);
Log_I=zeros(row,col);
for i=1:row
     for j=1:col
         Log_I(i,j)=c*log(Img_log(i,j)+1);
     end
 end
 
 figure;
 imshow(Log_I);
 title('Log Transformed Image');

%ques11
%Calculate and plot histogram of the log transformed image

hist4= zeros(1, 256);
Log_I=uint8(Log_I*170);
for i=1:row
    for j=1:col
        temp=Log_I(i,j)+1;
        hist4(temp)=hist4(temp)+1;   
    end
end
figure;
bar(hist4);
title('Log Transformed Image Histogram');


% %ques12
% Apply Negation Transformation on I
 negativeImage = 255 - I;
 figure;
 imshow(negativeImage);
 title('Negative Image');



%ques13
%Calculate and plot histogram of the negative image

hist5= zeros(1, 256);
for i=1:row
    for j=1:col
        temp=negativeImage(i,j)+1;
        hist5(temp)=hist5(temp)+1;   
    end
end
figure;
bar(hist5);
title('Histogram of Negative Image');

%Ques 14
% Understand the histograms, differences, their indications
figure;
subplot(4, 2, 1); imshow(power_img);
title('Power Law Image');
subplot(4, 2, 2); bar(hist2);
title('Power Law Image Histogram');
subplot(4, 2, 3); imshow(Mod_I);
title('Thresholded Image');
subplot(4, 2, 4); bar(hist3);
title('Thresholded Image Histogram');
subplot(4, 2, 5); imshow(Log_I);
title('Log Transformed Image');
subplot(4, 2, 6); bar(hist4);
title('Log Transformed Image Histogram');
subplot(4, 2, 7); imshow(negativeImage);
title('Negative Image');
subplot(4, 2, 8); bar(hist5);
title('Negative Image Histogram');



