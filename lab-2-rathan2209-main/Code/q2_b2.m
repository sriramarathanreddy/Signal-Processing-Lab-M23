M = 2;
load('q2_2.mat');

subplot(3,1,1);
t = 0:1:length(x)-1;
stem(t,x);

y1 = UpSampler(M,x);
t1 = 0:1:(M*length(x))-1;
subplot(3,1,2);
stem(t1,y1,"r");

y2 = interp1(M:M:M*length(x),x,t1);
subplot(3,1,3);
stem(t1,y2);