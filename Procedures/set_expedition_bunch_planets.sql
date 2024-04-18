CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.set_expedition_bunch_planets
    @expedition_id VARCHAR(255),
    @planet_id BIT,
    @delete_hallmark BIT
    AS
    IF @delete_hallmark = 1
    BEGIN
        DELETE FROM DB_UNIVERSE.void.tb_expedition_bunch_planets ebp WITH(NOLOCK)
        WHERE ebp.expedition_id = @expedition_id
    END
    GO

    IF @delete_hallmark = 0
    AND @expedition_id <> ''
    BEGIN
        UPDATE DB_UNIVERSE.void.tb_expedition_bunch_planets ebp WITH(NOLOCK)
        SET
        ebp.expedition_id = @expedition_id,
        ebp.planet_id = @planet_id
    END
    GO

    IF @delete_hallmark = 0
    AND @expedition_id = ''
    BEGIN
        INSERT INTO DB_UNIVERSE.void.tb_expedition_bunch_planets WITH(NOLOCK)
        (
            expedition_id,
            planet_id
        )
        VALUES
        (
            @expedition_id,
            @planet_id
        )
    END
    GO