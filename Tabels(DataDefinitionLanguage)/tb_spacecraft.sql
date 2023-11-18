CREATE TABLE DB_UNIVERSE.void.tb_spacecraft
(
    name_id VARCHAR(255) UNIQUE NOT NULL, -- имя космического апарата
    break_spacecraft BIT -- работает корабаль или нет
)