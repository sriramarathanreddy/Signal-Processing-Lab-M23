function x = Inv_DTFT(X,n,w)
    x = zeros(1,length(n));
    for k = 1:1:length(n)
        x = (1/(2*pi))*int(X*exp(1j*w*(n-101)),w,-pi,pi);
    end
end