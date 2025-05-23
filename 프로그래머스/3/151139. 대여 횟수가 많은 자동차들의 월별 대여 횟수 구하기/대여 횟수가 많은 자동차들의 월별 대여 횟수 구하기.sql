-- 코드를 입력하세요
select month(start_date) month, car_id, count(history_id) records
from car_rental_company_rental_history
where start_date between '2022-08-01' and '2022-10-31' and
    car_id in (select car_id from car_rental_company_rental_history 
               where start_date between '2022-08-01' and '2022-10-31'
               group by car_id having count(history_id) >= 5)
group by month, car_id
order by month, car_id desc;