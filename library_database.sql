CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    Publisher VARCHAR(50),
    Price INT
);
INSERT INTO Books VALUES (1,'C Programming','Dennis Ritchie','Prentice Hall',500);
INSERT INTO Books VALUES (2,'Java Programming','James Gosling','Oracle Press',650);
INSERT INTO Books VALUES (3,'Database Systems','Elmasri','Pearson',700);
INSERT INTO Books VALUES (4,'Python Programming','Guido Van Rossum','OReilly',600);
INSERT INTO Books VALUES (5,'Data Structures','Mark Allen','McGraw Hill',550);

CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    Name VARCHAR(50),
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE
);
INSERT INTO Borrowers VALUES (101,'jahnavi',1,'2026-03-01','2026-03-10');
INSERT INTO Borrowers VALUES (102,'vyshnavi',3,'2026-03-02','2026-03-12');
INSERT INTO Borrowers VALUES (103,'Kiran',2,'2026-03-04','2026-03-14');
INSERT INTO Borrowers VALUES (104,'soumya',5,'2026-03-05','2026-03-15');
SELECT * FROM Books;
SELECT * FROM Borrowers;
SELECT Borrowers.Name, Books.Title
FROM Borrowers
JOIN Books
ON Borrowers.BookID = Books.BookID;
SELECT Title, Price FROM Books
WHERE Price > 600;
SELECT COUNT(*) AS Total_Borrowers FROM Borrowers;
