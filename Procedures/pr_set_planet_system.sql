CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_set_planet_system
    @galaxy_id INT NOT NULL, 
    @star_id INT NOT NULL,
    @planet_id INT NOT NULL,
AS
BEGIN
    IF EXISTS (
              SELECT 1
              FROM void.tb_stars s
              WHERE s.id = @star_id
              )
        AND EXISTS (
            SELECT 1
            FROM void.tb_galaxy g
            WHERE g.id = @galaxy_id
        )
        AND EXISTS (
            SELECT 1
            FROM void.tb_planet p
            WHERE p.id = @planet_id
        )
    BEGIN 
        MERGE void.tb_planet_system tgt
        USING 
        (
            VALUES
            (
                @galaxy_id,
                @star_id,
                @planet_id
            )
        ) as src (galaxy_id, star_id, planet_id)
        ON src.planet_id = tgt.planet_id
        WHEN MATCHED THEN
        UPDATE 
        SET 
        tgt.galaxy_id = src.galaxy_id,
        tgt.star_id = src.star_id
        WHEN NOT MATCHED THEN
        INSERT
        (
            galaxy_id,
            star_id,
            planet_id
        )
        VALUES
        (
            src.galaxy_id,
            src.star_id,
            src.planet_id
        );
    END
END
