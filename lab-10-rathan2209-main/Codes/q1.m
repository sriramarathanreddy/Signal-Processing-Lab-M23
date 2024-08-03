
A = [0.5 0.5];
P = [0 0];
fs = 10000;

F1 = [350 440];
td1 = 4;
t1 = 0:1/fs:td1;
x1 = SineSum(A,F1,P,td1,fs);
sound(x1,fs); 
pause(4.1);
% audiowrite("q1_x1.wav",x1,fs);

F2 = [480 620];
td2 = 0.5;
b1 = SineSum(A,F2,P,td2,fs);
z1 = zeros(1,length(b1));
t2 = 0:1/fs:(8*(td2+1/fs)-1/fs);
x2 = [b1 z1 b1 z1 b1 z1 b1 z1];
sound(x2,fs);
pause(4.1);
% audiowrite("q1_x2.wav",x1,fs);

F3 = [440 480];
td3 = 2;
b2 = SineSum(A,F3,P,td3,fs);
z2 = zeros(1,length(b2));
t3 = 0:1/fs:(8*(td3+1/fs)-1/fs);
x3 = [b2 z2 b2 z2 b2 z2 b2 z2];
sound(x3,fs);
% audiowrite("q1_x3.wav",x1,fs);

figure;
subplot 311;
plot(t1(1:500),x1(1:500));
grid on;
xlabel("Time t");
ylabel("Amplitude");
title("Signal:x1[n]");
subplot 312;
plot(t2(1:500),x2(1:500));
grid on;
xlabel("Time t");
ylabel("Amplitude");
title("Signal:x2[n]");
subplot 313;
plot(t3(1:500),x3(1:500));
grid on;
xlabel("Time t");
ylabel("Amplitude");
title("Signal:x3[n]");
sgtitle("Generated Signals");