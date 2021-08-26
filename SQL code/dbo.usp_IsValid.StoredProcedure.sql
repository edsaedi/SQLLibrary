USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_IsValid]    Script Date: 8/25/2021 6:26:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_IsValid]
(
	@Username varchar(50),
	@Password varchar(50)
)
AS
BEGIN
	
UPDATE dbo.Accounts
SET LastLoginTime			= GETUTCDATE()
WHERE Username				= @Username
AND [Password]				= @Password

SELECT Accounts.PublicID FROM dbo.Accounts
WHERE Username = @Username 
AND [Password] = @Password

END
GO
