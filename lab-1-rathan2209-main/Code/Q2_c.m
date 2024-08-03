% FS coefficients
A = [0 0 0.5 0 1 0 1 0 0.5 0 0];
% Initilization
T = 1;
time_grid = -0.5:0.001:0.5;
wave = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
% function call
y = partialfouriersum(A,T,time_grid);
% Finding Maximum Error
Maximum_Absolute_Error = max(abs(wave - y));
display(Maximum_Absolute_Error);
Root_Mean_Squared_Error = rmse(wave,y);
display(Root_Mean_Squared_Error);