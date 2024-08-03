n = 0:1:1000;
N0 = 1;
w = -10:0.01:10;

v = randn(1,length(n));
s = 5*sin(pi/200*n);
x = v+s;

M = [5 21 51];

for k = 1:length(M)
    h = ones(1,M(k));
    y = conv(x,h,"full");
    y = y/M(k);
    X = DT_Fourier(x,N0,w);
    Y = DT_Fourier(y,N0,w);
    figure;
    subplot(2,2,1);
    plot(n,x);
    xlabel("Time n");
    ylabel("Amplitude");
    title("Noise corrupted Sine Wave");
    subplot(2,2,2);
    n1 = 0:1:(999+M(k));
    plot(n1,y);
    xlabel("Time n");
    ylabel("Amplitude");
    title("Filtered Sine Wave using Moving Average Filter");
    subplot(2,2,3);
    plot(w,abs(X));
    xlabel("Frequency");
    ylabel("Amplitude");
    title("DTFT of Noise corrupted Sine Wave");
    subplot(2,2,4);
    plot(w,abs(Y));
    xlabel("Frequency");
    ylabel("Amplitude");
    title("DTFT of Filtered Sine Wave using Moving Average Filter");
    sgtitle(["DTFT of the noisy and the filtered signals for M = ",M(k)]);
end