-- 코드를 입력하세요
select distinct(h.car_id)
from car_rental_company_car c inner join car_rental_company_rental_history h on c.car_id = h.car_id
where car_type = '세단' and start_date like '2022-10%'
order by car_id desc;