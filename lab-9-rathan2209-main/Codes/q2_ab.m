N = 51;
nc = (N-1)/2;
wc = pi/6;
n = 0:1:N-1;
t = 0:(2*pi)/1001:2*pi-(2*pi)/1001;

w = ones(1,N); % Rectangular Window
figure;
stem(n,w);
grid on;

hd = (1/6)*sinc(wc*(n-nc));

h = hd.*w;

H = fft(h,1001);

figure;
subplot 311;
stem(n,h);
xlabel("Time t");
ylabel("Amplitude");
title("Coefficients of h[n]");
grid on;
subplot 312;
plot(t,db(abs(H)/max(abs(H))));
ylim([-100 10]);
xlabel("frequency \omega");
ylabel("Magnitude: |H(\omega)|");
title("Magnitude Plot of 1001-DFT{h[n]}");
grid on;
subplot 313;
plot(t,angle(H));
xlabel("frequency \omega");
ylabel("Phase: \theta(\omega)");
title("Phase Plot of 1001-DFT{h[n]}");
grid on;
sgtitle("h[n] in time and frequency domain using Rectangular Window");