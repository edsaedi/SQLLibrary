USE [EdanLibraryDB]
GO
/****** Object:  Table [dbo].[CheckedOutBooks]    Script Date: 5/12/2021 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckedOutBooks](
	[BookID] [int] NOT NULL,
	[CheckOutID] [int] NOT NULL,
 CONSTRAINT [PK_CheckedOutBooks] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[CheckOutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CheckedOutBooks]  WITH CHECK ADD  CONSTRAINT [FK_CheckedOutBooks_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[CheckedOutBooks] CHECK CONSTRAINT [FK_CheckedOutBooks_Books]
GO
ALTER TABLE [dbo].[CheckedOutBooks]  WITH CHECK ADD  CONSTRAINT [FK_CheckedOutBooks_CheckedOut] FOREIGN KEY([CheckOutID])
REFERENCES [dbo].[CheckedOut] ([CheckOutID])
GO
ALTER TABLE [dbo].[CheckedOutBooks] CHECK CONSTRAINT [FK_CheckedOutBooks_CheckedOut]
GO
