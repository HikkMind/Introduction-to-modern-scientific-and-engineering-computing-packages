##syms x;
##sol = solve(2*x == 13)

##syms a b c x;
##sol = solve(a*x^2 + b*x + c == 0,x)

##syms x y;
##sol = solve(2*x+y == 4, x-y == -1)

##syms x y a
##S = [x^2-2*x+y+a == 0, x+y-2==0];
##D = solve(S,x,y)


##function symbol
##  syms x y r;
##  axes('position',[0.1, 0.3, 0.8,0.6]);
##  S = [(x-2)^2+(y-4)^2==r^2,y==x/2+1];
##  [sX,sY] = solve(S,x,y)
##
##
##  hslider = uicontrol(
##      'style','slider',
##      'Units','normalized',
##      'position',[0.1,0.1,0.8,0.1],
##      'min',1,
##      'max',10,
##      'value',1,
##      'callback',(@plotstuff)
##      );
##
##  dx = linspace(-20,20,40);
##  t = linspace(0,2*pi,100);
##  function plotstuff(h,event)
##    R = get(h,'value');
##    P1 = double(subs(sX,r,R));
##    P2 = double(subs(sY,r,R));
##    axis([-20,20,-20,20]);
##    axis tight;
##    xc = R*cos(t)+2;
##    yc = R*sin(t)+4;
##    plot(xc,yc);
##    hold on;
##    if imag(P1)==0
##      plot(P1,P2,'o');
##    endif
##    plot(dx,dx/2+1);
##    hold off;
##  end
##end


##syms x;
##f = log(x);
##der = diff(f,x)


##syms x y;
##f = x^2 - 3*y^3;
##der = diff(f,y)


##syms x y t;
##S = 2*cos(x)-6*y;
##int(S,y,0,pi)


syms a t;
y = int(int(-9.8,t)+210*sin(a),t);
[y1] = solve(y == 350);
x = int(210*cos(a),t);
xt = subs(int(210*cos(a),t),t,y1(2));
[a_ans] = double(solve(xt==2600));
teta = a_ans(2);

T = linspace(0,subs(y1(2),a,teta),10);
x = subs(x,a,teta);
y = subs(y,a,teta);
X = double(subs(x,t,T));
Y = double(subs(y,t,T));
plot(X,Y);
