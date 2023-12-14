CREATE OR ALTER VIEW DB_UNIVERSE.void.vw_object_universe
    AS
    SELECT
        tsg.galaxy_id,
        ts.[name] AS object_name,
        'star' AS type_object,
        0 AS wandering
    FROM DB_UNIVERSE.void.tb_stars_galaxy tsg WITH(NOLOCK)
    INNER JOIN DB_UNIVERSE.void.tb_stars ts WITH(NOLOCK)
        ON tsg.star_id = ts.id
    UNION
    SELECT
        -1 AS galaxy_id,
        ts.[name] AS object_name,
        'star' AS type_object,
        1 AS wandering
    FROM DB_UNIVERSE.void.tb_stars ts WITH(NOLOCK)
    WHERE NOT EXISTS
        (
            SELECT 1
            FROM DB_UNIVERSE.void.tb_stars_galaxy tsg WITH(NOLOCK)
            WHERE tsg.star_id = ts.id
        )
    UNION
    SELECT
        tps.galaxy_id,
        tp.[name] AS object_universe,
        'planet' AS type_object,
        0 AS wandering
    FROM DB_UNIVERSE.void.tb_planet_system tps WITH(NOLOCK)
    INNER JOIN DB_UNIVERSE.void.tb_planet tp WITH(NOLOCK)
        ON tps.planet_id = ts.id
    UNION
    SELECT
        -1 AS galaxy_id,
        ts.[name] AS object_name,
        'star' AS type_object,
        1 AS wandering
    FROM DB_UNIVERSE.void.tb_planet tp WITH(NOLOCK)
    WHERE NOT EXISTS
        (
            SELECT 1
            FROM DB_UNIVERSE.void.tb_planet_system tsg WITH(NOLOCK)
            WHERE tsg.star_id = ts.id
        )
