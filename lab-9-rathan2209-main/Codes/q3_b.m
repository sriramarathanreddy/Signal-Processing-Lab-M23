w0 = pi/4;
r0 = 0.9;
b0 = ((1-r0*exp(1j*w0))*(1-r0*exp(-1j*w0)))/((1-exp(1j*w0))*(1-exp(-1j*w0)));
N = 2001;

b = b0*[1 -2*cos(w0) 1];
a = [1 -2*r0*cos(w0) r0^2];

[h,w] = freqz(b,a,"whole",N);

figure;
subplot 211;
plot(w,20*log10(abs(h)));
xlabel("Frequency \omega");
ylabel("Magnitude:|H(\omega)|");
title("Magnitude Plot of iIR Notch filter");
grid on;
subplot 212;
plot(w,angle(h));
xlabel("Frequency \omega");
ylabel("Phase Plot:\theta(\omega)");
title("Phase Plot of IIR Notch filter");
grid on;
sgtitle("Frequency Response of FIR Notch Filter")

figure;
zplane(b,a);
grid on;

fvtool(b,a);