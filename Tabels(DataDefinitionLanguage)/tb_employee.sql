CREATE TABLE DB_UNIVERSE.void.tb_employee
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, -- ID сотруднка
    FIO VARCHAR(255) NOT NULL, -- имя сотрудника
    position VARCHAR(255) NOT NULL -- должность сотрудника
);
CREATE EMPLOYEEID INDEX CIX_EMPLOYEEID ON DB_UNIVERSE.void.tb_employee (name_id);
