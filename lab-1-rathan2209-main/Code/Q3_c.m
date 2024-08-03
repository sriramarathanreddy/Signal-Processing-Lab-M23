% Defining relevant parameters
T = 1;
T1 = 0.1;
N = 10;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
time_grid = -0.5:0.001:0.5;
xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t) < T/2, 0);
A = fourierCoeff(t, xt, T, t1, t2, N);
y = partialfouriersum(A,T,time_grid);
plot(time_grid,y); 
xlabel('time');
ylabel('x(t)');
title('Partially reconstructed square wave for N = 10');