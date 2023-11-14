 
 -- Нужно создать базу DB_UNEVERS и схему void. 
 
 CREATE TABLE DB_UNIVERSE.void.tb_galaxy (
 id INT IDENTITY(1,1) PRIMARY KEY, -- уникальный ключь
 create_date DATETIME, -- время созданя строки
 mass INT, -- вес галактики в солнечных масс
 core BIT CHECK (core = 0), -- ядро вселеной: 0 - нету, 1 - есть
 movement_stars VARCHAR(35) NOT NULL CHECK (
     movement_stars in (
         'Спиральные галактики',
         'Эллиптические галактики',
         'Линзовидные галактики',
         'Неправильные галактики',
         'Карликовые галактики',
         'Взаимодействующие галактики',
         'Активные галактические ядра (AGN)',
         'Радиогалактики',
         'Квазары',
         'Темные галактики'
         )
     ), -- типы галактик
 name VARCHAR(255) NULL, -- название галактики.

	 CONSTRAINT ck_galaxy CHECK (mass >= 550000 AND movement_stars <> ''),
	 
 )