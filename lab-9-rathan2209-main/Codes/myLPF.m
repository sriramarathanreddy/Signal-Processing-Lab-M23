function  B = myLPF(A,w0_FS,wc)
    N = (length(A)-1)/2;
    l = 0;
    for k = 1:1:N
        if(k*w0_FS <= wc)
            l = k;
        end
    end
    B = A((N+1-l):(N+1+l));
end