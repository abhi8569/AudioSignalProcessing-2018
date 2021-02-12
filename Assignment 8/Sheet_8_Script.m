%Functiob : function [] = Sheet_8(data_file,n)
%---Parameter Definition---
%data_file : MATLAB formatted data (.mat file )should contain two variable:
%            Fs -> sample rate
%            signal -> sampled values
%n         : number of sinc fucntion using which we want to reconstruct the
%            signal
Sheet_8('random_signal.mat',10)
Sheet_8('random_signal.mat',50)
Sheet_8('random_signal.mat',100)