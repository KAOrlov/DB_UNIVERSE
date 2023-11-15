CREATE TABLE DB_UNIVERSE.void.tb_spacecraft_options
(
    name_id VARCHAR(255) PRIMARY KEY NOT NULL,
    create_date DATETIME2 NOT NULL, -- время созданя строки
    store_mass INT NULL, -- максимальный вес склада
    store_height INT NULL,
    store_depth INT NULL,
    store_width INT NULL,
    radio_telescope BIT, -- делать сканирование ообектов
    space_telescopes BIT, -- делать фото ообектов

    FOREIGN KEY (name_id) REFERENCES DB_UNIVERSE.void.tb_spacecraft(name_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE -- id планеты, -- имя космического апарата

)