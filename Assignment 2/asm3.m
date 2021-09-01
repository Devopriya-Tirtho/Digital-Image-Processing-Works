% ques 1
I = imread('img1.png');
% ques 2 
I=rgb2gray(I);
figure;
imshow(I);
[row,col]=size(I);

% %ques 3
hist1= zeros(1, 256);
for i=1:row
    for j=1:col
        temp=I(i,j)+1;
        hist1(temp)=hist1(temp)+1;   
    end
end
figure;
bar(hist1);
% 
% %ques4

gamma = 2;
c=1;

gamma_img=c*(I.^gamma);
gamma_img=uint8(gamma_img);
figure;
imshow(gamma_img);

% %ques5
% gamma = 1;
% c=1.5;
% power_img=c*(I.^gamma);
% power_img=uint8(power_img);
% figure;
% imshow(power_img);
% %ques6
% hist2= zeros(1, 256);
% for i=1:row
%     for j=1:col
%         temp=power_img(i,j)+1;
%         hist2(temp)=hist2(temp)+1;   
%     end
% end
% figure;
% bar(hist2);
% 
% %ques7+8
A=200;
Mod_I=zeros(row,col);
Img=im2double(I);
for i=1:row
    for j=1:col
        if(I(i,j)<A)
            Mod_I(i,j)=Img(i,j)*.5+ Img(i,j);
        else
            Mod_I(i,j)=Img(i,j)- Img(i,j)*.25;
        end
    end
end

figure;
imshow(Mod_I);
% 
% %ques9
% hist3= zeros(1, 256);
% Mod_I=uint8(Mod_I);
% for i=1:row
%     for j=1:col
%         temp=Mod_I(i,j)+1;
%         hist3(temp)=hist3(temp)+1;   
%     end
% end
% figure;
% bar(hist3);
% 
% 
% %ques 10
c=1.9;
Log_I=zeros(row,col);
for i=1:row
    for j=1:col
        Log_I(i,j)=c*log(Img(i,j)+1);
    end
end

figure;
imshow(Log_I);
% 
% 
% %ques11
% hist4= zeros(1, 256);
% Log_I=uint8(Log_I);
% for i=1:row
%     for j=1:col
%         temp=Log_I(i,j)+1;
%         hist4(temp)=hist4(temp)+1;   
%     end
% end
% figure;
% bar(hist4);
% 
% 
%ques11

negativeImage = 255 - I;
figure;
imshow(negativeImage);


%ques12
hist5= zeros(1, 256);
for i=1:row
    for j=1:col
        temp=negativeImage(i,j)+1;
        hist5(temp)=hist5(temp)+1;   
    end
end
figure;
bar(hist5);



































