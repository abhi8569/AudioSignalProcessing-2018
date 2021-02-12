%input is two complex number in the form of a+ib and seperated by ','
%output is two comples number which are product and quotient of two inputs

function [m,d] = Sheet1Exercise2(x,y)
temp_m=x*y;
temp_d=x/y;
m=[0 temp_m];
d=[0 temp_d];
subplot(1,2,1);
plot(m);
subplot(1,2,2);
plot(d);
end

%To call function declare two variables in which you want to store the
%output from the function and as an input pass two complex number
%i.e - [multiplication,quotient]=Sheet1Exercise2(2+5i,1+7i)