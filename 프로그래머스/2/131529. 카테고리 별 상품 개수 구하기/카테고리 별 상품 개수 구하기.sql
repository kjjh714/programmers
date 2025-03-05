-- 코드를 입력하세요
select substr(product_code, 1, 2) category, count(substr(product_code, 1, 2)) products
from product
group by substr(product_code, 1, 2)
order by category