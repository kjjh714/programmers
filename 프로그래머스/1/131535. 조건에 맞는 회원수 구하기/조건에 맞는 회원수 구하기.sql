-- 코드를 입력하세요
select count(user_id) users
from user_info
where to_char(joined, 'yyyy-mm-dd') between '2021-01-01' and '2021-12-31'
-- where to_char(joined, 'yyyy-mm-dd') like '2021%';
    and age between 20 and 29;


