n = 0:1:3;
x = [ones(1,4)];

x1 = conv(x,x);
n1 = 0:length(x1)-1;

x2 = conv(x,x1);
n2 = 0:length(x2)-1;

x3 = conv(x,x2);
n3 = 0:length(x3)-1;

x4 = conv(x,x3);
n4 = 0:length(x4)-1;

subplot(2,2,1);
stem(n1,x1);
xlabel('n');
ylabel('x1[n]');
title('x[n]*x[n]');

subplot(2,2,2);
stem(n2,x2);
xlabel('n');
ylabel('x2[n]');
title('x[n]*x1[n]');

subplot(2,2,3);
stem(n3,x3);
xlabel('n');
ylabel('x3[n]');
title('x[n]*x2[n]');

subplot(2,2,4);
stem(n4,x4);
xlabel('n');
ylabel('x4[n]');
title('x[n]*x3[n]');