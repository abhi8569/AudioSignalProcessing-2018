f=0:0.5:5;
tf=5;
FS=1000;
k=3 ;
t=0:1/FS:tf-1/FS;
y=sin(2*pi*(f.*t+(k/2)*t.^2));
plot(t,y);