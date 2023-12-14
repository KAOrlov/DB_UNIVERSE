CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_get_planet
    @id INT NOT NULL
AS
BEGIN
    SELECT  id, 
            name,
            galaxy_id
    FROM void.tb_planets WITH (NOLOCK)
    WHERE id = @id
END