% Defining relevant parameters
T = 1;
T1 = T/4;
NValues = 1:100;
t1 = -T/2;
t2 = T/2;
% Defining relevant expressions
syms t;
time_grid = -0.5:0.001:0.5;
xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t) < T/2, 0);
x = zeros(size(time_grid));
for ind =401:601
    x(ind)= 1;
end
%Arrays to store errors for different values of n
rmsErr = zeros(size(NValues));
maErr = zeros(size(NValues));
% Calculate Errors
for index = 1:length(NValues)
    N = NValues(index);
    F = fourierCoeff(t, xt, T, t1, t2, N);
    y = partialfouriersum(F,T,time_grid);
    rmsErr(index) = rmse(x,y);
    maErr(index) = max(abs(x-y));
end
% Plot errors
subplot(2,1,1); 
plot(NValues,rmsErr);
xlabel('Values of N');
ylabel('Root Mean Squared error');
title('RMS ERROR FOR DIFFERENT VALUES OF N FROM 1 TO 100');
grid on;
subplot(2,1,2);
plot(NValues,maErr);
xlabel('Values of N');
ylabel('Mean Absolute Error');
title('MAE ERROR FOR DIFFERENT VALUES OF N FROM 1 TO 100');
grid on;