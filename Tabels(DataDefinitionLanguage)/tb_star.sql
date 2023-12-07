CREATE TABLE tb_stars (
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    name_rus VARCHAR(50) NOT NULL, 
    name_latin VARCHAR(50) NOT NULL, 
    galaxy_name VARCHAR(50) NOT NULL,
    radial_speed DECIMAL(10, 4) NULL, 
    temperature INT NOT NULL, 
    distance INT NOT NULL,
    single_star BIT NOT NULL -- одна звезда в созвездии 
)