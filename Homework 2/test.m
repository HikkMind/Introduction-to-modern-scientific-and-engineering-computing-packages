##t = linspace(0,10*pi,40)
##a = 10;
##b = 10;
##x = a*t.*cos(t);
##y = a*t.*sin(t);
##z = b*t;
##plot3(x,y,z)


t = linspace(0,10*pi,40);
tn = 0.5;
phi = pi/10;
k = 1;
##z = cos(phi)*t;
##x = z*tn.*cos(t);
##y = z*tn.*sin(t);
x = t.*cos(t);
y = t.*sin(t);
z = t/tan(phi);
axis equal;
plot3(x,y,z);
