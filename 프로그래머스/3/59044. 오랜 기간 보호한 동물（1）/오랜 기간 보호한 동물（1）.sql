-- 코드를 입력하세요
select i.name, i.datetime
from animal_ins i left join animal_outs o on i.animal_id = o.animal_id
where o.datetime is null
order by i.datetime
limit 3




-- ver.oracle
-- select i.name, i.datetime
-- from animal_ins i left join animal_outs o on i.animal_id = o.animal_id
-- where o.datetime is null
-- order by i.datetime asc
-- fetch next 3 rows only;