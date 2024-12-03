-- Агрегирующие функции 
SELECT name, regions, cities,
SUM(regions) OVER (PARTITION BY name) AS sum_regions,
AVG(regions) OVER (PARTITION BY name) AS avg_regions,
COUNT(regions) OVER (PARTITION BY name) AS count_regions,
MIN(regions) OVER (PARTITION BY name) AS min_regions,
MAX(regions) OVER (PARTITION BY name) AS max_regions
FROM regions_world;

-- Ранжирующие функции 
SELECT name, regions, cities,
ROW_NUMBER() OVER (PARTITION BY name ORDER BY regions DESC),
RANK() OVER (PARTITION BY name ORDER BY regions DESC),
DENSE_RANK() OVER (PARTITION BY name ORDER BY regions DESC)
FROM regions_world;


-- Функции смещения 
SELECT name, regions, cities,
LAG(regions) OVER (ORDER BY name),
LEAD(regions) OVER (ORDER BY name)
FROM regions_world;
