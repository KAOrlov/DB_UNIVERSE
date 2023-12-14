CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_get_planet_system
    @planet_id INT NOT NULL
AS
BEGIN
    SELECT  ps.galaxy_id,
            ps.star_id,
            ps.planet_id
    FROM void.tb_planet_system ps WITH (NOLOCK)
    WHERE ps.planet_id  = @planet_id
END
