function res = gr()
  x = 0:0.005:4;
  y = humps(x);
  c = plot(x, y);
  hold on;
  y1 = find(y>= 20 & y <= 40);
  c3 = plot(x(y1),y(y1), 'p');
  ym = find(y==max(y));
  c4 = plot(x(ym),y(ym), 'o');
  hold off;
end
