%Devopriya Tirtho
%160204033
%Final Assignment

%a
img=(imread('input.png'));
img = im2double(rgb2gray(img));
[x,y]=size(img);
I=zeros(x+2,y+2);
I(2:x+1,2:y+1)= img;
I1=zeros(x,y);
subplot(2,4,1);imshow(img);
title('Step 1; Figure: a');

%Declaration
Lf=[0 -1 0;
   -1 4 -1;
    0 -1 0];
threshold=0.1;
c=1;
gamma=0.1;
Sx=[-1 0 1;
    -2 0 2;
    -1 0 1];
Sy=[-1 -2 -1;
     0  0  0;
     1  2  1];
 
%b
for s=2:x+1
    for t=2:y+1
       I1(s-1,t-1)= I(s-1,t)*Lf(1,2)+I(s,t-1)*Lf(2,1)+ I(s,t)*Lf(2,2)+ I(s,t+1)*Lf(2,3)+I(s+1,t)*Lf(3,2);
    end
end

subplot(2,4,2);imshow(I1,[]);
title('Step 2; Figure: b');

%c
I2= (img-I1);
subplot(2,4,3);imshow(I2);
title('Step 3; Figure: c');


%d
I31=zeros(x,y);
I32=zeros(x,y);
for s=2:x+1
    for t=2:y+1
       I31(s-1,t-1)= I(s-1,t-1)*Sx(1,1)+I(s-1,t+1)*Sx(1,3)+I(s,t-1)*Sx(2,1)+I(s,t+1)*Sx(2,3)+I(s+1,t-1)*Sx(3,1)+I(s+1,t+1)*Sx(3,3);
       I32(s-1,t-1)= I(s-1,t-1)*Sy(1,1)+I(s-1,t)*Sy(1,2)+I(s-1,t+1)*Sy(1,3)+I(s+1,t-1)*Sy(3,1)+I(s+1,t)*Sy(3,2)+I(s+1,t+1)*Sy(3,3);
    end
end
I3= sqrt(I31.*I31+I32.*I32);
for i=1:x
    for j=1:y
        if I3(i,j)>= threshold
            I3(i,j)=I3(i,j);
        else
            I3(i,j)=0;
        end
    end
end
subplot(2,4,4);imshow(I3);
title('Step 4; Figure: d');

%e
I4=zeros(x,y);
T=zeros(x+4,y+4);
T(3:x+2,3:y+2)= img;
for i = 1:x-4
       for j = 1:y-4
           region = T(i:i+4, j:j+4);
           I4(i+2, j+2) = mean(region(:));
       end
end

subplot(2,4,5);imshow(I4);
title('Step 5; Figure: e');

%f
I5= I2 .* I4;
subplot(2,4,6);imshow(I5);
title('Step 6; Figure: f');

%g
I6= img+I5;
subplot(2,4,7);imshow(I6);
title('Step 1=7; Figure: g');

%h
I7=zeros(x,y);
for i=1:x
    for j=1:y
         I7(i,j)= c* (img(i,j)^gamma);
    end
end
subplot(2,4,8);imshow(I7);
title('Step 8; Figure: h');