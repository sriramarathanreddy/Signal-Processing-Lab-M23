m = 7;
N = 2^m;

w = 0:((2*pi)/N):(2*pi);

xt = rand(1,N);
Xr = radix2fft(xt);
Xf = fft(xt,N);

figure;
subplot(2,2,1);
hold on;
stem(w(1:N),real(Xr));
stem(w(1:N),real(Xf));
hold off
grid on;
legend("Radix-2 FFT","Inbuilt FFT");
xlabel("Frequency \omega");
ylabel("Amplitude");
title("Real Part of FFT");
subplot(2,2,2);
hold on;
stem(w(1:N),imag(Xr));
stem(w(1:N),imag(Xf));
hold off
grid on;
legend("Radix-2 FFT","Inbuilt FFT");
xlabel("Frequency \omega");
ylabel("Amplitude");
title("Imaginary Part of FFT");
subplot(2,2,3);
hold on;
stem(w(1:N),abs(Xr));
stem(w(1:N),abs(Xf));
hold off
grid on;
legend("Radix-2 FFT","Inbuilt FFT");
xlabel("Frequency \omega");
ylabel("Amplitude");
title("Magnitude Plot of FFT");
subplot(2,2,4);
hold on;
stem(w(1:N),angle(Xr));
stem(w(1:N),angle(Xf));
hold off
grid on;
legend("Radix-2 FFT","Inbuilt FFT");
xlabel("Frequency \omega");
ylabel("Amplitude");
title("Phase Plot of FFT");
sgtitle("Comparing Inbuilt FFt and Radix-2 FFT");

Yr = real(Xf)-real(Xf);
Yi = imag(Xr)-imag(Xr);
Ya = abs(Xf)-abs(Xf);
Y = Xr-Xf;