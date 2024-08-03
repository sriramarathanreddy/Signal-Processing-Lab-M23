w = -5:0.1:5;
T = 1;
a = -T;
b = T;

syms t;
xt = piecewise(-T<=t<=0,t+1,0<=t<=T,-t+1,0);

X = continuousFT(t,xt,a,b,w);

figure;
subplot(2,2,1);
plot(w,real(X));
grid on;
xlabel("frequency \omega");
ylabel("Amplitude");
title("Real Part");
subplot(2,2,2);
plot(w,imag(X));
grid on;
xlabel("frequency \omega");
ylabel("Amplitude");
title("Imaginary Part");
subplot(2,2,3);
plot(w,abs(X));
grid on;
xlabel("frequency \omega");
ylabel("Amplitude");
title("Magnitude Plot");
subplot(2,2,4);
plot(w,angle(X));
grid on;
xlabel("frequency \omega");
ylabel("Amplitude");
title("Phase Plot");
sgtitle("CTFT of Rectangular pulse of unit amplitude for triangular pulse of height 1 and base/support [-1,1].");