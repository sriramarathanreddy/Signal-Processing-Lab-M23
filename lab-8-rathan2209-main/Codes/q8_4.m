[y,fs] = audioread("file_example_WAV_5MG.wav");
t = 1:fs:(length(y)/fs);
B = 3;
a = 1;
yq = quadratic_quant(y,B,a);

sound(y);
pause(2);
sound(yq);
pause(2);

b = 1:1:8;
for k = 1:1:length(b)
    yq = quadratic_quant(y,b(k),a);
    sound(yq);
    pause(2);
end