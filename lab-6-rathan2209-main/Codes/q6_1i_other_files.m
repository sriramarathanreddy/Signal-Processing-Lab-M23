[x0,fs0] = audioread("Audio Files\0.wav");
N0 = 2*length(x0);
X0 = fft(x0,N0);
f0 = (0:1:length(X0)-1)*(2*pi/N0);
figure;
stem(f0,abs(X0));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-0 with 3 strongest frequencies Labelled")

[x1,fs1] = audioread("Audio Files\1.wav");
N1 = 2*length(x1);
X1 = fft(x1,N1);
f1 = (0:1:length(X1)-1)*(2*pi/N1);
figure;
stem(f1,abs(X1));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-1 with 3 strongest frequencies Labelled")

[x3,fs3] = audioread("Audio Files\3.wav");
N3 = 2*length(x3);
X3 = fft(x3,N3);
f3 = (0:1:length(X3)-1)*(2*pi/N3);
figure;
stem(f3,abs(X3));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-3 with 3 strongest frequencies Labelled")

[x4,fs4] = audioread("Audio Files\4.wav");
N4 = 2*length(x4);
X4 = fft(x4,N4);
f4 = (0:1:length(X4)-1)*(2*pi/N4);
figure;
stem(f4,abs(X4));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-4 with 3 strongest frequencies Labelled")

[x5,fs5] = audioread("Audio Files\5.wav");
N5 = 2*length(x5);
X5 = fft(x5,N5);
f5 = (0:1:length(X5)-1)*(2*pi/N5);
figure;
stem(f5,abs(X5));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-5 with 3 strongest frequencies Labelled")

[x6,fs6] = audioread("Audio Files\6.wav");
N6 = 2*length(x6);
X6 = fft(x6,N6);
f6 = (0:1:length(X6)-1)*(2*pi/N6);
figure;
stem(f6,abs(X6));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-6 with 3 strongest frequencies Labelled")

[x7,fs7] = audioread("Audio Files\7.wav");
N7 = 2*length(x7);
X7 = fft(x7,N7);
f7 = (0:1:length(X7)-1)*(2*pi/N7);
figure;
stem(f7,abs(X7));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-7 with 3 strongest frequencies Labelled")

[x8,fs8] = audioread("Audio Files\8.wav");
N8 = 2*length(x8);
X8 = fft(x8,N8);
f8 = (0:1:length(X8)-1)*(2*pi/N8);
figure;
stem(f8,abs(X8));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-8 with 3 strongest frequencies Labelled")

[x9,fs9] = audioread("Audio Files\9.wav");
N9 = 2*length(x9);
X9 = fft(x9,N9);
f9 = (0:1:length(X9)-1)*(2*pi/N9);
figure;
stem(f9,abs(X9));
xlabel("frequency");
ylabel("Amplitude");
title("DFT of Audiofile-9 with 3 strongest frequencies Labelled")
