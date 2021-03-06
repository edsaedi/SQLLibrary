USE [EdanLibraryDB]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 9/29/2021 6:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[PublicID] [uniqueidentifier] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[LastLoginTime] [smalldatetime] NOT NULL,
	[Privilege] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_PublicID]  DEFAULT (newid()) FOR [PublicID]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_LastLoginTime]  DEFAULT (getutcdate()) FOR [LastLoginTime]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [CK_UniqueAccount] CHECK  (([dbo].[fn_IsUsernameUnique]()=(1)))
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [CK_UniqueAccount]
GO
