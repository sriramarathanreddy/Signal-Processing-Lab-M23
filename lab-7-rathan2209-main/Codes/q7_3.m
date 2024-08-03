% Original Signal:
f = 0.25;
t_fine = -10:0.001:10;
t = -1:0.001:1;
triangle = abs(sawtooth(2 * pi * f * t, 0.5));
x = [zeros(1,9000) triangle zeros(1,9000)];

% Given Sampling Times:
Ts1 = 0.5;
Ts2 = 0.2;
Ts3 = 0.1;
Ts4 = 0.05;

% Sampled Signals for each Ts:
t_samples1 = -10:Ts1:10;
t_samples2 = -10:Ts2:10;
t_samples3 = -10:Ts3:10;
t_samples4 = -10:Ts4:10;

t1 = -1:Ts1:1;
triangle1 = abs(sawtooth(2 * pi * f * t1, 0.5));
xn1 = [zeros(1,18) triangle1 zeros(1,18)];
t2 = -1:Ts2:1;
triangle2 = abs(sawtooth(2 * pi * f * t2, 0.5));
xn2 = [zeros(1,45) triangle2 zeros(1,45)];
t3 = -1:Ts3:1;
triangle3 = abs(sawtooth(2 * pi * f * t3, 0.5));
xn3 = [zeros(1,90) triangle3 zeros(1,90)];
t4 = -1:Ts4:1;
triangle4 = abs(sawtooth(2 * pi * f * t4, 0.5));
xn4 = [zeros(1,180) triangle4 zeros(1,180)];

% Reconstruction:
n1 = -(length(t_samples1)-1)/2:1:(length(t_samples1)-1)/2;
xr1 = sinc_recon(n1,xn1,Ts1,t_fine);
n2 = -(length(t_samples2)-1)/2:1:(length(t_samples2)-1)/2;
xr2 = sinc_recon(n2,xn2,Ts2,t_fine);
n3 = -(length(t_samples3)-1)/2:1:(length(t_samples3)-1)/2;
xr3 = sinc_recon(n3,xn3,Ts3,t_fine);
n4 = -(length(t_samples4)-1)/2:1:(length(t_samples4)-1)/2;
xr4 = sinc_recon(n4,xn4,Ts4,t_fine);

% PLOTTING:
figure;
subplot(2,2,1);
hold on;
stem(t_samples1,xn1);
plot(t_fine,xr1);
hold off;
legend("Samples","Reconstructed Signal");
xlabel("Time t");
ylabel("Amplitude");
title(sprintf("Reconstruction for sampling interval = %f",Ts1));
subplot(2,2,2);
hold on;
stem(t_samples2,xn2);
plot(t_fine,xr2);
hold off;
legend("Samples","Reconstructed Signal");
xlabel("Time t");
ylabel("Amplitude");
title(sprintf("Reconstruction for sampling interval = %f",Ts2));
subplot(2,2,3);
hold on;
stem(t_samples3,xn3);
plot(t_fine,xr3);
hold off;
legend("Samples","Reconstructed Signal");
xlabel("Time t");
ylabel("Amplitude");
title(sprintf("Reconstruction for sampling interval = %f",Ts3));
subplot(2,2,4);
hold on;
stem(t_samples4,xn4);
plot(t_fine,xr4);
hold off;
legend("Samples","Reconstructed Signal");
xlabel("Time t");
ylabel("Amplitude");
title(sprintf("Reconstruction for sampling interval = %f",Ts4));
sgtitle("Sinc Reconstruction of a Non-Band-Limited Signal for different sampling intervals");