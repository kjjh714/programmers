-- 코드를 입력하세요
select o.animal_id, o.name
from animal_ins i join animal_outs o on i.animal_id = o.animal_id
order by datediff(o.datetime, i.datetime) desc
limit 2;