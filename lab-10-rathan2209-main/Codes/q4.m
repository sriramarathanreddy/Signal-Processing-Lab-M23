N = 5;
A = zeros(1,N);
for k = 1:1:N
    A(k) = 1/k^2;
end
P = zeros(1,N);
adsr = [0.2 0.2 0.7 0.4 0.2];
fs = 10000;

F_notes1 = 50:5:100;
td_notes1 = ones(1,length(F_notes1));
y1 = my_synthesizer(A,F_notes1,P,adsr,td_notes1,fs);
audiowrite("q4a.wav",y1,fs);

F_notes2 = 100:-10:40;
td_notes2 = ones(1,length(F_notes2));
y2 = my_synthesizer(A,F_notes2,P,adsr,td_notes2,fs);
audiowrite("q4b.wav",y1,fs);

M = 5;
F_notes3 = 50*(1+rand(1,M));
td_notes3 = 0.5+rand(1,M);
y3 = my_synthesizer(A,F_notes3,P,adsr,td_notes3,fs);
sound(y3,fs);
audiowrite("q4c.wav",y1,fs);

A1 = zeros(1,10);
P1 = zeros(1,10);
for k = 1:1:10
    A1(k) = k^5;
end
F_notes = [261.63 293.66 329.63 349.23 392.00];
adsr = [0.1 0.2 0.5 0.2 0.1];
td_notes = [1 1 1 1 1];
fs1 = 44100;
y = my_synthesizer(A1,F_notes,P1,adsr,td_notes,fs1);
sound(y,fs1);
