N = 5;
t = -50:1:50;
ut = [zeros(1,50) 1 ones(1,50)];

disp(ut);

y = MASystem(N,ut);

disp(y);

subplot(2,1,1);
stem(t,ut);
xlabel('Time');
ylabel('Input');

subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Ouput');
title('Moving Average');
