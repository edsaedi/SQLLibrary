USE [EdanLibraryDB]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_IsAuthorUnique]    Script Date: 9/29/2021 6:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_IsAuthorUnique]
(
	@FirstName varchar(50),
	@LastName varchar(50)
)
RETURNS BIT

BEGIN

DECLARE @rowsMatched int

SET @rowsMatched = (SELECT COUNT(*) FROM dbo.Authors
					WHERE FirstName = @FirstName AND LastName = @LastName)

RETURN IIF (@rowsMatched = 1, 1, 0)

END
GO
