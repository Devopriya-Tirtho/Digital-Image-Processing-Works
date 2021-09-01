%Name: Devopriya Tirtho
%ID: 160204033
%Section: A2
f=[0 0 0 0 0 0 0;
   0 0 0 0 0 0 0;
   0 0 1 0 1 0 0;
   0 0 1 0 1 0 0;
   0 0 1 1 1 0 0;
   0 0 0 0 0 0 0;
   0 0 0 0 0 0 0];

subplot(1,2,1);
imshow(f);
title('Given image');

[row,col]=size(f);
dilate = zeros(row,col);


%Structural element for achieving the output
structural_element=[0 1 0;
                    1 1 1;
                    0 1 0];

for i=2:row-1
    for j=2:col-1
        structural_element1=[f(i-1,j)*structural_element(1,2) f(i,j-1)*structural_element(2,1) f(i,j)*structural_element(2,2) f(i,j+1)*structural_element(2,3) f(i+1,j)*structural_element(3,2)];
        dilate(i,j)=max(structural_element1);
    end
end

final_image= dilate-f;
subplot(1,2,2);
imshow(final_image);
title('Image we want');