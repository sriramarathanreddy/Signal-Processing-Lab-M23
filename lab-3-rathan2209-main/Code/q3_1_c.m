n = -5:1:5;
x = (-1).^n;

t1 = -3:1:1;
h = [ones(1,5)];

y = conv(x,h);
t2 = (n(1)+t1(1)):1:(length(y)+(n(1)+t1(1))-1);

subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel('x[n]');
title('Input Signal 1');

subplot(3,1,2);
stem(t1,h);
xlabel('n');
ylabel('h[n]');
title('Input Signal 2');

subplot(3,1,3);
stem(t2,y);
xlabel('n');
ylabel('y[n] = x[n]*h[n]');
title('Convolution of the two input signals x[n] and h[n]');