USE [EdanLibraryDB]
GO
/****** Object:  Table [dbo].[CheckedOut]    Script Date: 9/1/2021 6:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckedOut](
	[UserID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[CheckoutDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[BorrowLocationID] [int] NOT NULL,
	[ReturnLocationID] [int] NOT NULL,
 CONSTRAINT [PK_CheckedOut_1] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[BookID] ASC,
	[CheckoutDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CheckedOut]  WITH CHECK ADD  CONSTRAINT [FK_CheckedOut_Accounts] FOREIGN KEY([UserID])
REFERENCES [dbo].[Accounts] ([UserID])
GO
ALTER TABLE [dbo].[CheckedOut] CHECK CONSTRAINT [FK_CheckedOut_Accounts]
GO
ALTER TABLE [dbo].[CheckedOut]  WITH CHECK ADD  CONSTRAINT [FK_CheckedOut_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[CheckedOut] CHECK CONSTRAINT [FK_CheckedOut_Books]
GO
ALTER TABLE [dbo].[CheckedOut]  WITH CHECK ADD  CONSTRAINT [FK_CheckedOut_Locations] FOREIGN KEY([BorrowLocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[CheckedOut] CHECK CONSTRAINT [FK_CheckedOut_Locations]
GO
ALTER TABLE [dbo].[CheckedOut]  WITH CHECK ADD  CONSTRAINT [FK_CheckedOut_Locations1] FOREIGN KEY([ReturnLocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[CheckedOut] CHECK CONSTRAINT [FK_CheckedOut_Locations1]
GO
