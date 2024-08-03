n = 0:1:1000;

v = randn(1,length(n));
s = 5*sin(pi/200*n);
x = v+s;

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
