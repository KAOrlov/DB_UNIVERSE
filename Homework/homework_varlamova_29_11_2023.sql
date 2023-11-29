--Выбрать звёздные системы, у которых есть и звезда и планета 

SELECT tss.*
FROM DB_UNIVERSE.void.tb_stars_system tss WITH (NOLOCK)
WHERE EXISTS ( 
                SELECT 1 
                FROM DB_UNIVERSE.void.tb_stars ts WITH (NOLOCK) 
                WHERE tss.id = ts.star_system_id
             )
AND EXISTS (
                SELECT 1 
                FROM DB_UNIVERSE.void.tb_planets tp WITH (NOLOCK) 
                WHERE tss.id = tp.star_system_id
           )


--Выбрать планеты только тех галактик, у которых масса галактики больше N(любое число) 
DECLARE @n int
SET @n = 100

SELECT tp.*
FROM DB_UNIVERSE.void.tb_planets tp WITH (NOLOCK) 
WHERE EXISTS (
                SELECT tss.* 
                FROM DB_UNIVERSE.void.tb_stars_system tss WITH (NOLOCK)
                WHERE tss.id = tp.star_system_id
                AND EXISTS (
                    SELECT tg.* 
                    FROM DB_UNIVERSE.void.tb_galaxy tg WITH (NOLOCK)
                    WHERE tss.galaxy_id = tg.id 
                    AND tg.mass > @n
                )
             )


