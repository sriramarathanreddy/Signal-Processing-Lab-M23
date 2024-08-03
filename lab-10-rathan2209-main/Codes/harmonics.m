function xn = harmonics(A, f0, P, td, fs)
    t = 0:1/fs:td;
    xn = zeros(1,length(t));
    N = length(A);
    for k = 1:1:N
        xn = xn+A(k)*sin((2*pi*k*f0*t)+P(k));
    end
end