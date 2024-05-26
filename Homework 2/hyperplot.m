function hyperplot(A)

  if !ishyper(A)
    return;
  endif

  eig_num = eig(A);

  hold on;
  a = eig_num(1);
  b = eig_num(2);
  c = eig_num(3);

  u = linspace(-5, 5, 100);
  t = linspace(-10,10,20);
  v_val = linspace(-5, 5, 5);
  if eig_num(1)*eig_num(2) > 0 && eig_num(3)*eig_num(4) > 0
    y0 = linspace(-b,b,10);
    x0 = sqrt(1 - (y0.^2)/b^2);
    for k = 1:length(y0)
      x1 = x0(k) + (a*y0(k)/b)*t;
      y1 = y0(k) - (b*x0(k)/a)*t;
      z1 = c*t;
      plot3(x1, y1, z1, 'r', 'LineWidth', 2);
    endfor
    for v = v_val
      for k = 1:length(y0)
        x2 = x0(k) - (a*y0(k)/b)*t;
        y2 = y0(k) + (b*x0(k)/a)*t;
        z2 = c*t;
        plot3(x2, y2, z2, 'b', 'LineWidth', 2);
      endfor
    endfor
  else
    for v = v_val
      x1 = u + v;
      y1 = u - v;
      z1 = 2 * u .* v;
      plot3(x1, y1, z1, 'r');
    endfor
    for v = v_val
      x2 = u - v;
      y2 = -(u + v);
      z2 = (u.^2 - v.^2) / a^2;
      z2 = -2 *u.*v;
      plot3(x2, y2, z2, 'b');
    endfor
  endif
  hypersurf(A);
  hold off;
end

