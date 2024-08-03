t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine)+sin(10*pi*t_fine);
figure;
plot(t_fine,xt);
xlabel("Time t");
ylabel("Amplitude");
title("Original Signal:cos(5\pit)+sin(10\pit)");

Ts = 0.1;

t_samples = 0:Ts:2;
xn = cos(5*pi*t_samples)+sin(10*pi*t_samples);
figure;
stem(t_samples,xn);
xlabel("Time t");
ylabel("Amplitude");
title("Sampled Signal:cos(5\pit)+sin(10\pit)");