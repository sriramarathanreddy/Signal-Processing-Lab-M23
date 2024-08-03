x1 = randn(1,10);
x2 = [zeros(1,3) 1 zeros(1,6)];
YL = conv(x1,x2);
YC = cconv(x1,x2);
X1 = fft(x1,19);
X2 = fft(x2,19);
X = X1.*X2;
x = ifft(X,19);

t = 0:1:9;
t1 = 0:1:18;

figure;
subplot(2,2,1);
stem(t,x1);
xlabel("time n");
ylabel("Amplitude");
title("x1[n]: Random Gaussian signal");
subplot(2,2,2);
stem(t,x2);
xlabel("time n");
ylabel("Amplitude");
title("x2[n]:\delta[n-3]");
subplot(2,2,3);
stem(t1,YL);
xlabel("time n");
ylabel("Amplitude");
title("Linear convolution Signal");
subplot(2,2,4);
stem(t1,x);
xlabel("time n");
ylabel("Amplitude");
title("Convolution Using DFT and IDFT method");

figure;
subplot(2,2,1);
stem(t,x1);
xlabel("time n");
ylabel("Amplitude");
title("x1[n]: Random Gaussian signal");
subplot(2,2,2);
stem(t,x2);
xlabel("time n");
ylabel("Amplitude");
title("x2[n]:\delta[n-3]");
subplot(2,2,3);
stem(t1,YC);
xlabel("time n");
ylabel("Amplitude");
title("Circular convolution Signal");
subplot(2,2,4);
stem(t1,x);
xlabel("time n");
ylabel("Amplitude");
title("Convolution Using DFT and IDFT method");

figure;
hold on
stem(t1,YL);
stem(t1,YC);
stem(t1,x);
hold off
xlabel("Time n");
ylabel("Amplitude");
title("Three methods in one plot");
legend("Linear Convolution","Circular convolution","DFT based Convolution");