b = 1;
a = [1 -0.5 0.2 -0.1 0.007 0.14 0.15];
figure;
n = 1001;
freqz(b,a,n,"whole");
figure;
zplane(b,a);
title('Pole-zero plot');
grid on;