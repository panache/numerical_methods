function [ range ] = hysteresis_range( r1, r2, r3 )
%HYSTERESIS_RANGE Summary of this function goes here
%   Detailed explanation goes here
a = (r2*r3)/(r2+r3)
range = 4.96*((r1/(r1+a)) - (1/((r2*((1/r1)+(1/r3)))+1)))


end

