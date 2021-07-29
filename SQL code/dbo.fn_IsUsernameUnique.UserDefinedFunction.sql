USE [EdanLibraryDB]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_IsUsernameUnique]    Script Date: 7/28/2021 6:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_IsUsernameUnique]()
RETURNS	bit

BEGIN

	DECLARE @temp		int

	SELECT  @temp = COUNT(Username) - COUNT(DISTINCT(Username))
	FROM	Accounts

	RETURN	IIF(@temp = 0, 1, 0)

END
GO
