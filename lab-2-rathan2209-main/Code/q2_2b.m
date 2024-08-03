M = 2;
load('q2_2.mat');

subplot(3,1,1);
t = 0:1:length(x)-1;
stem(t,x);
xlabel('time');
ylabel('x[n]');
title('Input Signal');

y1 = UpSampler(M,x);
t1 = 0:1:(M*length(x))-1;
subplot(3,1,2);
stem(t1,y1,"r");
xlabel('time');
ylabel('y1[n]');
title('Zero Order Hold');

y2 = interp1(M:M:M*length(x),x,t1);
subplot(3,1,3);
stem(t1,y2);
xlabel('time');
ylabel('y2[n]');
title('Linear interpolation');

clear x;