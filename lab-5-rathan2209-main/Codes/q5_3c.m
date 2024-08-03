n = -100:1:100;

% w1 = [pi/8 pi/3 pi/2];
% w2 = [pi/4 pi/6 pi];

w1 = pi/8;
w2 = pi/4;

syms w;

for k = 1:1:length(w2)
    X = piecewise((w1(k) < abs(w) < w2(k)),1,0);
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

    sgtitle(sprintf("Inverse DTFT of Band Pass Signal:\omega_1 = %d, \omega_2 = %d",w1(k),w2(k)));

end