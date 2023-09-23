#Create a table as outlined:

CREATE TABLE Authors (
AuthorID INTEGER PRIMARY KEY AUTO_INCREMENT,
FullName VARCHAR(50) UNIQUE NOT NULL,
BirthCountry VARCHAR(50) NULL
);

INSERT INTO Authors (FullName, BirthCountry)
VALUES ("Jane Austen", "England"),
("Charles Dickens", "England"),
("Mark Twain", "United States");

SELECT * FROM Authors;

CREATE TABLE Books (
BookID INTEGER PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100) UNIQUE NOT NULL,
AuthorID INTEGER, FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Books (Name, AuthorID)
VALUES ("Pride and Prejudice", 1),
("Sense and Sensibility", 1),
("The Pickwick Papers", 2);

SELECT * FROM Books;

SELECT * FROM Authors
LEFT OUTER JOIN Books USING(AuthorID);


CREATE VIEW AuthorBooks AS
SELECT FullName AS "AuthorName", Name AS "BookName"
From Authors
JOIN Books
USING(AuthorID)
ORDER BY FullName;

SELECT * FROM AuthorBooks;





