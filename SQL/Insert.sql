-- Inserting records into a table
insert 
into sis.students (stu_id, stu_first_name, stu_last_name, stu_grade_Level)
values ('btc001', 'Brian','Ciccolo', '12')
;

select *
from students
where stu_id='btc001'
;