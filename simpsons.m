function [ axial_disp ] = simpsons( step_size )
%SIMPSONS Summary of this function goes here
%   Detailed explanation goes here
int n = 10 / step_size;

if(mod(n,2))
    error('n is not even');
end

sum = integral_func(0) + integral_func(10);

for i = 1:(n-1)
    x = i*step_size;
    f = integral_func(x);
    if(mod(i,2))
        multiple = 4;
    else
        multiple = 2;
    end
    
    sum = sum+ (multiple*f);
end

axial_disp = sum * step_size / 3;
        
    
end

