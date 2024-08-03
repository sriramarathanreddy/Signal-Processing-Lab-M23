function X = continuousFT(t, xt, a, b, w)
    X = zeros(size(w));
    for i = 1:length(w)
        X(i) = int(xt*exp(-1j*w(i)*t), t, a, b);
    end
end