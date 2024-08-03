N = 5;
load('q1.mat');

t = 0:length(x)-1;

subplot(2,2,3);
stem(t,x);
xlabel('Time');
ylabel('Input Signal');
title('Signal loaded from q2 _ 1.mat');

dt = [zeros(1,50) 1 zeros(1,50)];
disp(dt);

subplot(2,2,1);
stem(t,dt);
xlabel('Time');
ylabel('delta function');

y = MASystem(N,dt); % y is the impulse response of Moving Average System
disp(y);

subplot(2,2,2);
stem(t,y);
xlabel('Time');
ylabel('Ouput');
title('Impulse Response of Moving Average');

ConvulutedSignal = conv(x,y);
disp(ConvulutedSignal);

subplot(2,2,4);
stem(-50:150,ConvulutedSignal);
xlabel('Time');
ylabel('Ouput');
title('Moving Average of input signal');