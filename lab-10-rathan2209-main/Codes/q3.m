fs = 10000;
td = 1;

N1 = 5;
P = zeros(1,N1);
A = zeros(1,N1);
f01 = 50;
for k = 1:1:N1
    A(k) = 1/k;
end
x1 = harmonics(A,f01,P,td,fs);

[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs);

figure;
subplot 311;
plot(t_env,x1);
xlabel("Time t");
ylabel("Amplitude");
title("Given Signal");
subplot 312;
plot(t_env,env);
xlabel("Time t");
ylabel("Amplitude");
title("Shape of Envelope");
subplot 313;
plot(t_env,x1.*env);
xlabel("Time t");
ylabel("Amplitude");
title("Enveloped Signal");
sgtitle("Enveloping a Given Signal");