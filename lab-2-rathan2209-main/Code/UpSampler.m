function y = UpSampler(M,x)
    y = zeros(1,M*length(x));
    y(1)=x(1);
    for n = 2:M*length(x)
        val = n/M;
        if val == floor(val)
            y(n-(M-1)) = x(val);
        end
    end
end