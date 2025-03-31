-- 코드를 입력하세요
select hour(datetime) as hour, count(*) as count
from animal_outs
group by hour
having hour between 9 and 19
order by hour

-- ver.oracle
# select to_number(to_char(datetime, 'hh24')) hour, count(*) as count
# from animal_outs
# where to_char(datetime, 'hh24') between 09 and 19
# group by to_char(datetime, 'hh24')
# order by hour