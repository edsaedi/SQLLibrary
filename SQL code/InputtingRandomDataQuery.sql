
--Accounts Table
INSERT INTO dbo.Accounts (Username, Password, FirstName, LastName, DOB) 
VALUES ('dylan', 'ddylan', 'Dylan', 'Wester', '03-28-2004')

SELECT * FROM ACCOUNTS 

--Locations Table
INSERT INTO dbo.Locations (LocationName, Address, City, State, PostalCode)
VALUES ('Woodland Hills Branch', '2259 Confused Library Street', 'Woodland Hills', 'CA', '91364')

SELECT * FROM Locations

--Books Table
INSERT INTO dbo.Books (BookTitle, BookPublisher, DatePublished, Summary)
VALUES ('The Great Gatsby', 'Charles Scribner''s Sons', '04-10-1925', 
'Set in the Jazz Age on Long Island, the novel depicts narrator Nick Carraway''s interactions with mysterious millionaire Jay Gatsby and Gatsby''s obsession to reunite with his former lover, Daisy Buchanan.')

SELECT * FROM Books

--Authors Table
INSERT INTO dbo.Authors (FirstName, LastName)
VALUES ('Rick', 'Riordan')

SELECT * FROM Authors

--Genre Table
INSERT INTO dbo.Genres (GenreTitle)
VALUES ('Play')

SELECT * FROM Genres

SELECT * FROM Accounts

-- A delete function I used ->
--DELETE FROM Genres WHERE GenreID = 8

DELETE FROM Accounts WHERE USERID = 1003

GRANT EXECUTE TO edanSqlLogin