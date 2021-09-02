USE [EdanLibraryDB]
GO
/****** Object:  Table [dbo].[BookLocations]    Script Date: 9/1/2021 6:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookLocations](
	[BookID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_BookLocations] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookLocations]  WITH CHECK ADD  CONSTRAINT [FK_BookLocations_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[BookLocations] CHECK CONSTRAINT [FK_BookLocations_Books]
GO
ALTER TABLE [dbo].[BookLocations]  WITH CHECK ADD  CONSTRAINT [FK_BookLocations_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[BookLocations] CHECK CONSTRAINT [FK_BookLocations_Locations]
GO
