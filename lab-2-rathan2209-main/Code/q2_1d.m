N_Array = [2 6 11 16 20];
load('q1.mat');
t = 0:length(x)-1;

subplot(2,3,1)
stem(t,x);
xlabel('Time');
ylabel('InputData');
title('Input Function');

for l = 1:length(N_Array)
    y = MASystem(N_Array(l),x);
    subplot(2,3,l+1)
    stem(t,y);
    xlabel('Time');
    ylabel('Ouput');
    title('Moving Average');
end
