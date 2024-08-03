% Defining relevant parameters
T = 1;
N = 10;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
xt = piecewise(-1/4 <=t <=1/4,t,0);
% Function call to find FS coefficients
F = fourierCoeff(t, xt, T, t1, t2, N);
% Plotting
FS_indices = -N:N;
figure;
stem(FS_indices, F);
xlabel('Coefficient Index (k)');
ylabel('Coefficient Value');
title('Fourier Series Coefficients');
grid on;