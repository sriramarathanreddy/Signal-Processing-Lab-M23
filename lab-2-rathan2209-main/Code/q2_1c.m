N = 5;
load('q1.mat');
t = 0:length(x)-1;

disp(x);

y = MASystem(N,x);

disp(y);

subplot(2,1,1);
stem(t,x);
xlabel('Time');
ylabel('Input');
title('Input signal loaded from q1.mat');

subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Ouput');
title('Moving Average');