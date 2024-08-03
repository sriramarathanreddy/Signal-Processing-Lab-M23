% Defining relevant parameters
T = 5;
T1 = 0.1;
N = 10;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
xt = 2; % constant function is periodic with fundamental period not defined
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