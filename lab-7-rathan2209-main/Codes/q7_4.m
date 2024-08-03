G1 = [0.9 0.8 0.7];
G2 = [1.2 1.4 1.6];

Bit_rate = 1411;
fprintf("\n");

% Audio File 1:
disp("FOR AUDIO FILE 1 - file_example_WAV_1MG:")
disp("Bit rate of the Signal = " + Bit_rate + "kbps");
[y1,fs1] = audioread("Audio files\file_example_WAV_1MG.wav");
fprintf("Sampling Frequency of Audiofile1 = %d Hz\n",fs1);
d1 = length(y1)/fs1;
fprintf("Duration of Audiofile1 = %f sec\n",d1);
num_bits1 = floor(Bit_rate*8*1000*(1/fs1));
fprintf("No. of bits ADC must have used while quantizing/storing these signals = %f\n",num_bits1);
num_quantization_levels1 = 2^num_bits1;
fprintf("No. of levels of Quantization this ADC can perform = %d\n",num_quantization_levels1);
% sound(y1,fs1);
% pause(6);
% for k = 1:length(G1)
%     sound(y1,G1(k)*fs1);
%     pause(10);
% end
% for k = 1:length(G2)
%     sound(y1,G2(k)*fs1);
%     pause(6);
% end
fprintf("\n");

% Audio File 2:
disp("FOR AUDIO FILE 2 - file_example_WAV_2MG:")
disp("Bit rate of the Signal = " + Bit_rate + "kbps");
[y2,fs2] = audioread("Audio files\file_example_WAV_2MG.wav");
fprintf("Sampling Frequency of Audiofile2 = %d Hz\n",fs2);
d2 = length(y2)/fs2;
fprintf("Duration of Audiofile2 = %f sec\n",d2);
num_bits2 = floor(Bit_rate*8*1000*(1/fs2));
fprintf("No. of bits ADC must have used while quantizing/storing these signals = %f\n",num_bits2);
num_quantization_levels2 = 2^num_bits2;
fprintf("No. of levels of Quantization this ADC can perform = %d\n",num_quantization_levels2);
sound(y2,fs2);
pause(12);
for k = 1:length(G1)
    sound(y2,G1(k)*fs2);
    pause(16);
end
for k = 1:length(G2)
    sound(y2,G2(k)*fs2);
    pause(12);
end
fprintf("\n");

% Audio File 3:
disp("FOR AUDIO FILE 3 - file_example_WAV_5MG:")
disp("Bit rate of the Signal = " + Bit_rate + "kbps");
[y3,fs3] = audioread("Audio files\file_example_WAV_5MG.wav");
fprintf("Sampling Frequency of Audiofile3 = %d Hz\n",fs3);
d3 = length(y3)/fs3;
fprintf("Duration of Audiofile3 = %f sec\n",d3);
num_bits3 = floor(Bit_rate*8*1000*(1/fs3));
fprintf("No. of bits ADC must have used while quantizing/storing these signals = %f\n",num_bits3);
num_quantization_levels3 = 2^num_bits3;
fprintf("No. of levels of Quantization this ADC can perform = %d\n",num_quantization_levels3);
% sound(y3,fs3);
% pause(30);
% for k = 1:length(G1)
%     sound(y3,G1(k)*fs3);
%     pause(40);
% end
% for k = 1:length(G2)
%     sound(y3,G2(k)*fs3);
%     pause(30);
% end
fprintf("\n");

% Audio File 4:
disp("FOR AUDIO FILE 4 - file_example_WAV_10MG:")
disp("Bit rate of the Signal = " + Bit_rate + "kbps");
[y4,fs4] = audioread("Audio files\file_example_WAV_10MG.wav");
fprintf("Sampling Frequency of Audiofile4 = %d Hz\n",fs4);
d4 = length(y4)/fs4;
fprintf("Duration of Audiofile4 = %f sec\n",d4);
num_bits4 = floor(Bit_rate*8*1000*(1/fs4));
fprintf("No. of bits ADC must have used while quantizing/storing these signals = %f\n",num_bits4);
num_quantization_levels4 = 2^num_bits4;
fprintf("No. of levels of Quantization this ADC can perform = %d\n",num_quantization_levels4);
% sound(y4,fs4);
% pause(60);
% for k = 1:length(G1)
%     sound(y4,G1(k)*fs4);
%     pause(70);
% end
% for k = 1:length(G2)
%     sound(y4,G2(k)*fs4);
%     pause(60);
% end


% Obsrvations :
% - When the Sampling frequency is changed, the duration of the audio signal changes.
% - The sampling frequency is increased ⇒ Duration decreases
% - The sampling frequency is decreased ⇒ Duration increases
% - i.e., the Signal is scaled by changing the Sampling Frequency
% - The time scaling Property of Fourier transformation is observed here.
% - if FT{f(t)} = F(w)
%   then FT{f(a*t)} = (1/a)*F(w/|a|) 
%   is the time scaling property.