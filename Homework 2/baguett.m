function baguett(l,d,a,n)



##  dY = linspace(0,l,n+1);
##  [X,Y] = meshgrid(linspace(-d/2,d/2,n+1),dY);
##  k = pi/2-a;
##  for p = 2:2:n+1
##    I = (k*X+dY(p)
##  endfor

##  x = linspace(-d/2, d/2, n+1);
  T = linspace(0,pi,3*n+1);
  x = cos(T).*d./2;
  z = sin(T).*d./2;
##  y = linspace(0,l,n+1);
  y = linspace(0,l,3*n+1);
  L = @(x)tan(pi/2 - a)*x + d/2;
  [X,Y] = meshgrid(x,y);
  step = (l-tan(pi/2-a)*d/2)/(n)
  hold on;
  Z = (repmat(z',1,3*n+1))';
##  k = 1;
  Y1 = Y;
  Z1 = zeros(3*n+1);


  Ylid1 = [];
  Xlid1 = [];
  Zlid1 = [];
  tmp_y = y;
  for p = 1:3*n+1
    for q = 1:3*n+1
      if Y(p,q) > L(X(p,q))
        Y1(p,q) = max(0,L(X(p,q)));
##        y(p) = max(0,L(X(p,q)));
##        Ylid1 = horzcat(Ylid1,max(0,L(X(p,q))));
##        Xlid1 = horzcat(Xlid1,X(p,q));
##        Zlid1 = horzcat(Zlid1, Z(p,q));
      endif
    endfor
  endfor
  surf(X,Y1,Z);
  surf(X,Y1,-Z);

##  x = horzcat(x,x(1));
##  y = horzcat(y,y(1));
##  y = repmat(y,length(y),1);
##  x = (repmat(x,length(x),1))';
##  Zp = horzcat(Z,Z(:,1));
##  Zp = horzcat(z,z(1));
##  Zp = repmat(z,length(x),1);

  Zp = repmat(z,length(z)-1,1);
  Zp = vertcat(Zp,zeros(1,length(Zp)));
##  Zp(2) = Zp(2)./2;
##  Zp = vertcat(Zp,Zp(1,:));
##  size(x)
##  size(y)
##  size(Zp)
##  surf(x',y,Zp);

  Ly = L(x);
  [LX,LY]=meshgrid(x,Ly);
  LYzero = zeros(size(LY));
  surf(LX,LYzero,Zp);
  surf(LX,LYzero,-Zp);
  surf(LX,LYzero+l,Zp);
  surf(LX,LYzero+l,-Zp);
  for p = 0:n-2
    surf(LX,LY' + step*p,Zp);
    surf(LX,LY' + step*p,-Zp);
  endfor
##  surf(LX,LY',Zp);
##  surf(LX,LY',-Zp);


  y = tmp_y;
##  size(Xlid1)
##  size(Ylid1)
##  Zlid1 = (repmat(Zlid1, 1, length(Xlid1)))';
##  size(Zlid1)

##  surf(Xlid1, Ylid1, Zlid1);



  for k = 2:2:n-2
    Y1 = Y;
    for p = 1:3*n+1
      for q = 1:3*n+1
##        if Y(p,q) > L(X(p,q))+ step*(k-1)&& Y(p,q) < L(X(p,q))+step*k
##
##          Y1(p,q) = max(0,L(X(p,q)));
##          Z(p,q) = 0;
##        endif

        if Y(p,q) < L(X(p,q)) + step*(k-1)
          Y1(p,q) = min(l,max(0,L(X(p,q)) + step*(k-1)));
        elseif Y(p,q) > L(X(p,q)) + step*k
          Y1(p,q) = min(l,L(X(p,q)) + step*k);
        endif
      endfor
    endfor
    surf(X,Y1,Z);
    surf(X,Y1,-Z);
  endfor


  Y1 = Y;
  for p = 1:3*n+1
    for q = 1:3*n+1
      if Y(p,q) < L(X(p,q)) + step*(n-1-mod(n,2));
        Y1(p,q) = min(l,L(X(p,q)) + step*(n-1-mod(n,2)));
      endif
    endfor
  endfor
  surf(X,Y1,Z);
  surf(X,Y1,-Z);

  shading interp;
  y1 = 0;
  y1 = repmat(y1,1,3*n+1);
##  plot(x,z);

##  [cx, cy, cz]  =cylinder([2,4],25);
##  surf(cx,cy,cz);

  colormap('copper');

  hold off;
end

