function [ root ] = secantm( est1, est2, epsilon )
%SECANTM Summary of this function goes here
%   Detailed explanation goes here
prev = est1;
curr = est2;
next = 0;

while abs(f_fun(next))>epsilon
    next = curr - (f_fun(curr)*((curr - prev)/(f_fun(curr)-f_fun(prev))));
    prev = curr;
    curr = next;
    
end

root=next;
end

