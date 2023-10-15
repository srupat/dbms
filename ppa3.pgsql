SELECT count(isbn_no)
from book_copies c inner join book_issue i
on c.accession_no = i.accession_no
where i.doi = '2021-08-11'