w0 = pi/4;
r0 = [0.5 0.99];
for k = 1:1:length(r0)
    b0 = ((1-r0(k)*exp(1j*w0))*(1-r0(k)*exp(-1j*w0)))/((1-exp(1j*w0))*(1-exp(-1j*w0)));
    N = 2001;
   
    b = b0*[1 -2*cos(w0) 1];
    a = [1 -2*r0(k)*cos(w0) r0(k)^2];
    
    [h,w] = freqz(b,a,"whole",N);
    
    figure;
    plot(w,20*log10(abs(h)),w,angle(h));
    grid on;
    legend("Magnitude Plot","Phase plot");
    
    figure;
    zplane(b,a);
    grid on;
    
    fvtool(b,a);
end