CREATE TABLE DB_UNIVERSE.void.tb_spacecraft_options
(
    spacecraft_id VARCHAR(255) NOT NULL,
    create_date DATETIME2(0) NOT NULL, -- время созданя строки
    title VARCHAR(255) NOT NULL, -- заголовок характиристик
    description VARCHAR(8000) NOT NULL, -- описания характиристик

    FOREIGN KEY (spacecraft_id) REFERENCES DB_UNIVERSE.void.tb_spacecraft(name_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE SPACECRAFT INDEX CIX_SPACECRAFTID ON DB_UNIVERSE.void.tb_spacecraft_options (spacecraft_id);
