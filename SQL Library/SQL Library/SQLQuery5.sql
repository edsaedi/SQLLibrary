
SELECT COUNT(FirstName)
FROM dbo.Authors
AS DuplicateAuthors
GROUP BY FirstName, LastName
HAVING COUNT(*) > 1

SELECT COUNT(FirstName) FROM DuplicateAuthors

SELECT * FROM dbo.Authors

INSERT INTO dbo.Authors (FirstName, LastName)
VALUES ('Rick', 'Riordan')



SELECT COUNT(FirstName) AS DuplicateCount
INTO #DuplicateAuthors
FROM dbo.Authors
AS DuplicateAuthors
GROUP BY FirstName, LastName
HAVING COUNT(*) > 1

COUNT(DuplicateCount) FROM #DuplicateAuthors
