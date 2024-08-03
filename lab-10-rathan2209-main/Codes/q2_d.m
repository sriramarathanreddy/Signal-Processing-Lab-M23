fs = 10000;
td = 1;

N = [5 10];
f0 = [50 100 150 200];

for n = 1:1:length(N)
    for m = 1:1:length(f0)

        P = zeros(1,N(n));
        A = zeros(1,N(n));

        for k = 1:1:N(n)
            A(k) = sin(pi*k/N(n));
        end
        x1 = harmonics(A,f0(m),P,td,fs);
        sound(x1,fs);
        pause(2);
        % filename = "q2_sin_x"+n+m+".wav";
        % audiowrite(filename,x1,fs);

        for k = 1:1:N(n)
            A(k) = cos(pi*k/N(n));
        end
        x2 = harmonics(A,f0(m),P,td,fs);
        sound(x2,fs);
        pause(2);
        % filename = "q2_cos_x"+n+m+".wav";
        % audiowrite(filename,x2,fs);

        for k = 1:1:N(n)
            A(k) = k;
        end
        x2 = harmonics(A,f0(m),P,td,fs);
        sound(x2,fs);
        pause(2);
        % filename = "q2_d_k_x"+n+m+".wav";
        % audiowrite(filename,x2,fs);
    end
end

clear;
clc;