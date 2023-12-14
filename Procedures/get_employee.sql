CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.get_employee
    @id INT NOT NULL = -1,
    @name VARCHAR(255) NOT NULLL = '',
    @position VARCHAR(255) NOT NULL = '',
    @email_address VARCHAR(255) NOT NULL = '',
    @phone INT NOT NULL = 0,
    AS
    IF @id <> -1
    BEGIN
        SELECT
            tg.id
            tg.[name],
            tg.position,
            tg.email_address,
            tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
        WHERE tg.id = @id
    END
    GO

    IF @name <> ''
    BEGIN
        SELECT
            tg.id
            tg.[name],
            tg.position,
            tg.email_address,
            tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
        WHERE tg.name = @name
    END
    GO

    IF @position <> ''
    BEGIN
        SELECT
            tg.id
            tg.[name],
            tg.position,
            tg.email_address,
            tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
        WHERE tg.position = @position
    END
    GO

    IF @email_address <> ''
    BEGIN
        SELECT
           tg.id
           tg.[name],
           tg.position,
           tg.email_address,
           tg.phone = @phone
           FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
           WHERE tg.email_address = @email_address
    END
    GO

    IF @phone <> 0
    BEGIN
        SELECT
            tg.id
            tg.[name],
            tg.position,
            tg.email_address,
            tg.phone = @phone
        FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
        WHERE tg.phone = @phone
    END
    GO