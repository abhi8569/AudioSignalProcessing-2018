function [x,y] = Sheet2Exercise2_3_a(r,rad)
x=r*cos(rad);
y=r*sin(rad);
subplot(1,2,1);
polar((rad*180)/pi,r,'r+');
subplot(1,2,2);
plot(x,y,'r*');
end

%function call : Sheet2Exercise2_3_a(r,rad) where r is absolute value of
%complex number a+ib and rad is argument of the complex lnumber in radian