theta =[ 0 pi/6 pi/4 pi/3 pi/2 2*pi/3 pi];
r = 0.95;
for k = 1:length(theta)
        c = -2*r*cos(theta(k));
        b = [1 (-2*cos(theta(k))) 1];
        a = [1 c r^2];
        figure;
        n = 1001;
        freqz(b,a,n,"whole");
        title(["radius:0.95, \theta:",theta(k)]);
end