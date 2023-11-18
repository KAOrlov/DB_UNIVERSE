CREATE TABLE DB_UNIVERSE.void.tb_spacecraft
(
    name_id VARCHAR(255) UNIQUE NOT NULL, -- имя космического апарата
    create_date DATETIME2(0) NOT NULL, -- время созданя строки
    break_spacecraft BIT -- работает корабаль или нет
)