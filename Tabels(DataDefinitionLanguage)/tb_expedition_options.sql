CREATE TABLE DB_UNIVERSE.void.tb_expedition_options
(
    name_id VARCHAR(255) NOT NULL, -- название експидиции
    create_date DATETIME2(0) NOT NULL, -- время созданя строки
    head VARCHAR(255) NOT NULL, -- название что что прислал иил првез карабаль
    description VARCHAR(8000) NOT NULL, -- описание что привзли сылки.

    FOREIGN KEY (name_id) REFERENCES DB_UNIVERSE.void.tb_expedition (name_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)