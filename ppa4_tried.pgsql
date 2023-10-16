SELECT faculty.faculty_fname,faculty.faculty_lname
FROM faculty
WHERE faculty.id
NOT IN
(
SELECT faculty.id
FROM faculty
JOIN members
ON faculty.id=members.id
JOIN book_issue
ON members.member_no=book_issue.member_no
WHERE members.member_no=book_issue.member_no)