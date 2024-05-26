function fracto(p, ll, ur, xx, yy)
  x = linspace(ll(1),ur(1),xx);
  y = linspace(ur(2),ll(2),yy);
  dp = p.*fliplr(linspace(0,length(p)-1,length(p)));
  dp = dp(1:length(p)-1);
  [X,Y] = meshgrid(x,y);
  r = roots(p);
  Z = X+i*Y;
  e = 0.00001;
  for l = 1:41
    Z = Z - polyval(p,Z)./polyval(dp,Z);
  endfor
  col = linspace(50,250,length(r));
  B = zeros(size(Z));
  for k = 1:length(r)
    I = abs(Z-r(k)) < e;
    B += I.*col(k);
  endfor;

  image(B);
end

