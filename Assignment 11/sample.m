freq1 = 5000;
amp = 1;
t1 = linspace(0, 2* pi, 44100);
wave1= amp * sin(2* pi* freq1 * t1);
freq2 = 15000;
wave2 = amp * sin(2* pi* freq2 * t1);
y = wave1 + wave2;
audiowrite('input_file.wav',y,441000)
figure
subplot(2,2,1);
plot(t1, y);
subplot(2,2,2);
plot(abs(fft(y)))
xlim([4500 16000])
figure
filtered_sig=low_pass_filter(y,100);
audiowrite('output_file.wav',filtered_sig,441000)
figure
plot(abs(fft(filtered_sig)))
xlim([4500 16000])


