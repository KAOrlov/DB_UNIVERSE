CREATE TABLE DB_UNIVERSE.void.tb_employee
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, -- ID сотруднка
    create_date DATETIME2(0) NOT NULL,
    fio VARCHAR(255) NOT NULL, -- имя сотрудника
    position VARCHAR(255) NOT NULL, -- должность сотрудника
    email_address VARCHAR(255) NOT NULL,
    phone INT NOT NULL
);
