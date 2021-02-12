[sample,sample_rate]=audioread('dialtones.wav');
time=length(sample)/sample_rate; %duration of the sound
figure('Units','normalized','Position',[0 0 1 1])
for n=1:time
    [signal,fs] = audioread('dialtones.wav',[(n*sample_rate-sample_rate)+1,n*sample_rate]);
    x=fft(signal)/fs;   %normalizing the amplitude; although not required for frequency analysis
    p2=abs(x)*2;        %as energy is divided into two parts, we have to show full energy at positive side
    subplot(3,2,n);
    plot(p2);
    findpeaks(abs(p2));  %plot the peaks
    datacursormode on;  %to check the frequency corresponding to the peaks
    xlim([0 1500]);     %to ignore the negative part of the frequency domain
    set(gca, 'Layer', 'top');
    set(gca,'XMinorTick','on','xtick',linspace(0,1500,9));
    ax=gca;
    ax.XAxis.TickLabelFormat = '%.1f';
    title(['FFT for Time = ' num2str(n) ' sec']);
    xlabel('Frequency (Hz)');
    ylabel('Amplitude');
    grid on;
end
%plotting spectrogram for the reference and cross validation
figure('Name','Spectrogram','Units','normalized','Position',[0 0 1 1]);
spectrogram(sample, rectwin(256), 250, 256,sample_rate,'yaxis');
set(gca, 'Layer', 'top')
set(gca,'ytick',linspace(0,4,20))
ax = gca;
ax.LineWidth = 3;
grid on;

%0-1 ->  2
%1-2 ->  5
%2-3 ->  1
%3-4 ->  2
%4-5 ->  1
%5-6 ->  6