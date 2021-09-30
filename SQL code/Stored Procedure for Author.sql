ALTER TABLE Authors 
ADD CONSTRAINT CK_IsFirstAndLastUnique
CHECK (dbo.fn_IsAuthorUnique(FirstName, LastName) = 1);

ALTER TABLE Authors
DROP CONSTRAINT CK_IsFirstAndLastUnique;

SELECT * FROM Authors
DELETE Authors

INSERT INTO Authors VALUES ('Rick', 'Riordian')
INSERT INTO Authors VALUES ('Rick', 'Green')

EXEC [dbo].usp_AddAuthor @FirstName = 'Rick', @LastName = 'Riordian', @IDManager = '7A5926BD-A7FC-4A30-948F-A72291E78747'

usp_AddAuthor 'Rick', 'Riordian', '7A5926BD-A7FC-4A30-948F-A72291E78747'


SELECT * FROM dbo.Accounts