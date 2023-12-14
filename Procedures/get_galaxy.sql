CREATE OR ALTER PROCEDURE void.get_galaxy
    @galaxy INT = ''
    AS
    SELECT
        tg.id,
        tg.mass,
        tg.core,
        tg.movement_stars,
        tg.[name]
    FROM DB_UNIVERSE.void.tb_galaxy tg WITH(NOLOCK)
    WHERE tg.id = @galaxy