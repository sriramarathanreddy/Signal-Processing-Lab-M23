n = 0:1:1000;

v = randn(1,length(n));
s = 5*sin(pi/200*n);
x = v+s;

M = [5 21 51];

for k = 1:length(M)
    h = ones(1,M(k));
    y = conv(x,h,"full");
    y = y/M(k);
    subplot(3,1,k);
    n1 = 0:1:(999+M(k));
    plot(n,s,"b",n1,y,"r");
    xlabel("Time n");
    ylabel("Amplitude");
    title(sprintf("Plot for M = %d",M(k)));
    legend("Sine Wave","Output of Filter");
end
sgtitle("Sine Wave and Its Output from the Moving average filter for different values of M");