SELECT faculty_fname, faculty_lname
from faculty
WHERE department_code='ME' and id in (SELECT id
from book_issue b inner join members m
on b.member_no = m.member_no)