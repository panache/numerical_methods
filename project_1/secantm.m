function [ root ] = secantm( est1, est2, epsilon )
%SECANTM Summary of this function goes here
%   Detailed explanation goes here
prev = est1;
curr = est2;
next = curr;

while abs(f_fun1(curr))>epsilon
    next = curr - (f_fun1(curr)*((curr - prev)/(f_fun1(curr)-f_fun1(prev))));
    prev = curr;
    curr = next;
    
end
root=next;
end

