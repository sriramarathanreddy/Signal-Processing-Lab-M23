t = -100:1:100;
x = zeros(1,201);
y = zeros(1,201);

for j = 101:110
    x(j) = t(j);
end
for j = 111:121
    x(j) = (20-t(j));
end

y(1) = x(1);
for i = 2:201
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