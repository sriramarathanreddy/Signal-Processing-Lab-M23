% Genaration of Finite Length Sequences:
n = 0:1:9;
x1 = randn(1,10); %Random Gaussian sequence of length 10
x2 = [0 0 0 1 zeros(1,6)]; %first 10 samples of the signal 𝛿[𝑛 − 3] starting from n = 0

%Plotting Input Signals:
subplot(2,2,1);
stem(n,x1);
xlabel('n');
ylabel('x1[n]');
title('Random Gaussian sequence of length 10');
subplot(2,2,2);
stem(n,x2);
xlabel('n');
ylabel('x2[n]');
title('first 10 samples of the signal 𝛿[𝑛 − 3] starting from n = 0');

% Linear and circular Convolutions using inbuilt functions:
y_lin = conv(x1,x2); % Linear Convolution
n1 = 0:length(y_lin)-1;
y_cir = cconv(x1,x2); % circular Convolution
n2 = 0:length(y_cir)-1;

% plotting The Output Signals:
subplot(2,2,3);
stem(n1,y_lin);
xlabel('n');
ylabel('y_lin[n]');
title('Linear Convolution of the two input signals x1[n] and x2[n]');
subplot(2,2,4);
stem(n2,y_cir);
xlabel('n');
ylabel('y_cir[n]');
title('Circulr Convolution of the two input signals x1[n] and x2[n]');