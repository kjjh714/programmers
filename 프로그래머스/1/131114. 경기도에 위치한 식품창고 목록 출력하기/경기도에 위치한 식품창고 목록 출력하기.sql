-- 코드를 입력하세요
select warehouse_id, warehouse_name, address, nvl(freezer_yn, 'N')
from food_warehouse
where address like '%경기%'
order by warehouse_id;