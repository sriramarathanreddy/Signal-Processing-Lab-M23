function  B = myHPF(A,w0_FS,wc)
    N = (length(A)-1)/2;
    l = 0;
    for k = 1:1:N
        if(k*w0_FS < wc)
            l = k;
        end
    end
    B = [A(1:(N-l)) zeros(1,(2*l)+1) A((N+2+l):end)];
end