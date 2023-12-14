CREATE OR ALTER VIEW void.vw_expedition_objects
AS
Select p.id,
       p.name,
       'planet' as object_class
FROM void.tb_planets p WITH (NOLOCK)
UNION ALL
Select s.id,
       s.name_rus as name,
       'star' as object_class
FROM void.tb_stars s WITH (NOLOCK)