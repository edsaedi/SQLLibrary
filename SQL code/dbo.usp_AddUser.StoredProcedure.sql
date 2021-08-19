USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddUser]    Script Date: 8/18/2021 6:21:46 PM ******/
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
	@IDManager int
)
AS
BEGIN
	

	INSERT INTO dbo.Accounts (Username, [Password], FirstName, LastName, DOB, Privilege)
	VALUES (@Username, @Password, @FirstName, @LastName, @DOB, @Privilege) 

END
GO
