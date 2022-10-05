USE [Okul2022IO]
GO
/****** Object:  Table [dbo].[Ögrenciler]    Script Date: 5.10.2022 18:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ögrenciler](
	[ÖğrenciNo] [char](12) NOT NULL,
	[Adı] [varchar](50) NOT NULL,
	[Soyadı] [varchar](50) NOT NULL,
	[Adres] [varchar](100) NULL,
	[Telefon] [char](10) NULL,
	[eposta] [varchar](100) NULL,
	[TcKimlikNo] [char](11) NOT NULL,
 CONSTRAINT [PK_Ögrenciler] PRIMARY KEY CLUSTERED 
(
	[ÖğrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ögrenciler] ([ÖğrenciNo], [Adı], [Soyadı], [Adres], [Telefon], [eposta], [TcKimlikNo]) VALUES (N'1           ', N'Asil', N'Ayazoğlu', N'GOP', N'5357614633', N'asdawds', N'12343243131')
