USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_ChangePassword]    Script Date: 7/21/2021 6:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ChangePassword]
(
	@Username varchar(50),
	@NewPassword varchar(50)
)
AS
BEGIN
	UPDATE dbo.Accounts
	SET [Password] = @NewPassword
	WHERE Username = @Username;
END
GO
