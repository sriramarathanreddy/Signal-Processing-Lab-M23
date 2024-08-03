function  y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
y = [];
    for k = 1:1:length(F_notes)
        adsr = adsr*td_notes(k);
        [t,env] = envelope(adsr(1),adsr(2),adsr(4),adsr(4),adsr(5),fs);
        xt = harmonics(A,F_notes(k),P,td_notes(k),fs);
        l = min(length(xt),length(env));
        xte = xt(1:1:l).*env(1:1:l);
        y = [y,xte];
    end
end