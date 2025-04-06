-- 코드를 입력하세요
# 2021 가입한 회원 158명, (user_id 중복제거)total puchased_users 83, 월별 user_id 중복제거 건수 94
select year(sales_date) year, month(sales_date) month, count(distinct s.user_id) purchased_users,
    round(count(distinct s.user_id)/(select count(distinct user_id) from user_info where joined like '2021%'), 1) purchased_ratio
from user_info i join online_sale s on i.user_id = s.user_id
where joined like '2021%'
group by year, month
order by year, month