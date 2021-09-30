USE [EdanLibraryDB]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 9/29/2021 6:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authors]  WITH CHECK ADD  CONSTRAINT [CK_IsFirstAndLastUnique] CHECK  (([dbo].[fn_IsAuthorUnique]([FirstName],[LastName])=(1)))
GO
ALTER TABLE [dbo].[Authors] CHECK CONSTRAINT [CK_IsFirstAndLastUnique]
GO
