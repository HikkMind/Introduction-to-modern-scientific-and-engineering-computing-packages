function run

  params = [1, 1, 3, 2];
  theta = [pi/4; pi/2; 0; 0];

  ts = [0 10];

  [t, x1, y1, x2, y2] = pendux2(params, theta, ts);

  figure;
  hold on;
  axis equal;
  xlim([-4,4]);
  ylim([-4,4]);
  plot([-params(2), params(2)], [0, 0], 'k--');

  for i = 1:length(t)
    plot([0, x1(i)], [0, y1(i)], 'c-', 'LineWidth', 2);
    plot([x1(i), x2(i)], [y1(i), y2(i)], 'm-', 'LineWidth', 2);

    plot(x1(i), y1(i), 'ro', 'MarkerFaceColor', 'y');
    plot(x2(i), y2(i), 'bo', 'MarkerFaceColor', 'y');

    plot(x1(1:i), y1(1:i), 'c--');
    plot(x2(1:i), y2(1:i), 'm--');

    pause(0.01);
    if i < length(t)
      cla;
    end
  end

  hold off;
end

