load WaterData.mat
fs = 32000;
t = (0:1/fs:2-1/fs)';
% x1=Xtrain(:,20);
% x2=Xtrain(:,920);
% x3=Xtrain(:,1820);
% x4=Xtrain(:,2510);
for i = 1:10
    x1 = Xtrain(:,i)
    figure
    stft(x1,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',256);
    ylim([0 10]);colormap('jet');
    fig(i) = figure(i);
    picturename = strcat('type1 P',num2str(i),'.jpg');
    cd('e:\A\1')
    saveas(fig(i),picturename,'jpg')
end
% for i = 631:1260
%     count = count+1;
%     x1 = Xtrain(:,i)
%     figure
%     stft(x1,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',256);
%     ylim([0 10]);colormap('jet');
%     fig(i) = figure(i);
%     picturename = strcat('type1 P',num2str(i),'.jpg');
%     cd('e:\A\2')
%     saveas(fig(i),picturename,'jpg')
%     close all
% end
% for i = 1621:1890
%     count = count+1;
%     x1 = Xtrain(:,i)
%     figure
%     stft(x1,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',256);
%     ylim([0 10]);colormap('jet');
%     fig(i) = figure(i);
%     picturename = strcat('type1 P',num2str(i),'.jpg');
%     cd('e:\A\3')
%     saveas(fig(i),picturename,'jpg')
%     close all
% end
% for i = 1891:2520
%     count = count+1;
%     x1 = Xtrain(:,i)
%     figure
%     stft(x1,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',256);
%     ylim([0 10]);colormap('jet');
%     fig(i) = figure(i);
%     picturename = strcat('type1 P',num2str(i),'.jpg');
%     cd('e:\A\4')
%     saveas(fig(i),picturename,'jpg')
%     close all
% end
%% STFT
% figure
% subplot(2,2,1)
% stft(x1,fs,'Window',kaiser(128,5),'OverlapLength',108,'FFTLength',256);
% ylim([0 10]);colormap('jet');