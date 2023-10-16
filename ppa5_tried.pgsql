select distinct title
from book_catalogue c inner join book_copies b
on c.isbn_no = b.isbn_no
where accession_no in (SELECT accession_no from book_issue i inner join members m on i.member_no = m.member_no where m.roll_no in (SELECT s.roll_no
from students s inner join members m on m.roll_no = s.roll_no where department_code = 'PG'))