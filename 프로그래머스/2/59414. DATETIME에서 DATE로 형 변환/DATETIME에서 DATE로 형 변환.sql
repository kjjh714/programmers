-- 코드를 입력하세요
select animal_id, name, to_char(datetime, 'YYYY-MM-DD') 날짜
from animal_ins
order by animal_id;