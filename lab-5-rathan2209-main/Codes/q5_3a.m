n = -100:1:100;
wc = pi/16;

syms w;

X = piecewise(abs(w)<wc,1,0);
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

sgtitle("Sinc Function: Inverse DTFT of rect function; \omega = 𝜋/16");