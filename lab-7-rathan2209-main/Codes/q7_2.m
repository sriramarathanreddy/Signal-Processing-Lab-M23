t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine)+sin(10*pi*t_fine);
Ts = 0.1;
t_samples = 0:Ts:2;
xn = cos(5*pi*t_samples)+sin(10*pi*t_samples);

figure;
subplot(2,2,1);
plot(t_fine,xt);
xlabel("Time t");
ylabel("Amplitude");
title("Original Signal:cos(5\pit)+sin(10\pit)");

% Question 7_2a:
xr0 = interp1(t_samples,xn,t_fine,"previous");
subplot(2,2,2);
hold on;
stem(t_samples,xn);
plot(t_fine,xr0);
hold off;
xlabel("Time t");
ylabel("Amplitude");
title("Zero-order hold reconstruction:cos(5\pit)+sin(10\pit)");


% Question 7_2b:
xr1 = interp1(t_samples,xn,t_fine,"linear");
subplot(2,2,3);
hold on;
stem(t_samples,xn);
plot(t_fine,xr1);
hold off;
xlabel("Time t");
ylabel("Amplitude");
title("Linear interpolation based signal reconstruction:cos(5\pit)+sin(10\pit)");


% Question 7_2c:
n = 0:1:length(t_samples)-1;
xrs = sinc_recon(n,xn,Ts,t_fine);
subplot(2,2,4);
hold on;
stem(t_samples,xn);
plot(t_fine,xrs);
hold off;
xlabel("Time t");
ylabel("Amplitude");
title("Sinc reconstruction:cos(5\pit)+sin(10\pit)");

figure;
plot(t_fine,xt,t_fine,xr0,t_fine,xr1,t_fine,xrs);
legend("Original Signal","Zero-order hold reconstruction","Linear interpolation based signal reconstruction","Sinc reconstruction");
xlabel("Time t");
ylabel("Amplitude");
title("Comparisions of reconstructions with Original Signal");

MAE0 = max(abs(xt(251:1751)-xr0(251:1751)));
disp([sprintf("The maximum absolute error (MAE) between the original signal and the Zero-order hold reconstructed signal = %f",MAE0)]);
MAE1 = max(abs(xt(251:1751)-xr1(251:1751)));
disp([sprintf("The maximum absolute error (MAE) between the original signal and the Linear interpolation based signal reconstructed signal = %f",MAE1)]);
MAES = max(abs(xt(251:1751)-xrs(251:1751)));
disp([sprintf("The maximum absolute error (MAE) between the original signal and the Sinc reconstructed signal = %f",MAES)]);

r0 = rmse(xt,xr0);
r1 = rmse(xt,xr1);
rs = rmse(xt,xrs);
fprintf("The RMS errors for the three methods of interpolation = %f %f %f respectively\n",r0,r1,rs);

xrt = interp1(t_samples,xn,t_fine,"spline");
figure;
plot(t_fine,xt,t_fine,xrt);
legend("Original Signal","SPLINE Interpolation");
xlabel("Time t");
ylabel("Amplitude");
title("SPLINE Interpolaton Method");
MAET = max(abs(xt(251:1751)-xrt(251:1751)));
disp([sprintf("The maximum absolute error (MAE) between the original signal and the SPLINE Interpolation reconstructed signal = %f",MAET)]);