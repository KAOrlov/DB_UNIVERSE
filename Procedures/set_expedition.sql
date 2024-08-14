CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.set_expedition
    @name_id VARCHAR(255), -- название експидиции
    @employee_expedition_id VARCHAR(255), -- имя каманды
    @name_spacecraft_id VARCHAR(255), -- имя корабля
    @start_flight_time DATETIME2(0),
    @finish_flight_time DATETIME2(0),
    @delete_hallmark BIT
AS
IF @delete_hallmark = 1
BEGIN
    DELETE FROM DB_UNIVERSE.void.tb_expedition tx WITH(NOLOCK)
    WHERE tx.name_id = @name_id
END
GO

IF @delete_hallmark = 0
AND @name_id <> ''
BEGIN
    UPDATE DB_UNIVERSE.void.tb_expedition tx WITH(NOLOCK)
    SET tx.name_id = @name_id,
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
    INSERT INTO DB_UNIVERSE.void.tb_expedition WITH(NOLOCK)
    (
     name_id,
     employee_expedition_id,
     name_spacecraft_id,
     start_flight_time,
     finish_flight_time,
    delete_hallmark
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