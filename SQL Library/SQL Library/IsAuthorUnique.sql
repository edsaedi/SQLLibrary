CREATE FUNCTION [dbo].[fn_IsAuthorUnique]()
RETURNS BIT

BEGIN

SELECT COUNT(FirstName) AS DuplicateCount
INTO #DuplicateAuthors
FROM dbo.Authors
AS DuplicateAuthors
GROUP BY FirstName, LastName
HAVING COUNT(*) > 1

DECLARE @temp int
@temp = COUNT(DuplicateCount) FROM #DuplicateAuthors

IIF (@temp = 0, 1, 0)

END

GO
