w0 = 1;
N = 10;
T = 2*pi;
t = -2*T:0.01:2*T;
xt = cos(t);

wc = 2;
A = [zeros(1,N) 0.5 0 0.5 zeros(1,N)];
B = myHPF(A,w0,wc);
y = partialfouriersum(B,T,t);
figure;
plot(t,xt,t,y);
xlabel("time t");
ylabel("Amplitude");
title("Original Signal and LPF output with wc = "+ wc);
grid on;
legend("Original Signal","Filtered Signal");

wc = 0.5;
B1 = myHPF(A,w0,wc);
y1 = partialfouriersum(B1,T,t);
figure;
plot(t,xt,t,y1);
xlabel("time t");
ylabel("Amplitude");
title("Original Signal and LPF output with wc = "+ wc);
grid on;
legend("Original Signal","Filtered Signal");