t = -5:0.05:5;
a = 1/4;
b = 1/16;
m = 8;
n = 8;
s = 50;
x = cos(t) - a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
hold on;
for k = 1:s
  plot(x/k,y/k);
endfor
hold off;
##plot(x/k,y/k);
##same = find(x==y)
##c1 = plot(t,x);
##hold on;
####c2 = plot(t,y);
##hold off;
