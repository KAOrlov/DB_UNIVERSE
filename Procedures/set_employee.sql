CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.tb_employee
    @id INT NOT NULL = -1,
    @name VARCHAR(255) NOT NULLL = '',
    @position VARCHAR(255) NOT NULL = '',
    @email_address VARCHAR(255) NOT NULL = '',
    @phone INT NOT NULL = 0,
    @delete_hallmark BIT = 0
    AS
    IF @delete_hallmark = 1
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