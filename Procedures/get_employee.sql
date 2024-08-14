CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.get_employee
    @id INT,
    @name VARCHAR(255),
    @position VARCHAR(255),
    @email_address VARCHAR(255),
    @phone INT
AS
BEGIN
    SELECT tg.id
           tg.[name],
           tg.position,
           tg.email_address,
           tg.phone
    FROM DB_UNIVERSE.void.tb_employee te WITH(NOLOCK)
    WHERE tg.id = @id
    OR tg.name = @name
    OR tg.position = @position
    OR tg.email_address = @email_address
    OR tg.phone = @phone
END
