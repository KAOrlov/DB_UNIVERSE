CREATE TABLE DB_UNIVERSE.void.tb_expedition_options
(
    expedition_id VARCHAR(255) NOT NULL,
    planet_id INT NOT NULL,

    FOREIGN KEY (name_id) REFERENCES DB_UNIVERSE.void.tb_expedition (name_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)