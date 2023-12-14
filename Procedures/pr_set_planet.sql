CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_set_planet
    @id INT NOT NULL, 
    @name VARCHAR(50) NOT NULL,
    @galaxy_id INT NOT NULL
AS
BEGIN
    IF EXISTS (
                SELECT 1
                FROM void.tb_galaxy p
                WHERE p.id = @galaxy_id
              )
    BEGIN
        IF NOT EXISTS (
                    SELECT 1
                    FROM void.tb_planets p
                    WHERE p.id = @id
                    )
        BEGIN 
            INSERT INTO void.tb_planets (
                id, 
                name,
                galaxy_id
            )
            VALUES (
                @id,
                @name,
                @galaxy_id
            )
        END
        ELSE
            UPDATE p
            SET name =  @name,
                galaxy_id =  @galaxy_id
            FROM void.tb_planets p
            WHERE p.id = @id
        END
    END
END
