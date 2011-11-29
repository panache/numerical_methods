function [ value ] = d2wdx2( w,x )
%D2WDX2 Summary of this function goes here
%   Detailed explanation goes here
l = 100*39.3700787;
T=1000;
p = 100;
R = 50000000;
value =  ((T*w) + (p*x*(x-l))/2)/R;

end

