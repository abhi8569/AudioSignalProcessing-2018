function Sheet6(k1)
t=linspace(0,2,10000);
suma=1;
for k=1:k1
    duty = 50;
    t1 = 0:0.01:2;
    f1 = -1;
    x = square(2*pi*f1*t1,duty);
    subplot(2,2,1);
    plot(t1,x);
    title('f(t)');
    axis([0 2 -1.5 1.5])
    grid on
    if rem(k,2)~=0 %bn is 0 when K is even
        bn=(-2*sqrt(2))/(pi*k);
    else
        bn=0;
    end
    f=bn*sqrt(2)*sin(2*k*pi*t);
    suma=suma+f;
    subplot(2,2,4);
    plot(t,suma);
    title(['Fourier series expansion w.r.t. the' newline 'Hilbert basis. (k = ' num2str(k) ')']);
    grid on
    subplot(2,2,3);
    plot(t,f);
    title("Signal corresponding to each K");
    pause(1);
    hold on;
end


%function call sample : Sheet6(k) where K is upper bound