l = 100*39.3700787;
T=1000;
p = 100;
R = 50000000;

syms w x;

d2wdx2 = @(w,x)  ((T*w) + (p*x*(x-l))/2)/R;

% x-bounds, and delta x to be passed to q_1
% q_1 returns 