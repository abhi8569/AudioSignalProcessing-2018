% To run the file call Sheet7Exercise3.

[y,fs] = audioread('dialtones.wav');
%Calculate the time in seconds for the audio
time = length(y)/fs;

for i = 1:time
  [y,fs] = audioread('dialtones.wav', [((i-1)*fs)+1,i*fs]);
  %Calculate fourier transform of the signal
  x = fft(y)/fs;
  xabs = abs(x)*2;
  %Plot the frequency of the tracks
  subplot(2,3,i);
  plot(xabs);
  xlim([650 1550]);
  set(gca, 'XMinorTick','on','xtick', linspace(650, 1550,10));
  xlabel('Frequency-Hz');
  ylabel('Amplitude');
  title(['Plot for ', num2str(i),' sec']);
  grid on;
  
end