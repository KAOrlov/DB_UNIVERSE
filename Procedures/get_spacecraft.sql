CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.set_spacecraft
    @name_id INT NOT NULL = -1
    AS
    SELECT
        ts.name_id,
        ts.break_spacecraf
    FROM DB_UNIVERSE.void.tb_spacecraft ts WITH(NOLOCK)
    WHERE ts.name_id = @id