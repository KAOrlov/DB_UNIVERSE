CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.get_expedition
    @name_id VARCHAR(255) NOT NULL = '', -- название експидиции
    @employee_expedition_id VARCHAR(255) NOT NULL = '', -- имя каманды
    @name_spacecraft_id VARCHAR(255) NOT NULL = '', -- имя корабля
    @start_flight_time DATETIME2(0) NOT NULL = '1900-01-01 00:00:00',
    @finish_flight_time DATETIME2(0) NOT NULL = '1900-01-01 00:00:00',
    AS
    IF @name_id <> ''
    BEGIN
        SELECT
           tg.name_id,
           tg.employee_expedition_id,
           tg.name_spacecraft_id,
           tg.email_address,
           tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_expedition te WITH(NOLOCK)
        WHERE tg.name_id = @name_id AND te.start_flight_time AND te.finish_flight_time
    END
    GO

    IF @employee_expedition_id <> ''
    BEGIN
        SELECT
            tg.name_id,
            tg.employee_expedition_id,
            tg.name_spacecraft_id,
            tg.email_address,
            tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_expedition te WITH(NOLOCK)
        WHERE tg.employee_expedition_id = @employee_expedition_id
    END
    GO