CREATE DATABASE [testDatabase];
GO
USE [testDatabase]
GO
CREATE TABLE [dbo].[Article](
	[With Space] [uniqueidentifier] NOT NULL,
	[Number] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,

 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[With Space] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Article] ([With Space], [Number], [Name]) VALUES (N'aec795de-5709-4d56-8a6c-902694bcbefe', 1, N'Test Name')