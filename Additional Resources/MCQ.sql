select * from md_water_services.employee where employee_name = 'Bello Azibo';

select * from md_water_services.employee where position like 'Micro%';

-- select * from md_water_services.water_source where type_of_water_source like 'shared%' order by number_of_people_served desc;

select pop_n, pop_u from md_water_services.global_water_access where name = 'Maji Ndogo';

SELECT *
FROM employee
WHERE position = 'Civil Engineer' AND province_name = 'Dahabu' OR address LIKE '%Avenue%';

SELECT *
FROM employee
WHERE position = 'Civil Engineer' AND (province_name = 'Dahabu' OR address LIKE '%Avenue%');

SELECT *
FROM md_water_services.employee
WHERE (phone_number LIKE '%86%' OR phone_number LIKE '%11%')
AND (employee_name LIKE '% A%' OR employee_name LIKE '% M%')
AND position = 'Field Surveyor';


SELECT count(*) as well_poll
FROM md_water_services.well_pollution
WHERE description LIKE 'Clean_%' OR results = 'Clean' AND biological < 0.01;

SELECT *
FROM well_pollution
WHERE description LIKE 'Clean_%' OR results = 'Clean' AND biological < 0.01;

-- SELECT * FROM md_water_services.water_quality WHERE visit_count >= 2 AND subjective_quality_score = 10;


SELECT count(*) as well_poll_2
FROM md_water_services.well_pollution
WHERE description
IN ('Parasite: Cryptosporidium', 'biologically contaminated')
OR (results = 'Clean' AND biological > 0.01);

SELECT *
FROM md_water_services.well_pollution
WHERE description
IN ('Parasite: Cryptosporidium', 'biologically contaminated')
OR (results = 'Clean' AND biological > 0.01);