% n=3;
% x=linspace(0,2*pi,100);
% y=sin(x);
% interval=2/(2^n-1);
% q_y=[-1:interval:1];
% q_x=[-1:interval:1+interval];
% plot(x,y);
codebook=linspace(-3,3,7);
partition=linspace(0,2*pi,6);
signal=linspace(0,2*pi,20);
quan_signal=zeros(size(signal));
[index,quants] = quantiz(signal,partition,codebook); % Quantize.
subplot(1,2,1);
plot(signal,quants);
for i = 1:length(signal)
       if signal(i)<=partition(1)
       quan_signal(i)=codebook(1);
       end
    for j = 1:length(codebook)-1
        if signal(i)>partition(j) && signal(i)<=partition(j+1)
        quan_signal(i)=codebook(j);
        end
    end
      if signal(i)>partition(length(partition))
       quan_signal(i)=codebook(length(codebook));
      end
end
subplot(1,2,2);
   plot(signal,quan_signal);