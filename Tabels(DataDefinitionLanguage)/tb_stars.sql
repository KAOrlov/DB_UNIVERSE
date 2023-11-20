CREATE TABLE DB_UNIVERSE.void.tb_stars (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    name_rus VARCHAR(50) NOT NULL, 
    name_latin VARCHAR(50) NOT NULL, 
    stars_system_id INT NOT NULL,
    
    FOREIGN KEY (stars_system_id) REFERENCES DB_UNIVERSE.void.tb_stars_system (id)
)