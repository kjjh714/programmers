-- 코드를 입력하세요
# 회원별 작성한 리뷰 개수 조회 > 가장 많은 리뷰 개수에 해당하는 회원id 추출 (리뷰 3개 작성한 사람이 3명으로 타이 기록인데 정답은 max만 인정하나봄)

with max_cnt as 
    (select member_id, max(cnt)
     from (select member_id, count(review_id) cnt
           from rest_review
           group by member_id
           order by count(review_id) desc) cnt_review)
     
select member_name, review_text, date_format(review_date, '%Y-%m-%d') reivew_date
from member_profile p join rest_review r on p.member_id = r.member_id join max_cnt mc on p.member_id = mc.member_id
order by review_date, review_text
