CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.get_expedition_bunch_planets
    @expedition_id VARCHAR(255) NOT NULL = '',
    @planet_id INT NOT NULL = -1
    AS
    SELECT
        ebp.expedition_id,
        ebp.planet_id
    FROM DB_UNIVERSE.void.tb_employee_expedition ebp WITH(NOLOCK)
    WHERE ebp.expedition_id = @expedition_id
