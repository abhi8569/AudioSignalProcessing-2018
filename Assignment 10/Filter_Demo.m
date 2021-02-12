%part a

f=1;
ts=1/1000;
T=1;
t=0:ts:T;
y=sin(2*pi*f*t);
noisy_y = y - 0.1 * rand(1, length(y));
noisy_y = noisy_y + 0.1 * rand(1, length(noisy_y));
subplot(1,3,1);
plot(t,noisy_y,'g-');
title("Noisy sin signal");

%patb c

result=averaging_filter(noisy_y);
subplot(1,3,2);
p1=plot(t,noisy_y,'g-');
hold on;
p2=plot(t,result,'r-');
legend([p1 p2],'Noisy Signal','Filtered Signal');
title("Averaging Filter");

%(D)

temp=hamming(50);
z=noisy_y.*temp;
z_1 = mean(z,1);
subplot(1,3,3);
plot(t,z_1,'b-');

