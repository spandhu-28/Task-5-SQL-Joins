-- Library Management System Schema
-- SQL Developer Internship – Task 1

-- Members table
CREATE TABLE Members (
    member_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone TEXT,
    PRIMARY KEY (member_id)
);

-- Books table
CREATE TABLE Books (
    book_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    author TEXT,
    category TEXT,
    available_copies INTEGER DEFAULT 1,
    PRIMARY KEY (book_id)
);

-- Borrow table
CREATE TABLE Borrow (
    borrow_id INTEGER NOT NULL,
    member_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    borrow_date TEXT,
    return_date TEXT,
    PRIMARY KEY (borrow_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
