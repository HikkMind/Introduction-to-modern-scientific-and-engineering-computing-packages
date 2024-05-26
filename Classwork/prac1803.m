##x = -2:0.1:5;
##y1 = x.*(1-x)+0.5;
##y2 = exp(-0.5*x).*sin(x);
##
##
##c = plot(x,y1,'linewidth',3,'linestyle',':');
##hold on;
##c2 = plot(x,y2, 'marker','p', 'markersize',10,'color',[18/24 3/24 11/24]);
##hold off;
##get(c2);
##xlabel('x');
##ylabel('f(x)');
##title('s');
##legend;

##x = linspace(-1,1,500);
##y = sqrt(1-x.^2);
##plot(x,y);
##hold on;
##plot(x,-y)
##hold off;
##axis equal;

a = 0.4;
F = @(x,y) x.^2 + y.^2 - 2;
C = plot3(x*2, [-2 2 -2 2 -2 2]);
set(C, 'linewidth',3,'color','g');
axis equal;
