-- 코드를 입력하세요
select cart_id
from (select cart_id, name from cart_products 
      where name in ('Yogurt', 'Milk') group by cart_id, name) products
group by cart_id
having count(cart_id) > 1