CREATE TABLE DB_UNIVERSE.void.tb_planets (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    name VARCHAR(50) NOT NULL,
    galaxy_id INT NOT NULL

    FOREIGN KEY (galaxy_id) REFERENCES DB_UNIVERSE.void.tb_galaxy (id)
)