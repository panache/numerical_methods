l = 100*39.3700787;
T=1000;
p = 100;
R = 50000000;

syms w x;

d2wdx2 = @(w,x)  ((T*w) + (p*x*(x-l))/2)/R;

w0 = 0;
dwdx = 0.001;
delta_x = 5;

x(0,0)= 0;

%step number, x value, w(x), dw/dx <-- in a table
%graph of w(x) over l

%use shooting method

%all results to 8 decimal places

% x-bounds, and delta x to be passed to q_1
% q_1 returns 