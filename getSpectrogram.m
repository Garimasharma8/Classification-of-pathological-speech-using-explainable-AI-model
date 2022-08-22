function [image] = getSpectrogram(audio)
%GETSPECTROGRAM Summary of this function goes here
%   Detailed explanation goes here


% get a section of the sound file
[x, fs] = audioread(audio);   % load an audio file
x = x(:, 1);                        % get the first channel
N = length(x);                      % signal length
% t = (0:N-1)/fs;                     % time vector

% plot the signal spectrogram
figure
win = 256; % window length in samples
% number of samples between overlapping windows:
%notes for me
%1.Larger Window Size value increases frequency resolution
%2.Smaller Window Size value increases time resolution
%3.Specify a Frequency Range to be calculated for using the Goertzel function
%4.Specify which axis to put frequency
hop = win/2;           
nfft = win; % width of each frequency bin 
spectrogram(x,win,hop,nfft,fs,'yaxis')
% change the tick labels of the graph from scientific notation to floating point: 


%Comment the section below to get colooooobar and axes values 
colorbar('off');%turns pff the colorbar for analysing hog features
xlabel('') %turning off the x-axis label
ylabel('') %turng of the y- xis 
set(gca,'XTick',[], 'YTick', [])


image=strcat(audio,'.png');
saveas(gcf,image);
close all;  % Close all figures (except those of imtool.)
imtool close all;

end

