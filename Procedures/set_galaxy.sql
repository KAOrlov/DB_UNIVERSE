CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.set_galaxy
    @id INT,
    @mass INT,
    @core BIT,
    @movement_stars VARCHAR(35),
    @name VARCHAR(255),
    @delete_hallmark BIT
AS
IF @delete_hallmark = 1
BEGIN
    DELETE FROM DB_UNIVERSE.void.tb_galaxy tg WITH(NOLOCK)
    WHERE tg.id = @id
END
GO

IF @delete_hallmark = 0
AND @id <> -1
BEGIN
    UPDATE DB_UNIVERSE.void.tb_galaxy tg WITH(NOLOCK)
    SET tg.mass = @mass,
        tg.core = @core,
        tg.movement_stars = @movement_stars,
        tg.[name] = @name
END
GO

IF @delete_hallmark = 0
AND @id = -1
BEGIN
    INSERT INTO DB_UNIVERSE.void.tb_galaxy WITH(NOLOCK)
        (
         mass,
         core,
         movement_stars,
         [name]
        )
    VALUES
        (
         @mass,
         @core,
         @movement_stars,
         @name
        )
END
GO

