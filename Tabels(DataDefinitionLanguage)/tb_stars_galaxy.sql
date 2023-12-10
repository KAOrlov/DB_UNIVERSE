CREATE TABLE DB_UNIVERSE.void.tb_stars_galaxy (
    galaxy_id INT NOT NULL,
    star_id INT NOT NULL,
    
    FOREIGN KEY (galaxy_id) REFERENCES DB_UNIVERSE.void.tb_galaxy (id)
    FOREIGN KEY (star_id) REFERENCES DB_UNIVERSE.void.tb_stars (id)
)