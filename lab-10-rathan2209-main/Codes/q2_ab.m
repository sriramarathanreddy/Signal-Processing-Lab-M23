fs = 10000;
td = 1;
t = 0:1/fs:td;
N1 = 5;
P = zeros(1,N1);
A = zeros(1,N1);
f01 = 50;
for k = 1:1:N1
    A(k) = 1/k;
end
x1 = harmonics(A,f01,P,td,fs);
sound(x1,fs);
pause(2);
% audiowrite("q2_x1.wav",x1,fs);

N2 = 50;
P = zeros(1,N2);
A = zeros(1,N2);
f02 = 50;
for k = 1:1:N2
    A(k) = 1/(k^2);
end
x2 = harmonics(A,f02,P,td,fs);
sound(x2,fs);
pause(2);
% audiowrite("q2_x2.wav",x1,fs);

figure;
subplot 211;
plot(t,x1);
grid on;
xlabel("Time t");
ylabel("Amplitude");
title("Signal:x1[n]");
subplot 212;
plot(t,x2);
grid on;
xlabel("Time t");
ylabel("Amplitude");
title("Signal:x2[n]");
sgtitle("Generated Harmonics");