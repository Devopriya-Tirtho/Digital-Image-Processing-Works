%Name: Devopriya Tirtho
%ID: 160204033
%Section: A2
% 33%4=1; Kernel size: 5*5
S = (imread('cameraman.png'));
R = S;

sig = input('Give the input of Sigma: ');
M=1/(2*3.14*sig*sig);
fprintf('Constant:%i',M);

[row, col] = size(S);
S_pad = zeros(row+4, col+4);
S_pad(3:row+2, 3:col+2) = S;

 X=[ -2 -1 0 1 2;
     -2 -1 0 1 2;
     -2 -1 0 1 2;
     -2 -1 0 1 2;
     -2 -1 0 1 2];
 

  Y=[ -2 -2 -2 -2 -2;
      -1 -1 -1 -1 -1;
      0  0  0  0  0;
      1  1  1  1  1 ;
      2  2  2  2  2];

eqn = (1/(2*3.1416*sig*sig))*(exp(((-1)*((X.*X)+(Y.*Y))) ./ ((2*sig*sig) * ones(5,5))));

for i = 1 : row
    for j = 1 : col
        P = S_pad(i:i+4, j:j+4);
        P = P .* eqn;
        t = sum(sum(P));
        
        R(i,j) = t;   
    end
end


subplot(2,1,1);
imshow(S);
title('Input Image');

subplot(2,1,2);
imshow(R,[0,max(R(:))]);
title('Output Image');


