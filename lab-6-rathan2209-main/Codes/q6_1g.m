f0 = 12;
fs = 64;
L = 16;
m = [1 2 4 8];
N = m*L;
n = 0:1:L-1;
p = cos(2*pi*f0*n/fs);
h = hann(L);
w = transpose(h);
x = p.*w;

X = fft(x,N(1));
subplot(2,2,1);
f = (0:1:length(X)-1)*(2*pi/N(1));
stem(f,abs(X));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of x[n] for L = 16 and N = 16");

X = fft(x,N(2));
subplot(2,2,2);
f = (0:1:length(X)-1)*(2*pi/N(2));
stem(f,abs(X));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of x[n] for L = 16 and N = 32");

X = fft(x,N(3));
subplot(2,2,3);
f = (0:1:length(X)-1)*(2*pi/N(3));
plot(f,abs(X));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of x[n] for L = 16 and N = 48");

X = fft(x,N(4));
subplot(2,2,4);
f = (0:1:length(X)-1)*(2*pi/N(4));
plot(f,abs(X));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of x[n] for L = 16 and N = 64");

sgtitle("DFT of x[n] for L = 16 and N = 16, 32, 48, 64 with hanning window")