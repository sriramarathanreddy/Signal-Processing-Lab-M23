% Defining relevant parameters
T = 1;
N = 5;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);  % Sum of cosines wave
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
