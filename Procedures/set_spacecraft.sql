CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.set_spacecraft
    @name_id VARCHAR(255) NOT NULL = '',
    @break_spacecraft BIT NOT NULL = 1,
    @delete_hallmark BIT = 0
    AS
    IF @delete_hallmark = 1
       BEGIN
       DELETE FROM DB_UNIVERSE.void.tb_spacecraft ts WITH(NOLOCK)
       WHERE ts.id = @name_id
    END
    GO

    IF @delete_hallmark = 0
    AND @name_id <> ''
       BEGIN
          UPDATE DB_UNIVERSE.void.set_spacecraft ts WITH(NOLOCK)
          SET
              ts.name_id = @name_id,
              ts.break_spacecraft = @break_spacecraft
    END
    GO

    IF @delete_hallmark = 0
    AND @name_id = ''
        BEGIN
        INSERT INTO DB_UNIVERSE.void.tb_spacecraft WITH(NOLOCK)
            (
                name_id,
                break_spacecraft
            )
        VALUES
            (
            @name_id,
            @break_spacecraft
            )
        END
    GO