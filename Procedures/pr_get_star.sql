CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_get_star
    @id INT NOT NULL
AS
BEGIN
    SELECT  id, 
            name_rus,
            name_latin
    FROM void.tb_stars s WITH (NOLOCK)
    WHERE s.id = @id
END