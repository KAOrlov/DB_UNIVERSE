#Выбрать галактики с звёздными системами с массой более N(любое число)
DECLARE @mass INT

SELECT tg.*
FROM DB_UNIVERSE.void.tb_galaxy tg WITH(NOLOCK)
WHERE tg.id in (
                SELECT tss.galaxy_id
                FROM DB_UNIVERSE.void.tb_stars_system tss WITH(NOLOCK)
                WHERE tss.mass > @mass
               )
GO

#Вывести галактики у которых есть звёздные системы без планет
SELECT tg.*
FROM DB_UNIVERSE.void.tb_galaxy tg WITH(NOLOCK)
WHERE tg.id IN (
                SELECT tss.galaxy_id
                FROM DB_UNIVERSE.void.tb_stars_system tss WITH(NOLOCK)
                WHERE NOT EXISTS
                                (
                                 SELECT 1
                                 FROM DB_UNIVERSE.void.tb_planets tp WITH(NOLOCK)
                                 WHERE tss.planets_id = tp.id
                                )
               )
GO
