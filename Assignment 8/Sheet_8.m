%Function to reconstruct given input signal as argument using sinc function

function [] = Sheet_8(data_file,n)
    mat_vars=load(data_file);
    sample_rate_data=mat_vars.Fs;
    signal_data=mat_vars.signal;
    time=length(signal_data)/sample_rate_data;
    t=linspace(0,time,length(signal_data));
    figure('Name','Signal Reconstruction using sinc','Units','normalized','Position',[0 0 1 1]);
    subplot(1,2,1);
    plot(t,signal_data);
    title('Input Signal');
    subplot(1,2,2);
    x1=linspace(0,time,n);
    y1=zeros(size(x1));
    j=1;
    for i = 0:time/n:19
        y1=y1 + sinc(x1-i)*signal_data(round((length(signal_data)/n)*j));
        j=j+1;
    end
    plot(x1,y1*time/n);
    title(['Reconstructed signal using ' num2str(n) ' sinc signal']);
end