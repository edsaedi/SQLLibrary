USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddUser]    Script Date: 9/29/2021 6:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_AddUser]
(
	@Username varchar(50),
	@Password varchar(50),
	@FirstName varchar(50),
	@LastName varchar(50),
	@DOB datetime,
	@Privilege varchar(50),
	@IDManager uniqueidentifier
)
AS
BEGIN
	DECLARE @IsAdmin bit
	EXEC @IsAdmin = dbo.fn_IsUserAdmin @IDManager

	IF(@IsAdmin = 1)
	BEGIN
		INSERT INTO dbo.Accounts (Username, [Password], FirstName, LastName, DOB, Privilege)
		VALUES (@Username, @Password, @FirstName, @LastName, @DOB, @Privilege)
		
		SELECT 1 as Clearence
	END

	ELSE

	BEGIN
		SELECT 0 as Clearence
	END

END
GO
