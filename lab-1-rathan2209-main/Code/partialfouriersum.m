 function y = partialfouriersum(A, T, time_grid)
    % Compute N based on the length of A
    N = (length(A) - 1) / 2;
    y = zeros(size(time_grid));
    for k = -N:N
        wk = 2*pi*k/T;
        expr = A(k + N + 1) * exp(1i * wk * time_grid);
        y = y + expr;
    end
end