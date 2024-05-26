##p = plot(randn(10,3));
##get(p);
##set(p,'linewidth',2);
##x = -10:0.1:10;
##k = -2;
##y = k*x.^2-2;
##h = plot(x,y);
##
##axis([-20 20 -20 20]);
####hold on;
##while k <= 2
##  k = k + 0.1;
##  y = k*x.^2-2;
##  set(h,'YData',y);
##  drawnow;
##  pause(0.1);
####  plot(x,y);
####  pause(0.01);
##endwhile
##hold off;

##x = 0:pi/100:4*pi;
##y = x;
##[X,Y] = meshgrid(x,y);
##z = 3*sin(X)+cos(Y);
##h = surf(z);
####axis tight
##set(h,'zlim', [-3 3]);
##set(gca,'nextplot','replacechildren');
##shading interp;
##colormap(ocean);
##for k = 0:pi/100:2*pi;
##  z = (3*sin(X)+cos(Y)).*sin(k);
##  set(h,'Zdata',z);
##  drawnow
##endfor


##x = 0:pi/100:10*pi;
##h = plot(x,sin(x));
##hold on;
##n = 5;
##x1 = linspace(0,1,n);
####h = 0.01;
##p = plot(x1,sin(x1),'o','markersize',10);
##while x1(n) < 10*pi
####  x1+=h;
##  for p = 1:n
##    h = fsolve(
##  endfor
##  set(p,'XData',x1,'YData',sin(x1));
##  drawnow;
##  pause(0.001);
##endwhile
##hold off;

##x = 0:pi/100:2*pi;
##h = plot(x,sin(x));
##n = 5;
##x1 = x(0);
##r = zeros(1,n);
##r(0) = x1
##for p = 2:n
##  r(p) = fsolve(@(x)x.^2+(sin(x+r(p-1)) - sin(r(p-1))).^2-4,r(p-1));
##endfor
##r
##hold on;
##plot(x1,sin(x1),'o','markersize',10);
##x1 = fsolve(@(x)x.^2+(sin(x+x1) - sin(x1)).^2-4,x1);
##for p = 2:n
##  plot(x1,sin(x1),'o','markerszize',10);
##  x1 = fsolve(@(x)x.^2+(sin(x+x1) - sin(x1)).^2-4,x1);
##endfor
##hold off;




