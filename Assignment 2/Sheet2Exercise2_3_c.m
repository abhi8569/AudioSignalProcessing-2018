x = 0:0.1:8*pi;
plot(cos(x),'r');
hold on
f=(exp(1i*x)+exp(-1i*x))/2;
plot(f,'b*');

%plot for the both function shows that they are exactly same