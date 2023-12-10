CREATE TABLE DB_UNIVERSE.void.tb_stars_galaxy (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    galaxy_id INT NOT NULL,
    star_id INT NOT NULL,
    
    FOREIGN KEY (galaxy_id) REFERENCES DB_UNIVERSE.void.tb_galaxy (id)
    FOREIGN KEY (star_id) REFERENCES DB_UNIVERSE.void.tb_stars (id)
)