% Function to find FS coefficients
function F = fourierCoeff(t, xt, T, t1, t2, N)
    % Initialize
    w0 = 2*pi / T;
    F = zeros(2*N+1, 1);
    % For-loop to find coefficients
    for nn = 1:2*N+1
        k = nn - N - 1;
        expr = xt * exp(-1i * k * w0 * t);
        F(nn) = (1/T) * int(expr, t, t1, t2);
    end
end
