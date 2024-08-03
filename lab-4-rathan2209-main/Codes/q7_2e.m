p = 0.5;
b = [1 -p^(-1)];
a = [1 -p];
figure;
zplane(b,a);
title('Pole-zero plot');
grid on;
figure;
n = 1001;
freqz(b,a,n,"whole");
figure;
impz(b,a);
grid on;