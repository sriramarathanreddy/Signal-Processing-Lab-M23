n = -100:1:100;
wc = [pi/8 pi/4 pi/2 pi];

syms w;

for k = 1:1:length(wc)

    X = piecewise(abs(w)<wc(k),1,0);
    x = Inv_DTFT(X,n,w);

    figure;

    subplot(3,1,1);
    
    stem(n,real(x));
    xlabel("Time n");
    ylabel("Amplitude");
    title("Real Part");
    
    subplot(3,1,2);
    
    stem(n,imag(x));
    xlabel("Time n");
    ylabel("Amplitude");
    title("Imaginary Part");
    
    subplot(3,1,3);
    
    stem(n,abs(x));
    xlabel("Time n");
    ylabel("Amplitude");
    title("Magnitude");

    sgtitle(["Sinc Function: Inverse DTFT of rect function; \omega =",wc(k)]);

end