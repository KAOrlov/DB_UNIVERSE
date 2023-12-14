CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_set_star
    @id INT NOT NULL, 
    @name_rus VARCHAR(50) NOT NULL,
    @name_latin VARCHAR(50) NOT NULL
AS
BEGIN
    IF NOT EXISTS (
              SELECT 1
              FROM void.tb_stars s
              WHERE s.id = @id
              )
    BEGIN 
        INSERT INTO void.tb_stars (
            id, 
            name_rus,
            name_latin
        )
        VALUES (
            @id,
            @name_rus,
            @name_latin
        )
    END
    ELSE
        UPDATE s
        SET name_rus = @name_rus,
            name_latin = @name_latin
        FROM void.tb_stars s
        WHERE s.id = @id
    END
END
