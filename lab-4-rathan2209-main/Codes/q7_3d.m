theta =pi/3;
r = 0.1:0.1:0.9;
for l = 1:length(r)
    c = -2*(r(l))*cos(theta);
    b = [1 (-2*cos(theta)) 1];
    a = [1 c (r(l))^2];
    figure;
    n = 1001;
    freqz(b,a,n,"whole");
    title(["\theta = 𝛑/3, radius:",r(l)]);
end