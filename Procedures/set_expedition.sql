CREATE OR ALTER DB_UNIVERSE.void.tb_expedition.sql
    @name_id VARCHAR(255) NOT NULL = '', -- название експидиции
    @employee_expedition_id VARCHAR(255) NOT NULL = '', -- имя каманды
    @name_spacecraft_id VARCHAR(255) NOT NULL = '', -- имя корабля
    @start_flight_time DATETIME2(0) NOT NULL = '1900-01-01 00:00:00',
    @finish_flight_time DATETIME2(0) NOT NULL = '1900-01-01 00:00:00',
    @delete_hallmark BIT = 0

    IF @delete_hallmark = 1
    BEGIN
    DELETE FROM DB_UNIVERSE.void.tb_expedition tx WITH(NOLOCK)
    WHERE ts.id = @name_id
    END
    GO

    IF @delete_hallmark = 0
    AND @name_id <> ''
    BEGIN
    UPDATE DB_UNIVERSE.void.tb_expedition tx
       SET
           tx.name_id = @name_id,
           tx.employee_expedition_id = @employee_expedition_id,
           tx.name_spacecraft_id = @name_spacecraft_id,
           tx.start_flight_time = @start_flight_time,
           tx.finish_flight_time = @finish_flight_time,
           tx.delete_hallmark = @delete_hallmark
    END
    GO

    IF @delete_hallmark = 0
    AND @name_id = ''
    BEGIN
    INSERT INTO DB_UNIVERSE.void.tb_expedition
    (
        name_id,
        employee_expedition_id,
        name_spacecraft_id,
        start_flight_time,
        finish_flight_time,
        @delete_hallmark
    )
    VALUES
    (
        @name_id,
        @employee_expedition_id,
        @name_spacecraft_id,
        @start_flight_time,
        @finish_flight_time,
        @delete_hallmark
    )
    END
    GO