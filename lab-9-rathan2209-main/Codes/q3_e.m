load handel.mat

sound(y,Fs);
pause(10);

duration = (length(y)-1)/Fs;
t = 0:1/Fs:duration;
f0 = 1024;
xt = sin(2*pi*f0*t);
Y = y'+xt;

sound(Y,Fs);
pause(10);

w0 = pi/4;
b0 = 1/((1-exp(1j*w0))*(1-exp(-1j*w0)));
b1 = [-exp(1j*w0) 1];
b2 = [-exp(-1j*w0) 1];
b = b0*conv(b1,b2);
a = 1;
Ya = filter(b,a,Y);

sound(Ya,Fs);
pause(10);

r0 = 0.9;
b0 = ((1-r0*exp(1j*w0))*(1-r0*exp(-1j*w0)))/((1-exp(1j*w0))*(1-exp(-1j*w0)));
b = b0*[1 -2*cos(w0) 1];
a = [1 -2*r0*cos(w0) r0^2];
Yb = filter(b,a,Y);

sound(Yb,Fs);
pause(10);

figure;
subplot 221;
stem(t(1:100),y(1:100));
xlabel("time T");
ylabel("Amplitude");
title("Original Handel Sound");
subplot 222;
stem(t(1:100),Y(1:100));
xlabel("time T");
ylabel("Amplitude");
title("Handel Sound + Sine Wave");
subplot 223;
stem(t(1:100),Ya(1:100));
xlabel("time T");
ylabel("Amplitude");
title("OUTPUT of FIR Notch Filter");
subplot 224;
stem(t(1:100),Yb(1:100));
xlabel("time T");
ylabel("Amplitude");
title("OUTPUT of IIR Notch Filter");