-- 코드를 입력하세요
with history as 
(select *, datediff(end_date, start_date) + 1 diff, 
    case
        when datediff(end_date, start_date) + 1 >= 90 then '90일 이상'
        when datediff(end_date, start_date) + 1 >= 30 then '30일 이상'
        when datediff(end_date, start_date) + 1 >= 7 then '7일 이상'
        else 0
    end as duration_type
from car_rental_company_rental_history)


select history_id, floor(daily_fee*(1 - ifnull(discount_rate/100, 0))*diff) fee
from history h join car_rental_company_car c on c.car_id = h.car_id
    left join car_rental_company_discount_plan p on h.duration_type = p.duration_type and c.car_type = p.car_type
where c.car_type = '트럭'
group by history_id
order by fee desc, history_id desc

