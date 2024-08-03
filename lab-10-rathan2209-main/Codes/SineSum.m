function xn = SineSum(A, F, P, td, fs)
    t = 0:1/fs:td;
    xn = zeros(1,length(t));
    N = length(A);
    for k = 1:1:N
        xn = xn+A(k)*sin((2*pi*F(k)*t)+P(k));
    end
end