
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
VALUES ('The Sword of Summer', 'Disney Hyperion', '10-06-2015', 
'The novel is narrated in the first-person view by Magnus Chase, 16-year-old demigod and homeless orphan and after his death he arrives in a Norse afterlife as an Einherji, Magnus discovers that he is the son of the Norse deity, Frey, and must stop Fenris Wolf from leaving his prison and ending the world.')

SELECT * FROM Books

--Authors Table
INSERT INTO dbo.Authors (FirstName, LastName)
VALUES ('Rick', 'Riordan')

SELECT * FROM Authors

--Genre Table
INSERT INTO dbo.Genres (GenreTitle)
VALUES ('Play')

SELECT * FROM Genres

--You deleted the Great Gatsby. Fix that
DELETE FROM Books WHERE BookID = 1002