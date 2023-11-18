-- Нужно создать базу DB_UNEVERS и схему void.

CREATE TABLE DB_UNIVERSE.void.galaxy (
    id INT IDENTITY(1,1) PRIMARY KEY, -- уникальный ключь
    create_date DATETIME2(0), -- время созданя строки
    mass INT, -- вес галактики в солнечных масс
    core BIT CHECK (core = 0), -- ядро вселеной: 0 - нету, 1 - есть
    movement_stars VARCHAR(35) NOT NULL CHECK (
        movement_stars in(
            'Спиральные галактики',
            'Эллиптические галактики',
            'Линзовидные галактики',
            'Неправильные галактики',
            'Карликовые галактики',
            'Взаимодействующие галактики',
            '',
            '',
            ''
            )
        ), -- как движутся солнечные массы в нутри вселеной.
    name VARCHAR(255) NULL, -- название галактики.

    CONSTRAINT ck_galaxy CHECK (mass >= 550000 AND movement_stars <> '')

    );

CREATE GALAXYID INDEX CIX_GALAXYID ON DB_UNIVERSE.void.galaxy (id);
