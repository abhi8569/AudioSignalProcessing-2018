function [] = Sheet2Exercise2_3_b(n)
idx = 1;
for k = 0:n-1
   a(idx,:) = cos(2*k*pi/n) + (sin(2*k*pi/n)*1i);
   idx = idx + 1;
end
%Plot a complete circle with unity radius
range = 0:0.01:2*pi;                              
plot(cos(range),sin(range),'k'); hold on, grid on
%plot all the roots contained in array a
plot(real(a),imag(a), 'r*')
title("N'th roots of unity");
xlabel('real values');
ylabel('Imaginary Values');
end

%function call : Sheet2Exercise2_3_b(n) where n is positive, non zero
%integer
