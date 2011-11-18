function [ f ] = integral_func( x )
%INTEGRAL_FUNC Summary of this function goes here
%   Detailed explanation goes here
e = exp(1);
f = 5000/(30 * 10^6 * (1 - 0.1*x - 0.0005*(x^2)) * 2 * e^(-0.1*x));

end

