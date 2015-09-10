select * 
from dbo.stud_grade 
where stud_id > 0401030101 
	and course_id = 0401010103

select * 
from dbo.stud_grade g 
inner join dbo.teacher_info t 
on g.course_id = t.course_id 
where t.teacher_id = 010103

select stud_id,name,birthday 
from dbo.stud_info s 
inner join (select year(birthday) as y,stud_id as id 
			from dbo.stud_info si 
			where si.stud_id = 0401040112) as si
on s.stud_id = si.id and year(s.birthday) = si.y

select COUNT(g.stud_id) as 'studentCount',t.name as 'teacherName'
from dbo.stud_grade g 
inner join dbo.teacher_info t 
on g.course_id = t.course_id
where g.course_id = 0401010105
group by t.name

select t.name,d.deptname
from dbo.teacher_info t
inner join dbo.teach_schedule s
on t.teacher_id = s.teacher_id
inner join dbo.dept_code d
on s.deptcode = d.deptcode

select AVG(grade)
from dbo.stud_grade
where course_id = 0401010106

select top 1 stud_id,course_id
from dbo.stud_grade
order by grade desc

update dbo.stud_grade
set grade = grade + 5
where course_id = 0401010106

select stud_id,name
from dbo.stud_info
where mark > 570 and mark <600 

select g.grade
from dbo.teacher_info t
inner join dbo.stud_grade g
on t.course_id = g.course_id
where t.name = 'ÍõĞ¡ÔÃ'

select *
from dbo.stud_info
order by mark desc

select top 3 stud_id,course_id
from dbo.stud_grade
order by grade desc