USE [EdanLibraryDB]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_IsUserAdmin]    Script Date: 8/18/2021 6:21:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_IsUserAdmin]
(
	@ID int
)
RETURNS BIT
AS
BEGIN
	DECLARE @Privilege varchar(50)
	SET @Privilege = (SELECT Privilege FROM dbo.Accounts WHERE UserID = @ID)
	

	IF(@Privilege = 'Manager')
	BEGIN
		RETURN 1
	END

	ELSE
	BEGIN
		RETURN 0
	END

	RETURN 0
END
GO
