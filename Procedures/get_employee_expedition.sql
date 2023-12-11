CREATE OR ALTER PROCEDURE DB_UNIVERSE.void.tb_employee_expedition
    @name_id VARCHAR(255) NOT NULL,
    @employee_id VARCHAR(255) NOT NULL,
    AS
    SELECT
        tee.name_id,
        tee.employee_id
    FROM DB_UNIVERSE.void.tb_employee_expedition tee WITH(NOLOCK)
    WHERE tee.name_id
