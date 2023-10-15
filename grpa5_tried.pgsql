SELECT a.title, b.accession_no
from book_catalogue a inner join book_copies b
on a.isbn_no = b.isbn_no
where a.title like '%Easy%'