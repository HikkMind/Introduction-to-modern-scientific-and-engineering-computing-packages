function [t, x] = pendux2(params, theta, ts)
  m1 = params(1);
  l1 = params(2);
  m2 = params(3);
  l2 = params(4);

  [t, y] = ode45(@(t, y) equations_of_motion(y, m1, l1, m2, l2), ts, theta);

  theta1 = y(:, 1);
  theta2 = y(:, 2);

  x1 = l1 * sin(theta1');
  y1 = -l1 * cos(theta1');
  x2 = x1 + l2 * sin(theta2');
  y2 = y1 - l2 * cos(theta2');
  x = [x1, y1, x2, y2]
end

function res = equations_of_motion(y, m1, l1, m2, l2)
  t1 = y(1);
  t2 = y(2);
  t1_d = y(3);
  t2_d = y(4);

  d = t2 - t1;

  M = [m1 + m2, m2 * l1 * cos(d); m2 * l1 * cos(d), m2 * l2];

  b = [-m2 * l1 * l2 * sin(d) * t2_d^2 - (m1 + m2) * 9.8 * l1 * sin(t1);  l2 * sin(d) * t1_d^2 - 9.8 * l2 * sin(t2)];

  sol = M \ b;

    res = [t1_d; t2_d; sol(1); sol(2)];
end

