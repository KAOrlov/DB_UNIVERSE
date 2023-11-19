CREATE TABLE tb_stars_system (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    name_rus VARCHAR(50) NOT NULL, 
    name_latin VARCHAR(50) NOT NULL,
    galaxy_id INT NOT NULL,
    FOREIGN KEY (galaxy_id) REFERENCES DB_UNIVERSE.void.galaxy (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)