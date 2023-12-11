CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.tb_employee_expedition
    @name_id VARCHAR(255) NOT NULL = '',
    @employee_id VARCHAR(255) NOT NULL = '',
    @delete_hallmark BIT = 0
    AS
    IF @delete_hallmark = 1
    BEGIN
        DELETE FROM DB_UNIVERSE.void.tb_employee_expedition tee WITH(NOLOCK)
    WHERE tee.name_id = @name_id
    END
    GO

    IF @delete_hallmark = 0
    AND @name_id <> ''
    BEGIN
        UPDATE DB_UNIVERSE.void.tb_employee_expedition tee WITH(NOLOCK)
        SET
            tee.name_id = @name_id,
            tee.employee_id = @employee_id,
    END
    GO

    IF @delete_hallmark = 0
    AND @name_id = ''
    BEGIN
    INSERT INTO DB_UNIVERSE.void.tb_employee_expedition WITH(NOLOCK)
        (
            name_id,
            employee_id
        )
    VALUES
        (
            @name_id,
            @employee_id
        )
    END
    GO