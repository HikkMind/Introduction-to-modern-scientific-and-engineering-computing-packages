axes('position',[0.1, 0.3, 0.8,0.6]);
global t;
t = linspace(0,8*pi,100);
x = t.*cos(t);
y = t.*sin(t);
plot(x,y);
axis([-100,100,-100,100]);

hslider = uicontrol(
    'style','slider',
    'Units','normalized',
    'position',[0.1,0.1,0.8,0.1],
    'min',1,
    'max',50,
    'value',1,
    'callback',(@plotstuff)
    );

function plotstuff(h,event)
  global t;
  n = get(h,'value');
  x = n*t.*cos(t);
  y = n*t.*sin(t);
  plot(x,y);
  axis([-100,100,-100,100]);
end

