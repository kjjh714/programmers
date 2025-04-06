-- 코드를 입력하세요
# select c.car_id, c.car_type, floor(daily_fee*(1-discount_rate/100)*30) fee
# from car_rental_company_car c join available a on c.car_id = a.car_id
#     left join car_rental_company_discount_plan p on c.car_type = p.car_type
# where c.car_type in ('세단', 'SUV') and duration_type = '30일 이상'
#     and (floor(daily_fee*(1-discount_rate/100)*30) >= 500000 and floor(daily_fee*(1-discount_rate/100)*30) < 2000000)
# order by fee desc, c.car_type, c.car_id desc


select car_id, c.car_type, floor(daily_fee*(1-discount_rate/100)*30) fee
from car_rental_company_car c join car_rental_company_discount_plan p on c.car_type = p.car_type
where c.car_type in ('세단', 'SUV') and duration_type = '30일 이상'
    and car_id not in (select car_id from car_rental_company_rental_history
                    where start_date <= '2022-11-30' and end_date >= '2022-11-01')
    and (floor(daily_fee*(1-discount_rate/100)*30) >= 500000 and floor(daily_fee*(1-discount_rate/100)*30) < 2000000)
order by fee desc, c.car_type, car_id desc