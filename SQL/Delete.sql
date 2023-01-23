
-- First find the student id
select *
from students
where stu_first_name like 'Matt%'
;

select *
from students
where stu_id='stdX2000001008'
;

-- second, delete the student
delete
from students
where stu_id='stdX2000001008'
;

-- third, eliminate orphans
delete
from attendance
where att_stu_id='stdX2000001008'
;

delete
from transcripts
where trn_stu_id='stdX2000001008'
;

delete
from schedules
where ssc_stu_id='stdX2000001008'
;

-- finding orphaned attendance records

-- perfect attendence
select *
from students
left outer join attendance on stu_id=att_stu_id
where att_stu_id is NULL
;

-- finding orphans
-- joins are left outer join, right outer join, and full outer join

select*
from attendance
left outer join students on stu_id=att_stu_id
where stu_id is NULL
;

select * 
from students
join attendance on stu_id=att_stu_id
where stu_id in 
;

-- working with a subset of students to better observe results
select * 
from students
join attendance on stu_id=att_stu_id
where stu_last_name like 'Le%'
and stu_grade_level='12'
;

-- students with # of days absent
select stu_id, stu_first_name, stu_last_name, count(*)
from students
left outer join attendance on stu_id=att_stu_id
where stu_last_name like 'Le%'
and stu_grade_level='12'
group by stu_id, stu_first_name, stu_last_name
;

-- finding students with perfect attendance
select stu_id, stu_first_name, stu_last_name
from students
left outer join attendance on stu_id=att_stu_id
where stu_last_name like 'Le%'
and stu_grade_level='12'
and att_stu_id is null
;

select * 
from attendance
left outer join students on stu_id=att_stu_id
where stu_id is null
;

delete
from students
where stu_last_name like 'Z%'
;


-- Using IN
select * 
from students 
where stu_grade_level in ('01','02')
;
-- using In based on a sub-select
select * 
from students 
where stu_skl_id in (select skl_id from schools where skl_name like '%Elementary%')
;

-- this query finds all students not in an elementary school
select * 
from students 
where stu_skl_id not in (select skl_id from schools where skl_name like '%Elementary%')
;

-- Deleting orphans
-- this query takes too long to execute
delete attendance
from attendance
left outer join students on stu_id=att_stu_id
where stu_id is null
;

-- 2nd deleting orphans
delete
from attendance
where att_stu_id not in(select stu_id from students)
;

