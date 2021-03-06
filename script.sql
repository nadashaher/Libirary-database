USE [Libirary]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 17/06/2020 08:12:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books Borrow]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books Borrow](
	[ID] [int] NOT NULL,
	[Borrow-ID] [int] NULL,
	[Book-ID] [int] NULL,
	[Start-Date] [nvarchar](50) NULL,
	[End-Date] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_Books Borrow] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books Data]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books Data](
	[ID] [int] NOT NULL,
	[Book-Name] [nvarchar](250) NULL,
	[Category-ID] [int] NULL,
	[Author-ID] [int] NULL,
	[Country-ID] [int] NULL,
	[Dar-ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[PagesNumber] [int] NULL,
	[Place_ID] [int] NULL,
 CONSTRAINT [PK_Books Data] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Borrowers]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrowers](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Date] [nvarchar](50) NULL,
	[Phone] [nvarchar](250) NULL,
 CONSTRAINT [PK_Borrowers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dar- Elnashr]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dar- Elnashr](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
 CONSTRAINT [PK_Dar- Elnashr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Places]    Script Date: 17/06/2020 08:12:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Books Borrow]  WITH CHECK ADD  CONSTRAINT [FK_Books Borrow_Books Data] FOREIGN KEY([Book-ID])
REFERENCES [dbo].[Books Data] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Borrow] CHECK CONSTRAINT [FK_Books Borrow_Books Data]
GO
ALTER TABLE [dbo].[Books Borrow]  WITH CHECK ADD  CONSTRAINT [FK_Books Borrow_Borrowers] FOREIGN KEY([Borrow-ID])
REFERENCES [dbo].[Borrowers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Borrow] CHECK CONSTRAINT [FK_Books Borrow_Borrowers]
GO
ALTER TABLE [dbo].[Books Data]  WITH CHECK ADD  CONSTRAINT [FK_Books Data_Author] FOREIGN KEY([Author-ID])
REFERENCES [dbo].[Author] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Data] CHECK CONSTRAINT [FK_Books Data_Author]
GO
ALTER TABLE [dbo].[Books Data]  WITH CHECK ADD  CONSTRAINT [FK_Books Data_Category] FOREIGN KEY([Category-ID])
REFERENCES [dbo].[Category] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Data] CHECK CONSTRAINT [FK_Books Data_Category]
GO
ALTER TABLE [dbo].[Books Data]  WITH CHECK ADD  CONSTRAINT [FK_Books Data_Country] FOREIGN KEY([Country-ID])
REFERENCES [dbo].[Country] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Data] CHECK CONSTRAINT [FK_Books Data_Country]
GO
ALTER TABLE [dbo].[Books Data]  WITH CHECK ADD  CONSTRAINT [FK_Books Data_Dar- Elnashr] FOREIGN KEY([Dar-ID])
REFERENCES [dbo].[Dar- Elnashr] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Data] CHECK CONSTRAINT [FK_Books Data_Dar- Elnashr]
GO
ALTER TABLE [dbo].[Books Data]  WITH CHECK ADD  CONSTRAINT [FK_Books Data_Places1] FOREIGN KEY([Place_ID])
REFERENCES [dbo].[Places] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books Data] CHECK CONSTRAINT [FK_Books Data_Places1]
GO
