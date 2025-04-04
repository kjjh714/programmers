-- 코드를 입력하세요
select year(sales_date) year, month(sales_date) month, gender, count(distinct(s.user_id)) users
from user_info ui join online_sale s on ui.user_id = s.user_id
where gender is not null
group by year, month, gender
order by year, month, gender
