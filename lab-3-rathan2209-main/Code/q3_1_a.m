t = 0:1:9;
x = rand(1,10);

n1 = 0:1:9;
h1 = ones(1,length(n1));
n2 = -4:1:5;
h2 = ones(1,length(n2));

y1 = convolution(x,h1);
t1 = (t(1)+n1(1)):1:(length(y1)+(t(1)+n1(1))-1);
y2 = convolution(x,h2);
t2 = (t(1)+n2(1)):1:(length(y2)+(t(1)+n2(1))-1);

subplot(3,1,1);
stem(t,x);
xlabel('n');
ylabel('x[n]');
title('Randomly generated Signal');

subplot(3,1,2);
stem(t1,y1);
xlabel('n');
ylabel('y1[n]');
title('Convolution of Randomly generated Signal with unit pulse sequence starting at n = 0 to n = 9');

subplot(3,1,3);
stem(t2,y2);
xlabel('n');
ylabel('y2[n]');
title('Convolution of Randomly generated Signal with unit pulse sequence starting at n = -4 to n = 5');