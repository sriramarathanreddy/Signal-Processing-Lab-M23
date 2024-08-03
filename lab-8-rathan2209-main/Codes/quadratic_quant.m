function y = quadratic_quant(x,B,a)
    L = 2^(B-1);
    r = linspace(0,1,L+1);
    r = r.^2;
    r = [-fliplr(r),r(2:end)];
    y = zeros(size(x));
    
    for i=1:length(x)
        if x(i)>=a*r(end)
            y(i) = (a*(r(end-1)+r(end)))/2;
        elseif x(i)<a*r(1)
            y(i) = -a;
        else
            for j=2:length(r)
                if x(i)>=a*r(j-1) && x(i)<a*r(j)
                    y(i) = (a*(r(j-1)+r(j)))/2;
                    break;
                end
            end
        end
    end
end