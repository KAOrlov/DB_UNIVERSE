CREATE TABLE DB_UNIVERSE.void.tb_cat_values (
    id_object INT NOT NULL, 
    id_property INT NOT NULL,
    value_prop VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_object) REFERENCES DB_UNIVERSE.void.tb_planets (id)
    FOREIGN KEY (id_object) REFERENCES DB_UNIVERSE.void.tb_ stars (id)
    FOREIGN KEY (id_object) REFERENCES DB_UNIVERSE.void.tb_stars_system (id)
    FOREIGN KEY (id_property) REFERENCES DB_UNIVERSE.void.tb_cat_properties (id) 
)


