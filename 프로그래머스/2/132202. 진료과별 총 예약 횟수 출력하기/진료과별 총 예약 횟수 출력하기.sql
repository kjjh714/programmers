-- 코드를 입력하세요
select mcdp_cd "진료과코드", count(pt_no) "5월예약건수"
from appointment
where to_char(apnt_ymd, 'yyyy-mm-dd') like '2022-05%'
group by mcdp_cd
order by 2,1