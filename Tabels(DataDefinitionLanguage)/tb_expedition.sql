CREATE TABLE DB_UNIVERSE.void.tb_expedition
(
    name_id VARCHAR(255) UNIQUE NOT NULL, -- название експидиции
    create_date DATETIME2(0) NOT NULL, -- время созданя строки
    employee_expedition_id VARCHAR(255) NOT NULL, -- имя каманды
    start_flight_time DATETIME2(0) NOT NULL,
    finish_flight_time DATETIME2(0) NOT NULL,
    FOREIGN KEY (employee_expedition_id) REFERENCES DB_UNIVERSE.void.tb_employee_expedition.sql (name_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)