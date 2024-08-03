n = 0:100;
b = [0.01 0.5 0.99];

N0 = 1;
w = -10:0.01:10;

for k = 1:length(b)
    x1 = b(k).^n;
    x2 = (-b(k)).^n;

    X1 = DT_Fourier(x1,N0,w);
    X2 = DT_Fourier(x2,N0,w);

    figure;
    subplot(2,2,1);
    stem(n,x1);
    xlabel("Time [n]");
    ylabel("a^n.u[n]");
    title(["Signal for a = ",b(k)]);
    subplot(2,2,2);
    stem(n,x2);
    xlabel("Time [n]");
    ylabel("(-a)^n.u[n]");
    title(["signal for a = ",-b(k)]);
    subplot(2,2,3);
    plot(w,abs(X1));
    xlabel("frequency");
    ylabel("magnitude");
    title(["Magnitude plot of DTFT for a = ",b(k)]);
    subplot(2,2,4);
    plot(w,abs(X2));
    xlabel("frequency");
    ylabel("magnitude");
    title(["Magnitude plot of DTFT for a = ",-b(k)]);
    sgtitle(sprintf(" DTFT for the signal 𝑎^n.u[n] for a = +- b where b = %d",b(k)));
end


