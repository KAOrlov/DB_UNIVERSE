CREATE TABLE tb_planets (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    name VARCHAR(50) NOT NULL, 
    closest_star_id INT  NOT NULL FOREIGN KEY (star_id) REFERENCES tb_stars(id) ON DELETE CASCADE, -- id ближайшей звезды
    weight DECIMAL NOT NULL, --Масса (1024 кг)
    diameter INT NOT NULL, --Диаметр (км)
    density INT NOT NULL, --Плотность (кг/м3)
    gravitation  DECIMAL(1, 1) NOT NULL, --Притяжение (м/с2 кг)
    second_escape_velocity DECIMAL(2, 1) NOT NULL, --Вторая космическая скорость (км/с)
    rotation_period  DECIMAL NOT NULL, --Период вращения (часы)
    length_of_day DECIMAL NOT NULL, --Продолжительность дня (часы)
    temperature INT NOT NULL, --Температура (k)
    surface_pressure INT NULL, --Поверхностное давление (bar)
    number_of_moons SMALLINT NOT NULL, --Количество лун
    ring_system BIT NOT NULL, --Кольцевая система
    global_magnetic_field BIT NULL --Глобальное магнитное поле
)