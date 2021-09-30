USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_ChangePassword]    Script Date: 9/29/2021 6:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_ChangePassword]
(
	@ID uniqueidentifier,
	@NewPassword varchar(50)
)
AS
BEGIN
	UPDATE dbo.Accounts
	SET [Password] = @NewPassword
	WHERE PublicID = @ID;

	SELECT	@@ROWCOUNT	AS RowsUpdated;
END
GO
