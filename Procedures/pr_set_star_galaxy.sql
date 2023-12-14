CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.pr_set_stars_galaxy
    @galaxy_id INT NOT NULL, 
    @star_id INT NOT NULL,
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
            WHERE g.id = @galaxy_ids
        )
    BEGIN 
        MERGE void.tb_stars_galaxy tgt
        USING 
        (
            VALUES
            (
                @galaxy_id,
                @star_id
            )
        ) as src (galaxy_id, star_id)
        ON src.star_id = tgt.star_id
        WHEN MATCHED THEN
        UPDATE 
        SET 
        tgt.galaxy_id = src.galaxy_id,
        WHEN NOT MATCHED THEN
        INSERT
        (
            galaxy_id,
            star_id
        )
        VALUES
        (
            src.galaxy_id,
            src.star_id
        );
    END
END
