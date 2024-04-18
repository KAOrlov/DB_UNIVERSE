CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.get_expedition
    @name_id VARCHAR(255), -- название експидиции
    @employee_expedition_id, -- имя каманды
    @name_spacecraft_id VARCHAR(255), -- имя корабля
    @start_flight_time DATETIME2(0),
    @finish_flight_time DATETIME2(0)
    AS
    BEGIN
        SELECT
           tg.name_id,
           tg.employee_expedition_id,
           tg.name_spacecraft_id,
           tg.email_address,
           tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_expedition te WITH(NOLOCK)
        WHERE (tg.name_id = @name_id AND te.start_flight_time AND te.finish_flight_time)
        OR (tg.employee_expedition_id = @employee_expedition_id)
    END
    GO