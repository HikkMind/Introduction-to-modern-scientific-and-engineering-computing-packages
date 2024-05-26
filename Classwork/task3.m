t = -pi/2:0.02:3*pi/2;
a = 100;
b = 2;
n = 4;
k = 14;
m = 30;
r = (a./(a+(t-pi/2).^n)).*(b-sin(k*t)-cos(m*t));
c = polar(t,r);
uicontrol = (c);

