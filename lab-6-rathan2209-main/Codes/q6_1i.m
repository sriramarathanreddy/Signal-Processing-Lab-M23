[x,fs] = audioread("Audio Files\2.wav");
N = 2*length(x);
X = fft(x,N);
f = (0:1:length(X)-1)*(2*pi/N);
figure;
stem(f,abs(X));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-2 with 3 strongest frequencies Labelled")