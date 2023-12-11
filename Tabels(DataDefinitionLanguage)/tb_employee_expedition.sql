CREATE TABLE DB_UNIVERSE.void.tb_employee_expedition
(
    name_id VARCHAR(255) UNIQUE NOT NULL, -- название команды
    employee_id VARCHAR(255) NOT NULL -- id сотрудника
);
CREATE INDEX CIX_EMPLOYEEID ON DB_UNIVERSE.void.tb_employee_expedition (name_id);