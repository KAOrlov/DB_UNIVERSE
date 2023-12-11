CREATE TABLE DB_UNIVERSE.void.tb_stars_galaxy (
    galaxy_id INT NOT NULL,
    star_id INT NOT NULL
    
    CONSTRAINT PK_galaxy_star PRIMARY KEY(galaxy_id, star_id)
    FOREIGN KEY (galaxy_id) REFERENCES DB_UNIVERSE.void.tb_galaxy (id)
    FOREIGN KEY (star_id) REFERENCES DB_UNIVERSE.void.tb_stars (id)
)