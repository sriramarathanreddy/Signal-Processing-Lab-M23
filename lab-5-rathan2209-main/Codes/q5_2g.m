n = 0:1:1000;

v = randn(1,length(n));
s = 5*sin(pi/200*n);
x = v+s;
%---part c---%
figure;
subplot(2,1,1);
stem(n,s);
xlabel("Time n");
ylabel("Amplitude");
title("Sine wave");
subplot(2,1,2);
stem(n,x);
xlabel("Time n");
ylabel("Amplitude");
title("Sine wave with Noise");
sgtitle("Sine wave and sine wave corrupted with noise in Discrete domain");

figure;
subplot(2,1,1);
plot(n,s);
xlabel("Time n");
ylabel("Amplitude");
title("Sine wave");
subplot(2,1,2);
plot(n,x);
xlabel("Time n");
ylabel("Amplitude");
title("Sine wave with Noise");
sgtitle("Sine wave and sine wave corrupted with noise in Continuous domain");


%---part d---%
h = [1 -1];
y = conv(x,h,"full");
n1 = 0:1:1001;
figure;
plot(n,s,"b",n1,y,"r");
xlabel("Time n");
ylabel("Amplitude");
title("Convolution of input Signalwith impulse response of Differentiator");
legend("Sine Wave","Output of Filter");


%---partr f---%
N0 = 1;
w = -10:0.01:10;

X = DT_Fourier(x,N0,w);
Y = DT_Fourier(y,N0,w);
figure;
subplot(2,2,1);
plot(n,x);
xlabel("Time n");
ylabel("Amplitude");
title("Noise corrupted Sine Wave");
subplot(2,2,2);
plot(n1,y);
xlabel("Time n");
ylabel("Amplitude");
title("Filtered Sine Wave using Differentiator Filter");
subplot(2,2,3);
plot(w,abs(X));
xlabel("Frequency");
ylabel("Amplitude");
title("DTFT of Noise corrupted Sine Wave");
subplot(2,2,4);
plot(w,abs(Y));
xlabel("Frequency");
ylabel("Amplitude");
title("DTFT of Filtered Sine Wave using Differentiator Filter");
sgtitle("DTFT of the noisy and the filtered signal");
