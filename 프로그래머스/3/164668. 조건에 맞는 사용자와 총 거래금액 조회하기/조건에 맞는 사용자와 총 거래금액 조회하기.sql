-- 코드를 입력하세요
select user_id, nickname, sum(price) as total_sales
from used_goods_board b join used_goods_user u on b.writer_id = u.user_id
where status = 'DONE'
group by user_id
having sum(price) >= 700000
order by sum(price);
