% FS coefficients
A = [0 0 0.5 0 1 0 1 0 0.5 0 0];
% Initilization
T = 1;
time_grid = -0.5:0.001:0.5;
wave = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
% function call
y = partialfouriersum(A,T,time_grid);
% Plotting the data
figure;
plot(time_grid,wave,"g*",time_grid,y,"r-");
legend( 'Actual function cos(2πt)+2cos(6πt)','Partially reconstructed function from FS coefficients');
grid on;