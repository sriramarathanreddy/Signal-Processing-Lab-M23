% FS coefficients
A = [0 0 0.5 0 1 0 1 0 0.5 0 0];
% Initilization
T = 1;
time_grid = -0.5:0.001:0.5;
% function call
y = partialfouriersum(A,T,time_grid);
% Plotting the data
plot(time_grid,y);
xlabel('time');
ylabel('x(t)');
title('Partially Reconstructed Signal');
grid on;