clear all; clc;close all;
M = importdata('output1.txt');
[m,n] = size(M);

 for j = 1:m   
    k = 0;
    for i = 2:2:n
        k = k +1;
         angle(1,k) = M(1,i);
         distance(1,k) = M(1,i+1);      
%          distance(j,k) = M(j,i);
%          angle(j,k) = M(j,i+1);   
         theta = angle*pi/180;
    end
     x = distance .* cos(theta);
     y = distance .* sin(theta);
%      plot(angle,distance,'.')
 end
plot(x,y,'.')