N = 51;
nc = (N-1)/2;
wc = pi/6;
n_filter = 0:1:N-1;
n = 0:1:200;

hd = (1/6)*sinc(wc*(n_filter-nc));
wr = ones(1,N);
wb = transpose(blackman(N));

h1 = hd.*wr;
h2 = hd.*wb;

x = cos(n*pi/16)+0.25*sin(n*pi/16);

y1 = conv(x,h1,"full");
y2 = conv(x,h2,"full");
t = 0:1:length(n_filter)+length(n)-2;

figure;
subplot 311
plot(n,x);
xlabel("Time  t");
ylabel("Amplitude");
title("Input Signal");
grid on;
subplot 312;
plot(t,y1);
xlabel("Time  t");
ylabel("Amplitude");
title("Filter OutPut using Rectangular Window");
grid on;
subplot 313;
plot(t,y2);
xlabel("Time  t");
ylabel("Amplitude");
title("Filter OutPut using Blackman Window");
grid on;

x1 = cos(n*pi/16)+0.25*randn(1,201);

Y1 = conv(x1,h1,"full");
Y2 = conv(x1,h2,"full");

figure;
subplot 311
plot(n,x1);
xlabel("Time  t");
ylabel("Amplitude");
title("Input Signal");
grid on;
subplot 312;
plot(t,Y1);
xlabel("Time  t");
ylabel("Amplitude");
title("Filter OutPut using Rectangular Window");
grid on;
subplot 313;
plot(t,Y2);
xlabel("Time  t");
ylabel("Amplitude");
title("Filter OutPut using Blackman Window");
grid on;