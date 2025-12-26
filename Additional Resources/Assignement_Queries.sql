SELECT *
FROM md_water_services.data_dictionary
WHERE column_name = 'type_of_water_source';

SELECT type_of_water_source
FROM md_water_services.water_source;

SELECT distinct type_of_water_source 
FROM md_water_services.water_source;

SELECT *
FROM md_water_services.data_dictionary
WHERE column_name = 'time_in_queue';

describe visits;

SELECT *
FROM md_water_services.visits
WHERE time_in_queue > 500;

SELECT *
FROM md_water_services.visits
WHERE time_in_queue = 0;

SELECT *
FROM md_water_services.water_source
WHERE source_id
IN (
'AkKi00881224',
'HaRu17137224',
'AmRu13488224',
'AkLu02523224',
'AkRu02691224',
'HaRu19006224',
'AmDa12121224',
'SoRu37635224',
'SoRu36096224'
);

SELECT *
FROM md_water_services.water_source
WHERE source_id
IN (
'AkRu05234224',
'KiRu28520224',
'HaZa21742224',
'AmDa12214224',
'HaRu19725224',
'AkKi00851224',
'AmDa11956224',
'SoRu35703224',
'HaRu17502224',
'AkHa00070224',
'HaSe21263224',
'HaSe21346224'
);

SELECT *
FROM md_water_services.water_quality
WHERE subjective_quality_score = 10 
AND visit_count = 2;


SELECT *
FROM md_water_services.well_pollution
LIMIT 5;

SELECT *
FROM md_water_services.well_pollution
WHERE results = 'Clean'
AND biological > 0.01;

SELECT COUNT(*)
FROM md_water_services.well_pollution
WHERE description LIKE 'Clean_%';

SELECT *
FROM md_water_services.well_pollution
WHERE description LIKE 'Clean_%';



SELECT
*
FROM
well_pollution
WHERE
description LIKE "Clean_%"
OR (results = "Clean" AND biological > 0.01);

SELECT * FROM water_quality WHERE visit_count >= 2 AND subjective_quality_score = 10;

SELECT count(*)
FROM well_pollution
WHERE description LIKE 'Clean_%' OR results = 'Clean' AND biological < 0.01;


/*
CREATE TABLE
	md_water_services.well_pollution_copy
AS 
(
	SELECT
		*
	FROM
		md_water_services.well_pollution
);
*/


/*
DROP TABLE
	md_water_services.well_pollution_copy;
*/

/*
UPDATE
md_water_services.well_pollution
SET
description = 'Bacteria: E. coli'
WHERE
description = 'Clean Bacteria: E. coli';

UPDATE
md_water_services.well_pollution
SET
description = 'Bacteria: Giardia Lamblia'
WHERE
description = 'Clean Bacteria: Giardia Lamblia';

UPDATE
md_water_services.well_pollution
SET
results = 'Contaminated: Biological'
WHERE
biological > 0.01 AND results = 'Clean';
*/

SELECT
*
FROM
md_water_services.well_pollution
WHERE
description LIKE "Clean_%"
OR (results = "Clean" AND biological > 0.01);

