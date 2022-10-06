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

/******************************************************/

USE [Okul2022IO]
GO
/****** Object:  Table [dbo].[Bölümler]    Script Date: 6.10.2022 16:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bölümler](
	[BölümNo] [int] NOT NULL,
	[BölümAdı] [nvarchar](50) NOT NULL,
	[Alınan Derece] [varchar](50) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [char](10) NULL,
	[Eposta] [varchar](100) NULL,
	[BölümSekreteri] [varchar](100) NULL,
	[BölümBaşkanı] [varchar](100) NULL,
	[ÖğrenciKontenjanı] [smallint] NULL,
	[ÖğretimElemanıKontenjanı] [tinyint] NULL,
 CONSTRAINT [PK_Bölümler] PRIMARY KEY CLUSTERED 
(
	[BölümNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 6.10.2022 16:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[DersKodu] [char](7) NOT NULL,
	[DersAdı] [varchar](50) NULL,
	[Kredisi] [tinyint] NULL,
	[Bölümü] [nvarchar](50) NULL,
	[ZorunluSeçmeli] [bit] NULL,
	[ÖğretimElemanı] [nvarchar](50) NULL,
	[BölümNo] [int] NOT NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[DersKodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ögrenciler]    Script Date: 6.10.2022 16:19:20 ******/
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
	[HarçMiktarı] [money] NULL,
	[DoğumTarihi] [datetime] NULL,
	[KrediAlınıyorMu] [bit] NULL,
	[BölümNo] [int] NOT NULL,
 CONSTRAINT [PK_Ögrenciler] PRIMARY KEY CLUSTERED 
(
	[ÖğrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dersler]  WITH CHECK ADD  CONSTRAINT [FK_Dersler_Bölümler] FOREIGN KEY([BölümNo])
REFERENCES [dbo].[Bölümler] ([BölümNo])
GO
ALTER TABLE [dbo].[Dersler] CHECK CONSTRAINT [FK_Dersler_Bölümler]
GO
ALTER TABLE [dbo].[Ögrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ögrenciler_Bölümler1] FOREIGN KEY([BölümNo])
REFERENCES [dbo].[Bölümler] ([BölümNo])
GO
ALTER TABLE [dbo].[Ögrenciler] CHECK CONSTRAINT [FK_Ögrenciler_Bölümler1]
GO
