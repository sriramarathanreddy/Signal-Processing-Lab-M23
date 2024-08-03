alpha = -1.5;
beta = 0.55;
a = [1,alpha,beta];
b = ones(1,1);
n = 0:100;
h = impz(b,a,n);

stem(n,h);
xlabel('n');
ylabel('h[n]');
title('Impulse Response of Second Order feedback System');