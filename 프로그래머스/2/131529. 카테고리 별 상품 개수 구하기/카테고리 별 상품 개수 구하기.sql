-- 코드를 입력하세요
select left(product_code, 2) category, count(*) products
from product
group by left(product_code, 2)
order by category


-- ver. oracle
# select substr(product_code, 1, 2) category, count(*) products
# from product
# group by substr(product_code, 1, 2)
# order by category