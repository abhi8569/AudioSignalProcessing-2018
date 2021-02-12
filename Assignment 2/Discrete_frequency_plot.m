x = 0:0.1:12*pi;
real=cos(x);
img=sin(x);
subplot(3,2,1);
plot3(x,real,img);
title('f(1)')
ylabel('real');
zlabel('img');
xlabel('time');

subplot(3,2,2);
real1=cos(x/2);
img1=sin(x/2);
subplot(3,2,2);
plot3(x,real1,img1);
title('f(1/2)')
ylabel('real');
zlabel('img');
xlabel('time');

real2=cos(x/3);
img2=sin(x/3);
subplot(3,2,3);
plot3(x,real2,img2);
title('f(1/3)')
ylabel('real');
zlabel('img');
xlabel('time');

real3=cos(x/4);
img3=sin(x/4);
subplot(3,2,4);
plot3(x,real3,img3);
title('f(1/4)')
ylabel('real');
zlabel('img');
xlabel('time');

real4=cos(x/8);
img4=sin(x/8);
subplot(3,2,5);
plot3(x,real4,img4);
title('f(1/8)')
ylabel('real');
zlabel('img');
xlabel('time');