function caterpool(initial_position, initial_velocity, bottom_left, top_right, iterations, n)
  x_min = bottom_left(1);
  y_min = bottom_left(2);
  x_max = top_right(1);
  y_max = top_right(2);

  pos = initial_position;
  vel = initial_velocity;

  x_traj = pos(1);
  y_traj = pos(2);

  figure;
  hold on;
  axis equal;
  xlim([x_min, x_max]);
  ylim([y_min, y_max]);

  % Анимация движения
  for k = 1:iterations
    % Обновление позиции
    pos = pos + vel;

    % Проверка столкновения с границами и отражение
    if pos(1) <= x_min || pos(1) >= x_max
      vel(1) = -vel(1);
    end
    if pos(2) <= y_min || pos(2) >= y_max
      vel(2) = -vel(2);
    end

    % Обновление траектории
    x_traj = [x_traj, pos(1)];
    y_traj = [y_traj, pos(2)];

    % Очистка и отрисовка нового состояния
    cla;
    plot([x_min, x_max, x_max, x_min, x_min], [y_min, y_min, y_max, y_max, y_min], 'k'); % границы
    caterpillar(x_traj, y_traj, n);

    pause(0.01);
  end

  hold off;
end

