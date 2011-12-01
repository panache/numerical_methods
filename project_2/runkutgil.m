function [ value ] = runkutgil( func, x0, y0, delx, x_max )
%RUNKUTGIL Summary of this function goes here
%   Detailed explanation goes here

i=1;

while(x0<x_max)
    answer(i,1)=i; %iteration number
    answer(i,2)=x0; %x value
    answer(i,3)=y0; % y value
    y0 = rkg (x0,y0,delx,func);
    answer(i,4)=21/16*exp(4*x0)+3/4*x0-5/16;
    x0=x0+delx;
    i=i+1;
end
value = answer(i-1, 4);

end

