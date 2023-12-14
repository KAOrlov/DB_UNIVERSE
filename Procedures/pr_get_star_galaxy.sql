CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_get_star_galaxy
    @star_id INT NOT NULL
AS
BEGIN
    SELECT  sg.galaxy_id,
            sg.star_id,
    FROM void.tb_stars_galaxy sg WITH (NOLOCK)
    WHERE sg.star_id  = @star_ids
END
