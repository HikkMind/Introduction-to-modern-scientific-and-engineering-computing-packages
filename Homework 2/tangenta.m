function tangenta(fd, dmin, dmax, n)
  x = linspace(dmin,dmax,2*n+1);
  y = vertcat(fd(x)(1:2*n+1),fd(x)(2*n+2:4*n+2));
  hold on;
  plot(y(1,:),y(2,:));
  x1= x;
  F=@(t)(t-y(1,n))*((y(2,n+1)-y(2,n))/(y(1,n+1)-y(1,n))) + y(2,n);
  plot(y(1,:),F(y(1,:)));
  hold off;
end

