% Defining relevant parameters
T = 1;
T1 = 0.1;
N = 60;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t) < T/2, 0);
% Function call to find FS coefficients
F = fourierCoeff(t, xt, T, t1, t2, N);
% Function call to find FS coefficients
F = fourierCoeff(t, xt, T, t1, t2, N);
% Plotting
FS_indices = -N:N;
figure;
stem(FS_indices, T*F);
xlabel('Coefficient Index (k)');
ylabel('T * Coefficient Value');
title('Fourier Series Coefficients');
legend('T = 1')
grid on;