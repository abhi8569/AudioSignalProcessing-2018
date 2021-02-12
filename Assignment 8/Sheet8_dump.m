mat_vars=load('random_signal.mat');
sample_rate_data=mat_vars.Fs;
signal_data=mat_vars.signal;
%signal_data=transpose(signal_data);
x=fft(signal_data)/8000;
time=length(signal_data)/sample_rate_data;
t=linspace(0,20,160000);
subplot(1,2,1);
plot(t,signal_data);
subplot(1,2,2);
% [Ts,T1]=ndgrid(signal_data,t);
% y = sinc(Ts - T1)*signal_data;
% plot(t,y);
x1=linspace(0,20,150);
y1=zeros(size(x1));
j=1
y1=y1 + sinc(x1)*signal_data(1);
for i = 0:0.02:19
    a = sinc(x1-i);
    b=signal_data(160*j);
    y1=y1 + sinc(x1-i)*signal_data(160*j);
    j=j+1;
    plot(x1,y1*time/1000);
    pause(0.01);
    hold on;
end
