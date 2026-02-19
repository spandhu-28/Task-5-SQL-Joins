--------------------------------------------------
-- INNER JOIN
-- Shows only matching records
--------------------------------------------------

SELECT Members.name, Books.title, Borrow.borrow_date
FROM Borrow
INNER JOIN Members ON Borrow.member_id = Members.member_id
INNER JOIN Books ON Borrow.book_id = Books.book_id;

--------------------------------------------------
-- LEFT JOIN
-- Shows all members, even if they didn't borrow
--------------------------------------------------

SELECT Members.name, Borrow.borrow_date
FROM Members
LEFT JOIN Borrow ON Members.member_id = Borrow.member_id;

--------------------------------------------------
-- RIGHT JOIN
-- (SQLite does not directly support RIGHT JOIN)
-- Equivalent using LEFT JOIN by switching tables
--------------------------------------------------

SELECT Books.title, Borrow.borrow_date
FROM Books
LEFT JOIN Borrow ON Books.book_id = Borrow.book_id;

--------------------------------------------------
-- FULL OUTER JOIN
-- SQLite workaround using UNION
--------------------------------------------------

SELECT Members.name, Borrow.borrow_date
FROM Members
LEFT JOIN Borrow ON Members.member_id = Borrow.member_id

UNION

SELECT Members.name, Borrow.borrow_date
FROM Borrow
LEFT JOIN Members ON Borrow.member_id = Members.member_id;

--------------------------------------------------
-- SELF JOIN (Bonus)
--------------------------------------------------

SELECT A.name AS Member1, B.name AS Member2
FROM Members A, Members B
WHERE A.member_id <> B.member_id;
