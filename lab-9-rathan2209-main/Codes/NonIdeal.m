function  B = NonIdeal(A,w0_FS,G,a)
    N = (length(A)-1)/2;
    H = zeros(1,length(A));
    for k = -N:1:N
        H(k+N+1) = G/(a+1j*(k*w0_FS));
    end
    B = A.*H;
end