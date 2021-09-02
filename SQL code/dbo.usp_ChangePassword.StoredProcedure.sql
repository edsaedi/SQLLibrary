USE [EdanLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_ChangePassword]    Script Date: 9/1/2021 6:22:10 PM ******/
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
