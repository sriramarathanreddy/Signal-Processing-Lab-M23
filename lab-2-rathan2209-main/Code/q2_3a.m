t = -100:1:100;
x = 5*[zeros(1,100) ones(1,20) zeros(1,81)];
y = zeros(1,201);
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