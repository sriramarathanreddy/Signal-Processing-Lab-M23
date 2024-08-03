w0 = 1;
N = 10;
T = 2*pi;
t = -2*T:0.01:2*T;
xt = cos(t);

G =1;
a =1;
A = [zeros(1,N) 0.5 0 0.5 zeros(1,N)];
B = NonIdeal(A,w0,G,a);
y = partialfouriersum(B,T,t);
figure;
plot(t,xt,t,y);
grid on;
xlabel("time t");
ylabel("Amplitude");
title("Original Signal and LPF output with G = " + G + "and a = " + a);
legend("Original Signal","Filtered Signal");