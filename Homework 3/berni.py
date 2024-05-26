import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D


def conical_helix(x0, y0, z0, a, k, alpha, num_points=1000):

    # Параметр угла для винтовой линии
    theta = np.linspace(0, 10 * np.pi, num_points)

    # Радиальная координата, начиная с r0 = sqrt(x0^2 + y0^2)
    r0 = np.sqrt(x0 ** 2 + y0 ** 2)
    r = r0 + k * theta

    # Параметрические уравнения для винтовой линии
    x = r * np.cos(theta)
    y = r * np.sin(theta)
    z = z0 + (r - r0) / np.tan(alpha)

    return x, y, z


def plot_conical_helix(x, y, z, a):
    """
    Визуализирует коническую винтовую линию вместе с конусом.

    :param x: массив координат x
    :param y: массив координат y
    :param z: массив координат z
    :param a: параметр конуса
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')

    # Построение поверхности конуса
    theta = np.linspace(0, 2 * np.pi, 100)
    z_cone = np.linspace(0, max(z), 100)
    theta, z_cone = np.meshgrid(theta, z_cone)
    x_cone = np.sqrt(a) * z_cone * np.cos(theta)
    y_cone = np.sqrt(a) * z_cone * np.sin(theta)

    ax.plot_surface(x_cone, y_cone, z_cone, alpha=0.3, color='blue')

    # Построение винтовой линии
    ax.plot(x, y, z, color='red', marker='o')

    # Настройка осей
    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.set_title('Коническая винтовая линия')

    ax.view_init(elev=90, azim=0)

    plt.show()


# Параметры
x0, y0, z0 = 1, 1, np.sqrt(2)  # начальная точка на конусе для a=1
a = 1  # параметр конуса
k = 0.1  # шаг винтовой линии
alpha = np.pi / 6  # угол пересечения образующей конуса (30 градусов в радианах)

# Вычисление координат винтовой линии
x, y, z = conical_helix(x0, y0, z0, a, k, alpha)

# Визуализация винтовой линии и конуса
plot_conical_helix(x, y, z, a)
