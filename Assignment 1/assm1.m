img1=imread('A2_160204033_input1.png');
figure;
imshow(img1);
%imtool(img1);
%[row1,col1]=size(V);

img2=imread('A2_160204033_input2.png');
figure;
imshow(img2);
%imtool(B);
%[row2,col2,channel2]=size(B);
%new Image
newimg=uint8(zeros(300,300,3));
figure;
imshow(newimg);
%Image replacement 1
newimg(1:60,1:60,:) = img1(1:60,1:60,:) ;
%Image replacement 2
newimg(1:60,61:120,:) = img2(1:60,61:120,:) ;
%Image replacement 3
newimg(1:60,121:180,:) = img1(1:60,121:180,:) ;
%Image replacement 4
newimg(1:60,181:240,:) = img2(1:60,181:240,:) ;
%Image replacement 5
newimg(1:60,241:300,:) = img1(1:60,241:300,:) ;
%Image replacement 6
newimg(61:120,1:60,:) = img2(61:120,1:60,:) ;
%Image replacement 7
newimg(61:120,61:120,:) = img1(61:120,61:120,:) ;
%Image replacement 8
newimg(61:120,121:180,:) = img2(61:120,121:180,:) ;
%Image replacement 9
newimg(61:120,181:240,:) = img1(61:120,181:240,:) ;
%Image replacement 10
newimg(61:120,241:300,:) = img2(61:120,241:300,:) ;
%Image replacement 11
newimg(121:180,1:60,:) = img1(121:180,1:60,:) ;
%Image replacement 12
newimg(121:180,61:120,:) = img2(121:180,61:120,:) ;
%Image replacement 13
newimg(121:180,121:180,:) = img1(121:180,121:180,:) ;
%Image replacement 14
newimg(121:180,181:240,:) = img2(121:180,181:240,:) ;
%Image replacement 15
newimg(121:180,241:300,:) = img1(121:180,241:300,:) ;
%Image replacement 16
newimg(181:240,1:60,:) = img2(181:240,1:60,:) ;
%Image replacement 17
newimg(181:240,61:120,:) = img1(181:240,61:120,:) ;
%Image replacement 18
newimg(181:240,121:180,:) = img2(181:240,121:180,:) ;
%Image replacement 19
newimg(181:240,181:240,:) = img1(181:240,181:240,:) ;
%Image replacement 20
newimg(181:240,241:300,:) = img2(181:240,241:300,:) ;
%Image replacement 21
newimg(241:300,1:60,:) = img1(241:300,1:60,:) ;
%Image replacement 22
newimg(241:300,61:120,:) = img2(241:300,61:120,:) ;
%Image replacement 23
newimg(241:300,121:180,:) = img1(241:300,121:180,:) ;
%Image replacement 24
newimg(241:300,181:240,:) = img2(241:300,181:240,:) ;
%Image replacement 25
newimg(241:300,241:300,:) = img1(241:300,241:300,:) ;
%New Image
figure;
imshow(newimg);

%new matrix of 1 row
z=uint8(0:1:299);

newrotimg=uint8(zeros(300,300,3));

for i=1:300
    for j=1:300
        newrotimg(j,300-i+1,1)=newimg(i,j,1);
        newrotimg(j,300-i+1,2)=newimg(i,j,2);
        newrotimg(j,300-i+1,3)=newimg(i,j,3);
    end
end
figure;
imshow(newrotimg);


