CREATE TABLE DB_UNIVERSE.void.tb_planet_system (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    planet_id INT NOT NULL,
    star_id INT NOT NULL,
    
    FOREIGN KEY (planet_id) REFERENCES DB_UNIVERSE.void.tb_planets (id)
    FOREIGN KEY (star_id) REFERENCES DB_UNIVERSE.void.tb_stars (id)
)