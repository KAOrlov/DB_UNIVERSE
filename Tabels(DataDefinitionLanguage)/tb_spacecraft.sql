CREATE TABLE DB_UNIVERSE.void.tb_spacecraft
(
    name_id VARCHAR(255) NOT NULL, -- имя космического апарата
    create_date DATETIME2 NOT NULL, -- время созданя строки
    pilot_id INT NULL, -- id пилота
    planet_id INT NULL,
    photo_spacecraft_id INT NULL, -- фото привезеные кароблем
    scan_spacecraft_id INT NULL, -- фото привезеные кароблем
    material_spacecraft_id INT NULL, -- матералы привезеные кароблем
    start_flight_time DATETIME2 NULL, -- дата вылета коробля
    finish_flight_time DATETIME2 NULL, -- дата возвращениея коробля
    connection_spacecraft BIT, -- наличие связи с короблем
        FOREIGN KEY (planet_id) REFERENCES DB_UNIVERSE.void.tb_planets(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE -- id планеты
)