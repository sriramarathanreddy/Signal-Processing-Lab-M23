 function y = MASystem(N,InputData)
    y = zeros(size(InputData));
    sum = 0;
    for n = 1:N
       sum = sum + InputData(n);
    end
    for n = N+1:length(InputData)
        sum = sum - InputData(n-N) + InputData(n);
        y(n) = sum;
    end
    y = y/n;
end