theta = 0:0.4:pi; %8 values
r = 0.01:0.2:0.99; %5 values
for l = 1:length(r)
    for k = 1:length(theta)
        c = -2*(r(l))*cos(theta(k));
        b = [1 (-2*cos(theta(k))) 1];
        a = [1 c (r(l))^2];
        figure;
        zplane(b,a);
        title('Pole-zero plot');
        grid on;
    end
end