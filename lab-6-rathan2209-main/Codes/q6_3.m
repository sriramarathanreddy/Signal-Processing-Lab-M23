L = 4;
N = [4 16 64];
for k = 1:1:length(N)
    x = [ones(L,1);zeros(N(k)-L,1)];
    X = fft(x,N(k));
    f = (0:1:length(X)-1)*(2*pi/N(k));
    figure;
    subplot(3,1,1)
    stem(0:1:N(k)-1,x);
    xlabel("Time n");
    ylabel("Amplitude");
    title("Given Sequence");
    subplot(3,1,2);
    stem(f,abs(X));
    xlabel("Frequency 𝜔");
    ylabel("Magnitude");
    title("Magnitude Plot");
    subplot(3,1,3);
    stem(f,angle(X));
    xlabel("Frequency 𝜔");
    ylabel("Phase");
    title("Phase Plot");
    sgtitle(sprintf("[ones(L,1); zeros(N-L,1)] for L = 4 and N = %d",N(k)));
end

N = 20;
n = 0:1:N-1;
w0 = 0.3*pi;

x1 = sin(w0*n);
X1 = fft(x1,N);
f = (0:1:length(X1)-1)*(2*pi/N);
figure;
subplot(3,1,1)
stem(0:1:N-1,x1);
xlabel("Time n");
ylabel("Amplitude");
title("Given Sequence");
subplot(3,1,2);
stem(f,abs(X1));
xlabel("Frequency 𝜔");
ylabel("Magnitude");
title("Magnitude Plot");
subplot(3,1,3);
stem(f,angle(X1));
xlabel("Frequency 𝜔");
ylabel("Phase");
title("Phase Plot");
sgtitle("sin(𝜔_0𝑛), for 𝜔_0 = 3𝜋/10 and N = 20");

x2 = cos(w0*n);
X2 = fft(x2,N);
f = (0:1:length(X2)-1)*(2*pi/N);
figure;
subplot(3,1,1)
stem(0:1:N-1,x2);
xlabel("Time n");
ylabel("Amplitude");
title("Given Sequence");
subplot(3,1,2);
stem(f,abs(X2));
xlabel("Frequency 𝜔");
ylabel("Magnitude");
title("Magnitude Plot");
subplot(3,1,3);
stem(f,angle(X2));
xlabel("Frequency 𝜔");
ylabel("Phase");
title("Phase Plot");
sgtitle("cos(𝜔_0𝑛), for 𝜔_0 = 3𝜋/10 and N = 20");

x3 = sin(w0*(n-1));
X3 = fft(x3,N);
f = (0:1:length(X3)-1)*(2*pi/N);
figure;
subplot(3,1,1)
stem(0:1:N-1,x3);
xlabel("Time n");
ylabel("Amplitude");
title("Given Sequence");
subplot(3,1,2);
stem(f,abs(X3));
xlabel("Frequency 𝜔");
ylabel("Magnitude");
title("Magnitude Plot");
subplot(3,1,3);
stem(f,angle(X3));
xlabel("Frequency 𝜔");
ylabel("Phase");
title("Phase Plot");
sgtitle("sin(𝜔_0(𝑛 − 1)), 𝜔_0 = 3𝜋/10 and N = 20");

x4 = (0.8).^n;
X4 = fft(x4,N);
f = (0:1:length(X4)-1)*(2*pi/N);
figure;
subplot(3,1,1)
stem(0:1:N-1,x4);
xlabel("Time n");
ylabel("Amplitude");
title("Given Sequence");
subplot(3,1,2);
stem(f,abs(X4));
xlabel("Frequency 𝜔");
ylabel("Magnitude");
title("Magnitude Plot");
subplot(3,1,3);
stem(f,angle(X4));
xlabel("Frequency 𝜔");
ylabel("Phase");
title("Phase Plot");
sgtitle("(0.8)^n for N = 20");

x5 = (-0.8).^n;
X5 = fft(x5,N);
f = (0:1:length(X5)-1)*(2*pi/N);
figure;
subplot(3,1,1)
stem(0:1:N-1,x5);
xlabel("Time n");
ylabel("Amplitude");
title("Given Sequence");
subplot(3,1,2);
stem(f,abs(X5));
xlabel("Frequency 𝜔");
ylabel("Magnitude");
title("Magnitude Plot");
subplot(3,1,3);
stem(f,angle(X5));
xlabel("Frequency 𝜔");
ylabel("Phase");
title("Phase Plot");
sgtitle("(−0.8)^n for N = 20");