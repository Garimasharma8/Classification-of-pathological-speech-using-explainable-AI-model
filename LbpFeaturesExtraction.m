clear, clc, close all
% get a section of the sound file
% Read files from specific folder:
% folder = 'C:\Users\dprasad\Desktop\New folder\Healthy\**\';
folder = 'C:\Users\dprasad\Desktop\New folder\Patients\**\';
files = dir([folder,'*.png']);
matrix1 = zeros(length(files),59);
matrix2 = zeros(length(files),59);
matrix4 = zeros(length(files),59);
matrix5 = zeros(length(files),59);

for i = 1:length(files)


% cd 'files(i).folder';
% cd files(i).folder;
image = strcat(files(i).folder,'\');
image = strcat(image,files(i).name);
% imageHealthy=getSpectrogram(image);

% lbp_im1= getLbp(image,1);
matrix1(i,:)= getLbp(image,1);

% lbp_im2= getLbp(image,2);
matrix2(i,:)= getLbp(image,2);

% lbp_im4= getLbp(image,4);
matrix4(i,:)= getLbp(image,4);

% lbp_im5= getLbp(image,5);
matrix5(i,:)= getLbp(image,5);


end
% imagePatient=getSpectrogram('4sja1a.wav');
% imageHealthy=getSpectrogram('4PK1A.wav');



% analyseLBP(image);
% lbp_im1=getLbp(image,1);
% lbp_im=getLbp(image,2);
% lbp_Patient=getLbp(imagePatient,3);
% lbp_im4=getLbp(image,4);
% lbp_im5=getLbp(image,5);


% lbp_Healthy = getLbp(imageHealthy,3);