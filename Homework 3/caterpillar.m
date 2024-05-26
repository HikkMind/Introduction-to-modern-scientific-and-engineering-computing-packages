function caterpillar(x, y, n)
  if n > length(x)
    return;
  end

  figure;
  hold on;
  axis equal;

  % Построение линии
  plot(x, y, 'k--');

  % Инициализация гусеницы
  caterpillar_handles = [];
  for i = 1:n
    caterpillar_handles = [caterpillar_handles, plot(x(1), y(1), 'ro', 'MarkerFaceColor', 'r')];
  end

  % Анимация гусеницы
  for i = 1:length(x)
    for j = 1:n
      idx = max(1, i - j + 1);
      set(caterpillar_handles(j), 'XData', x(idx), 'YData', y(idx));
    end
    pause(0.01);
  end

  hold off;
end

