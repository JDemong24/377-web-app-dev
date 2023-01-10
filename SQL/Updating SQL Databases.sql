select *
from teachers
where tch_first_name='Catherine' and tch_last_name='Bennett'
;

-- without safe mode, you have no restrictions on what you can update, which is dangerous because you can permanently damage the database
update teachers
set tch_last_name='Polk'
where tch_first_name='Catherine' and tch_last_name='Bennett'
;

-- if you make an accidental update, you need to reload the database you are using.
-- this is a safer version because it uses the teacher ID, which is unique for every teacher
update teachers
set tch_last_name='Polk'
where tch_id='stfX2000001634'
;


select * 
from schools;

-- updating records of schools to show the grade levels they go through
update schools
set skl_level='K-12'
where skl_level='All Levels';

update schools
set skl_level='K-4'
where skl_level='Elementary';

update schools
set skl_level='5-8'
where skl_level='Middle';

update schools
set skl_level='9-12'
where skl_level='High';

-- another method of doing this
update schools
set skl_level='K-12'
where skl_name like '%';

update schools
set skl_level='K-4'
where skl_name like '%Elementary%';

update schools
set skl_level='5-8'
where skl_name like '%Middle%';

update schools
set skl_level='9-12'
where skl_name like '%High%';