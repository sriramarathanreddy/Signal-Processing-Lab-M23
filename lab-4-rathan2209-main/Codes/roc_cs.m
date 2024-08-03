function [N,ROC,C,S] = roc_cs(p)
    p = abs(p);
    p = unique(p,"sorted");
    if p(1) == 0
        N = length(p);
    else
        N = length(p)+1;
    end
    if p(1) == 0 && N == 1
        ROC(1,1) = 0;
        ROC(1,2) = Inf;
        C = 1;
        S = 1;
    else
         ROC = zeros(N,2);
        C = zeros(N,1);
        S = zeros(N,1);
        for k = 1:1:N
            if k == N
                if p(1) ~= 0
                    ROC(k,1) = p(k-1);
                    ROC(k,2) = Inf;
                elseif p(1) == 0
                    ROC(k,1) = p(k);
                    ROC(k,2) = Inf;
                end
                if ROC(k,1) < 1
                    S(k) = 1;
                end
            elseif  k==1
                if p(1) ~= 0
                    ROC(k,2) = p(k);
                elseif p(1) == 0
                    ROC(k,2) = p(k+1);
                end
                if ROC(k,2) > 1
                    S(k) = 1;
                end
            else
                if p(1) ~= 0
                    ROC(k,1) = p(k-1);
                    ROC(k,2) = p(k);
                elseif p(1) == 0
                    ROC(k,1) = p(k);
                    ROC(k,2) = p(k+1);
                end
                    if (ROC(k,1)<1) && (1<ROC(k,2))
                        S(k) = 1;
                    end
            end
            C(N) = 1;
        end
    end
end