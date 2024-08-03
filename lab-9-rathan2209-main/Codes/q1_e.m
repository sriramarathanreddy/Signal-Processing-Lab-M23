N = 10;
T = 2*pi; % LCM of periods of both = LCM(pi, 2*pi/3) = 2*pi
w0 = 1; %HCF of 2,3

syms t;
xt = sin(2*t)+cos(3*t);
A = fourierCoeff(t,xt,T,-T/2,T/2,N);
wc = 2.5;

t = -2*T:0.01:2*T;
B1 = myLPF(A,w0,wc);
y1 = partialfouriersum(B1,T,t);
B2 = myHPF(A,w0,wc);
y2 = partialfouriersum(B2,T,t);

x = sin(2*t)+cos(3*t);
plot(t,x,t,y1,t,y2);
xlabel("Time t");
ylabel("Amplitude");
title("Filtering of a Signal");
grid on;
legend("Original Signal","Low Pass Filtered Signal","High Pass Filtered Signal");