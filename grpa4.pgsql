SELECT department_code, member_type
from students s inner join members m
on s.roll_no = m.roll_no
where m.member_no in (SELECT member_no 
from book_issue
where doi = '2021-08-02')