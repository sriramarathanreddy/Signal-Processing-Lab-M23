function X = radix2fft(x)
    N = length(x);
    if N == 1
            X = x;
    elseif N == 2
        X(1) = x(1)+x(2);
        X(2) = x(1)-x(2);
    else
        xe = radix2fft(x(1:2:N));
        xo = radix2fft(x(2:2:N));
        W = exp(-1j*2*pi/N).^(0:N/2-1);
        X = [xe + W.*xo, xe - W.*xo];
    end
end
