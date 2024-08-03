w0 = pi/4;
b0 = 1/((1-exp(1j*w0))*(1-exp(-1j*w0)));
N = 2001;

b1 = [-exp(1j*w0) 1];
b2 = [-exp(-1j*w0) 1];
b = b0*conv(b1,b2);

a = [1];

[h,w] = freqz(b,a,"whole",N);

figure;
subplot 211;
plot(w,20*log10(abs(h)));
xlabel("Frequency \omega");
ylabel("Magnitude:|H(\omega)|");
title("Magnitude Plot of FIR Notch filter");
grid on;
subplot 212;
plot(w,angle(h));
xlabel("Frequency \omega");
ylabel("Phase Plot:\theta(\omega)");
title("Phase Plot of FIR Notch filter");
grid on;
sgtitle("Frequency Response of FIR Notch Filter")

figure;
zplane(b,a);
grid on;

fvtool(b,a);