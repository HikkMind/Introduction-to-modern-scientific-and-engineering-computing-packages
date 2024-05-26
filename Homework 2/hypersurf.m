function hypersurf(A)
  if !ishyper(A)
    return;
  endif

  eig_num = eig(A)

  F = @(x)x;
  [X,Y] = meshgrid(linspace(-10,10,41),linspace(-10,10,41));
  hold on;
##  axis equal;
  if eig_num(1)*eig_num(2) > 0 && eig_num(3)*eig_num(4) > 0
    F = @(x,y) sqrt((((x.^2)./eig_num(1)^2 + (y.^2)./eig_num(2)^2 - 1)*eig_num(3)))
    Z = F(X,Y);
    surf(X,Y,real(Z));
    surf(X,Y,-real(Z));
  else
    F = @(x,y) ((x.^2)./eig_num(1)^2 - (y.^2)./eig_num(4)^2)/2;
    Z = F(X,Y);
    surf(X,Y,Z);
  endif
  hold off;

  shading interp;

end

