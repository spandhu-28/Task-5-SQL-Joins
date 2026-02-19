-- Insert Data into Members
INSERT INTO Members (member_id, name, email, phone) VALUES
(1, 'Ananya', 'ananya@email.com', '9876543210'),
(2, 'Rahul', 'rahul@email.com', NULL),
(3, 'Sneha', NULL, '9123456780');

-- Insert Data into Books
INSERT INTO Books (book_id, title, author, category, available_copies) VALUES
(101, 'SQL Basics', 'John Smith', 'Education', 5),
(102, 'Data Structures', 'Mark Lee', 'Computer Science', 3),
(103, 'AI Fundamentals', 'Andrew Ng', 'Technology', NULL);

-- Insert Data into Borrow
INSERT INTO Borrow (borrow_id, member_id, book_id, borrow_date, return_date) VALUES
(1, 1, 101, '2025-09-10', NULL),
(2, 2, 102, '2025-09-12', '2025-09-20');

---------------------------------------------------
-- UPDATE Statements
---------------------------------------------------

-- Update phone number where it was NULL
UPDATE Members
SET phone = '9000000000'
WHERE phone IS NULL;

-- Update available copies
UPDATE Books
SET available_copies = 10
WHERE book_id = 103;

---------------------------------------------------
-- DELETE Statements
---------------------------------------------------

-- Delete a borrow record
DELETE FROM Borrow
WHERE borrow_id = 2;

-- Delete a member (example)
DELETE FROM Members
WHERE member_id = 3;
