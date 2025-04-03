-- 코드를 입력하세요
select ao.animal_id, ao.name
from animal_ins ai right join animal_outs ao on ai.animal_id = ao.animal_id
where ai.animal_id is null
order by ao.animal_id



# select o.animal_id, o.name
# from animal_ins i right join animal_outs o on o.animal_id = i.animal_id
# where o.animal_id is not null and i.animal_id is null
# order by o.animal_id