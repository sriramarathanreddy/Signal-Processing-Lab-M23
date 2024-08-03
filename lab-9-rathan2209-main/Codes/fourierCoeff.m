function F = fourierCoeff(t, xt, T, t1, t2, N)
    F = zeros(1,2*N+1);
    for nn = 1:2*N+1
        F(nn) = (1/T) * int((xt * exp(-1i * (nn - N - 1) * (2*pi / T) * t)), t, t1, t2);
    end
end
