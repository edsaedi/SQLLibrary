USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_ChangePassword]    Script Date: 7/28/2021 6:21:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ChangePassword]
(
	@ID int,
	@NewPassword varchar(50)
)
AS
BEGIN
	UPDATE dbo.Accounts
	SET [Password] = @NewPassword
	WHERE UserID = @ID;

	SELECT	@@ROWCOUNT	AS RowsUpdated;
END
GO
