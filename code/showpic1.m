load WaterData.mat
fs = 32000;
t = (0:1/fs:2-1/fs)';
x1=Xtrain(:,20);
x2=Xtrain(:,920);
x3=Xtrain(:,1820);
x4=Xtrain(:,2510);
%% STFT
figure
subplot(2,2,1)
stft(x1,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',256);
ylim([0 10]);colormap('jet');
subplot(2,2,2)
stft(x2,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',512);
ylim([0 10]);colormap('jet');
subplot(2,2,3)
stft(x3,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',512);
ylim([0 10]);colormap('jet');
subplot(2,2,4)
stft(x4,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',512);
ylim([0 10]);colormap('jet');