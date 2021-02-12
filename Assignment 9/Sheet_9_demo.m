bit_depth=2;
sample_rate=50;
t=0:1/sample_rate:2*pi;
continous_signal=sin(2*pi*t);
number_of_samples=length(continous_signal);
quantised_output=zeros(1,number_of_samples);
del=2/(2^bit_depth);
l=-1+del/2;
h=1-del/2;
for i=l:del:h %
    for j=1:number_of_samples
     if(((i-del/2)<continous_signal(j))&&(continous_signal(j)<(i+del/2)))  
        quantised_output(j)=i;
     end
    end
end
plot(t,continous_signal,'color','b');
hold on;
stem(t,quantised_output,'+');
