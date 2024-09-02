clc
clear
fs = 1000;
t = (0:1/fs:2)';
%x = cos(2*pi*t*100);
% x=vco(cos(2*pi*t),[200 400],fs);
x = cos(2*pi*t*100) + vco(cos(2*pi*t),[200 400],fs);

%% STFT
figure
%[s,f1,t1]=stft(x,fs,'Window',kaiser(128,5),'OverlapLength',20,'FFTLength',512);
stft(x,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',512);
ylim([0 500]);colormap('jet');