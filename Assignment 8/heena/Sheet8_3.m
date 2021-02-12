%Reconstruction of input signal using sinc function

function [] = Sheet8_3(n)
    subplot(1,2,1);    
    data=load('random_signal.mat');
    signalValues = data.signal;
    sampleRate = data.Fs;
    timeDuration = length(signalValues)/sampleRate;
    x_axis=linspace(0,timeDuration,length(signalValues));
    plot(x_axis,signalValues);
    title('Input Signal');
    subplot(1,2,2);
    x1_axis=linspace(0,timeDuration,n);
    y1=zeros(size(x1_axis));
    sincSignalCounter=0;
    
    for i = 0:timeDuration/n:19
        sincSignalCounter=sincSignalCounter+1;
        y1=y1 + signalValues(round((length(signalValues)/n)*sincSignalCounter))*sinc(x1_axis-i);
    end
    
    plot(x1_axis,y1*(timeDuration/n));
    title(['Output Signal using ' num2str(n) ' sinc signal']);
end