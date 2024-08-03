f0 = 10;
Fs = 5000;
t = 0:1/Fs:1;
x = sin(2*pi*f0*t);
B = 4;
a = 1;
xq = quadratic_quant(x,B,a);
e = x-xq;

figure;
subplot(3,1,1);
plot(t,x);
grid on;
xlabel("time t");
ylabel("Amplitude");
title("Sampled Signal");
subplot(3,1,2);
plot(t,xq);
grid on;
xlabel("time t");
ylabel("Amplitude");
title("Quantised Signal");
subplot(3,1,3);
plot(t,e);
grid on;
xlabel("time t");
ylabel("Amplitude");
title("Quantization Error");
sgtitle("Quantisation of Given Signal");

figure;
histogram(e,15);
grid on;
xlabel("time t");
ylabel("Amplitude");
title("Histogram for Quantization Error for B = 4");

xq1 = quadratic_quant(x,3,a);
e1 = x-xq1;
figure;
histogram(e1,15);
grid on;
xlabel("time t");
ylabel("Amplitude");
title("Histogram for Quantization Error for B = 3");

figure;
b = 1:1:8;
y = zeros(1,length(b));
sqnr = zeros(1,length(b));
for k = 1:1:length(b)
    xq = quadratic_quant(x,b(k),a);
    subplot(4,2,k);
    plot(t,xq);
    xlabel("Time t");
    ylabel("Amplitude");
    title("Quantized Signal for B = " + k);
    grid on;
    e = x-xq;
    y(k) = max(e);
    s1 = sum(x.^2);
    s2 = sum(e.^2);
    sqnr(k) = s1/s2;
end
sgtitle("Different Levels of Quantization of Signal");

figure;
hold on;
stem(b,y);
plot(b,y,"b");
hold off;
grid on;
xlabel("B");
ylabel("Max Quantization Error");
title("Maximum Absolute Quantization Error v/s B");

figure;
hold on;
stem(b,sqnr);
plot(b,sqnr,"b");
hold off;
grid on;
xlabel("B");
ylabel("SQNR");
title("signal to Quantization Noise v/s B");