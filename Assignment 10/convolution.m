function [y] = convolution(x,h) 
m=length(x);
n=length(h);
x=[x,zeros(1,n)];
h=[h,zeros(1,m)];
for i=1:n+m-1
    y(i)=0;
    for j=1:m
        if(i-j+1>0)
            y(i)=y(i)+x(j)*h(i-j+1);
        end
    end
    plot(x(1:i));
    s1 = stem(x(1:i),'filled');
    xlabel('n');
    pause(1);
    hold on;
    plot(y);
    s2 = stem(y(1:i),':diamondr');
    pause(1);
    hold on;
    xlim([-1 10]);
    ylim([-10 30]);
end

legend([s1 s2],'X','Convolution');