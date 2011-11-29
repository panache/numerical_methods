function [ f ] = f_fun( x )
%F_FUN Summary of this function goes here
%   Detailed explanation goes here
f = ((1.5*x)/((1+x^2)^2)) - 0.65*atan(1/x) + ((0.65*x)/(1+x^2));

end

