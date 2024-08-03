function xr = sinc_recon(n,xn,Ts,t_fine)
    ws = 2*(pi/Ts);
    wc = ws/2;
    xr = zeros(size(t_fine));
    s = zeros(size(t_fine));
    for t = 1:1:length(t_fine)
        for k = 1:1:length(n)
            if (wc*(t_fine(t) - n(k)*Ts)) == 0
                s(t) = 1;
            else
                s(t) = (sin(wc*(t_fine(t) - n(k)*Ts))/(wc*(t_fine(t) - n(k)*Ts)));
            end
            % s(t) = sinc((wc/pi)*(t_fine(t) - n(k)*Ts));
            xr(t) = xr(t)+(Ts*xn(k)*(wc/pi)*s(t));
        end
    end
end