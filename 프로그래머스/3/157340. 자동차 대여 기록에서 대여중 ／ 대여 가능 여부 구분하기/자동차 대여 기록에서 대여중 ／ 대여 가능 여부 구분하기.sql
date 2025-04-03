# -- 코드를 입력하세요
# select car_id, start_date, end_date, 
#     max(if('2022-10-16' between start_date and end_date, '대여중', '대여 가능')) as 'availability'
#     # if('2022-10-16' between start_date and end_date, '대여중', '대여 가능') as 'availability'
#     # case
#     #     when '2022-10-16' between start_date and end_date then '대여중' else '대여 가능'
#     # end as availability
# from car_rental_company_rental_history
# group by car_id
# order by car_id desc;


select  
    CAR_ID,
    if(max(START_DATE<='2022-10-16' and END_DATE >= '2022-10-16'),'대여중','대여 가능') as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
order by CAR_ID desc;