p = [-0.8 0.1];
for k = 1:length(p)
    b = 1;
    a = [1 p(k)];
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
end