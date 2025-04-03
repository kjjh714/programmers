-- 코드를 입력하세요
select apnt_no, pt_name, a.pt_no, a.mcdp_cd, dr_name, apnt_ymd
from patient p join appointment a on p.pt_no = a.pt_no join doctor d on d.dr_id = a.mddr_id
where date(apnt_ymd) = '2022-04-13' and apnt_cncl_yn = 'N' and a.mcdp_cd = 'CS'
order by apnt_ymd;