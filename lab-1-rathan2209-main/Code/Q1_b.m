% Defining relevant parameters
T = 1;
T1 = T/4;
N = 10;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t) < T/2, 0);
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