f0 = 12;
fs = 64;
L = [16 32 64 128];
N = 8*L;
figure;
for k = 1:1:length(L)
    n = 0:1:L(k)-1;
    p = cos(2*pi*f0*n/fs);

    X = fft(p,N(k));
    f = (0:1:length(X)-1)*(2*pi/N(k));
    subplot(2,2,k);
    stem(f,abs(X));
    xlabel("frequency");
    ylabel("Amplitude");
    title(sprintf("DFT of  x[n] for L = %d, N = %d",L(k),N(k)));
end
sgtitle("DFT for L = 16, 32, 64, 128 and N = 8L");
figure;
for k = 1:1:length(L)
    n = 0:1:L(k)-1;
    p = cos(2*pi*f0*n/fs);

    X = fft(p,N(k));
    f = (0:1:length(X)-1)*(2*pi/N(k));
    subplot(2,2,k);
    plot(f,abs(X));
    xlabel("frequency");
    ylabel("Amplitude");
    title(sprintf("DFT of  x[n] for L = %d, N = %d",L(k),N(k)));
end
sgtitle("DFT for L = 16, 32, 64, 128 and N = 8L");