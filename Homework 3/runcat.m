% Начальное положение и скорость гусеницы
initial_position = [2, 3];
initial_velocity = [0.1, 0.2];

% Координаты левого нижнего и правого верхнего углов листа
bottom_left = [0, 0];
top_right = [5, 5];

% Количество итераций
iterations = 100;

% Количество окружностей в гусенице
n = 10;

% Запуск анимации
caterpool(initial_position, initial_velocity, bottom_left, top_right, iterations, n);

