t_fine = 0:0.001:2;
x = cos(5*pi*t_fine);


Ts1 = 0.1;
ts1 = 0:Ts1:2;
x1 = cos(5*pi*ts1);
n1 = 0:1:length(ts1)-1;
xr1 = sinc_recon(n1,x1,Ts1,t_fine);

Ts2 = 0.2;
ts2 = 0:Ts2:2;
x2 = cos(5*pi*ts2);
n2 = 0:1:length(ts2)-1;
xr2 = sinc_recon(n2,x2,Ts2,t_fine);

Ts3 = 0.3;
ts3 = 0:Ts3:2;
x3 = cos(5*pi*ts3);
n3 = 0:1:length(ts3)-1;
xr3 = sinc_recon(n3,x3,Ts3,t_fine);

Ts4 = 0.4;
ts4 = 0:Ts4:2;
x4 = cos(5*pi*ts4);
n4 = 0:1:length(ts4)-1;
xr4 = sinc_recon(n4,x4,Ts4,t_fine);


figure;

subplot(2,2,1);
hold on;
plot(t_fine,x,'r--',t_fine,xr1,'g-');
stem(ts1,x1);
hold off;
legend("Original Signal","Sinc reconstructed Signal","Sampled Signal");
xlabel("Time t");
ylabel("Amplitude");
title("Plot for Sample interval Ts = "+ Ts1);

subplot(2,2,2);
hold on;
plot(t_fine,x,'r--',t_fine,xr2,'g-');
stem(ts2,x2);
hold off;
legend("Original Signal","Sinc reconstructed Signal","Sampled Signal");
xlabel("Time t");
ylabel("Amplitude");
title("Plot for Sample interval Ts = "+ Ts2);

subplot(2,2,3);
hold on;
plot(t_fine,x,'r--',t_fine,xr3,'g-');
stem(ts3,x3);
hold off;
legend("Original Signal","Sinc reconstructed Signal","Sampled Signal");
xlabel("Time t");
ylabel("Amplitude");
title("Plot for Sample interval Ts = "+ Ts3);

subplot(2,2,4);
hold on;
plot(t_fine,x,'r--',t_fine,xr4,'g-');
stem(ts4,x4);
hold off;
legend("Original Signal","Sinc reconstructed Signal","Sampled Signal");
xlabel("Time t");
ylabel("Amplitude");
title("Plot for Sample interval Ts = "+ Ts4);

sgtitle("Sinc Reconstruction of cos(5\pit) for different Sample Intervals");