USE [EdanLibraryDB]
GO
/****** Object:  Table [dbo].[BookGenres]    Script Date: 9/29/2021 6:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookGenres](
	[BookID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
 CONSTRAINT [PK_BookGenres_1] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookGenres]  WITH CHECK ADD  CONSTRAINT [FK_BookGenres_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[BookGenres] CHECK CONSTRAINT [FK_BookGenres_Books]
GO
ALTER TABLE [dbo].[BookGenres]  WITH CHECK ADD  CONSTRAINT [FK_BookGenres_Genres] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([GenreID])
GO
ALTER TABLE [dbo].[BookGenres] CHECK CONSTRAINT [FK_BookGenres_Genres]
GO
