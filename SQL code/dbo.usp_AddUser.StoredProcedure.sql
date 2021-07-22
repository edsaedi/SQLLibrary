USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddUser]    Script Date: 7/21/2021 6:20:14 PM ******/
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
	@DOB datetime
)
AS
BEGIN
	INSERT INTO dbo.Accounts (Username, [Password], FirstName, LastName, DOB)
	VALUES (@Username, @Password, @FirstName, @LastName, @DOB)
END
GO
