f = 0.05;
n1 = 0:1:20;
x1 = sin(2*pi*f*n1);

n2 = -18:1:14;
x2 = (-1).^n2;

y = conv(x1,x2);
t = (n1(1)+n2(1)):1:(length(y)+(n1(1)+n2(1))-1);

subplot(3,1,1);
stem(n1,x1);
xlabel('n');
ylabel('x1[n]');
title('Input Signal 1');

subplot(3,1,2);
stem(n2,x2);
xlabel('n');
ylabel('x2[n]');
title('Input Signal 2');

subplot(3,1,3);
stem(t,y);
xlabel('n');
ylabel('y[n]');
title('Convolution of the two input signals');