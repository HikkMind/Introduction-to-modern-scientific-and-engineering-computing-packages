##t = 0:0.05:9*pi;
##x = 2*sin(t);
##y = 3*cos(t);
##plot3(x,y,t);
##grid on;

##x = -10:0.5:10;
##y = -10:0.5:10;
##[X,Y] = meshgrid(x,y);
##Z = X.^2-Y.^2;
##mesh(X,Y,Z);

##n = 100;
##t1 = pi*(-n:5:n)/n;
##t2 = (pi/2)*(-n:5:n)'/n;
##X = cos(t2)*cos(t1);
##Y = cos(t2)*sin(t1);
##E = ones(size(t1));
##Z = sin(t2)*E;
##plot3(X,Y,Z,'b'), grid on;

x = -2*pi:0.05:2*pi;
y = -2*pi:0.05:2*pi;
[X,Y] = meshgrid(x,y);
Z = sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
figure;
surf(X,Y,Z);
shading interp;
a = linspace(0, 1, 60)';
b = sqrt(a);
c = tan(a);
colormap([1 0 0; 0 1 0; 0 0 1]);
##figure;
##surf(X,Y,Z);
##shading faceted;

##Z = 20 - X.^2 - Y.^2;
##surf(X,Y,Z);
##shading interp
##colormap('ocean');

##t1 = 0:0.05:2*pi;
##t2 = 0:0.05:2*pi;
##r = 3;
##R = 4;
##h = 40;
####x = (R+r.*cos(t1)).*cos(t2);
####y = (R+r.*cos(t1)).*sin(t2);
##[u,v] = meshgrid(t1,t2);
##x = (R+r.*cos(u)).*cos(v);
##y = (R+r*cos(u)).*sin(v);
##z = r.*sin(u)+h.*u./2*pi;
##surf(x,y,z);



