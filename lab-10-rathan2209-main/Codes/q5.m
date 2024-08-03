clear;
f = [2400 4000 12000 24000 ];
a = arduino('COM5','Uno','Libraries','Servo');
for k = 1:length(f)
    playTone(a,"D5",f(k),5);
    pause(5.1);
    clear;
end