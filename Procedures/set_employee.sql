CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.set_employee
    @id INT,
    @name VARCHAR(255),
    @position VARCHAR(255),
    @email_address VARCHAR(255),
    @phone INT,
    @delete_hallmark BIT
    AS
    BEGIN
        DELETE FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
        WHERE tg.id = @id
        END
    GO

    IF @delete_hallmark = 0 AND @id <> -1
    BEGIN
        UPDATE DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
        SET
           tg.[name] = @name,
           tg.position = @position,
           tg.email_address = @email_address,
           tg.phone = @phone
    END
    GO

    IF @delete_hallmark = 0 AND @id = -1
    BEGIN
        INSERT INTO DB_UNIVERSE.void.tb_employee WITH(NOLOCK)
            (
                [name],
                position,
                email_address,
                phone
            )
        VALUES
            (
                @name,
                @position,
                @email_address,
                @phone
            )
        END
    END
    GO