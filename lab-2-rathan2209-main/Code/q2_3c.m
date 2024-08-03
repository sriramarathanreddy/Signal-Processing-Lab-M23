t = -150:1:150;
x = zeros(1,301);
y = zeros(1,301);

for j = 151:251
    x(j) = sin((t(j)*pi)/25);
end

y(1) = x(1);
for i = 2:301
    y(i) = x(i) - x(i-1);
end

subplot(2,1,1);
stem(t,x);
xlabel('Time');
ylabel('x[n]');
title('input Function');

subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('y[n]');
title('Finite difference of Input Function');
