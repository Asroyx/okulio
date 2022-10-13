--\\10.14.4.80 vt2 paylaş Okul2022Ahafta2.sql 
-- kendi pc kopyala script bu dosya çalıştırın

CREATE DATABASE  [Okul2022Ahafta2]
GO
USE [Okul2022Ahafta2]
GO
/****** Object:  Table [dbo].[Bölümler]    Script Date: 5.10.2022 15:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bölümler](
	[BölümNo] [int] IDENTITY(1,1) NOT NULL,
	[BölümAdı] [varchar](50) NOT NULL,
	[Alınan Derece] [varchar](50) NULL,
	[Adres] [varchar](100) NULL,
	[Telefon] [char](10) NULL,
	[eposta] [varchar](100) NULL,
	[BölümSekreteri] [varchar](100) NULL,
	[BölümBaşkanı] [varchar](100) NULL,
	[ÖğrenciKontenjanı] [smallint] NULL,
	[ÖğretimElemanıKontenjanı] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[BölümNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 5.10.2022 15:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[DersKodu] [char](7) NOT NULL,
	[DersAdı] [nvarchar](50) NOT NULL,
	[Kredisi] [tinyint] NOT NULL,
	[Bölümü] [int] NULL,
	[ZorunluSeçmeli] [bit] NULL,
	[ÖğretimElemanı] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[DersKodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Öğrenciler]    Script Date: 5.10.2022 15:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Öğrenciler](
	[ÖğrenciNo] [char](12) NOT NULL,
	[Adı] [varchar](50) NOT NULL,
	[Soyadı] [varchar](50) NOT NULL,
	[Adres] [varchar](100) NULL,
	[Telefon] [char](10) NULL,
	[eposta] [varchar](100) NULL,
	[TcKimlikNo] [char](11) NOT NULL,
	[HarçMiktarı] [smallmoney] NULL,
	[DoğumTarihi] [datetime] NULL,
	[KayıtTarihi] [datetime] NULL,
	[KrediAlıyorMu] [bit] NULL,
	[Bölümü] [int] NULL,
 CONSTRAINT [PK__Öğrencil__FE83E3114B9A5852] PRIMARY KEY CLUSTERED 
(
	[ÖğrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bölümler] ON 

INSERT [dbo].[Bölümler] ([BölümNo], [BölümAdı], [Alınan Derece], [Adres], [Telefon], [eposta], [BölümSekreteri], [BölümBaşkanı], [ÖğrenciKontenjanı], [ÖğretimElemanıKontenjanı]) VALUES (1, N'Bilgisayar Mühendisliği', N'Lisans', N'Balıkesir', N'2661234567', N'bm@baun.edu.tr', N'Gülgün Özkan', N'Ayhan İstanbullu', 150, 8)
INSERT [dbo].[Bölümler] ([BölümNo], [BölümAdı], [Alınan Derece], [Adres], [Telefon], [eposta], [BölümSekreteri], [BölümBaşkanı], [ÖğrenciKontenjanı], [ÖğretimElemanıKontenjanı]) VALUES (2, N'Sivil Havacılık', N'Ön lisans', N'Edremit, Balıkesir', N'2664567123', N'sh@baun.edu.tr', N'Fatma Topuz', N'Abdullah Soykan', 300, 4)
INSERT [dbo].[Bölümler] ([BölümNo], [BölümAdı], [Alınan Derece], [Adres], [Telefon], [eposta], [BölümSekreteri], [BölümBaşkanı], [ÖğrenciKontenjanı], [ÖğretimElemanıKontenjanı]) VALUES (3, N'Yazılım Mühendisliği', N'Lisans', N'Balıkesir', N'2664561237', N'ym@baun.edu.tr', N'Mehmet Özdemir', N'Kamil Topal', 250, 7)
INSERT [dbo].[Bölümler] ([BölümNo], [BölümAdı], [Alınan Derece], [Adres], [Telefon], [eposta], [BölümSekreteri], [BölümBaşkanı], [ÖğrenciKontenjanı], [ÖğretimElemanıKontenjanı]) VALUES (4, N'Bilgisayar Programcılığı', N'Ön Lisans', N'Balıkesir Çağış', N'2666121209', N'bp@gmail.com', N'Gülgün ÖZKAN', N'Semih KELEŞ', 150, 4)
SET IDENTITY_INSERT [dbo].[Bölümler] OFF
GO
INSERT [dbo].[Dersler] ([DersKodu], [DersAdı], [Kredisi], [Bölümü], [ZorunluSeçmeli], [ÖğretimElemanı]) VALUES (N'BDO2109', N'Görsel Programlama 1', 4, 4, 1, N'Alp imrek')
INSERT [dbo].[Dersler] ([DersKodu], [DersAdı], [Kredisi], [Bölümü], [ZorunluSeçmeli], [ÖğretimElemanı]) VALUES (N'BDO2111', N'Veri Tabanı 2', 4, 4, 1, N'Alp imrek')
INSERT [dbo].[Dersler] ([DersKodu], [DersAdı], [Kredisi], [Bölümü], [ZorunluSeçmeli], [ÖğretimElemanı]) VALUES (N'BDO2113', N'Sunucu İşletim Sistemleri', 5, 4, 0, N'M.Faik Şenergin')
INSERT [dbo].[Dersler] ([DersKodu], [DersAdı], [Kredisi], [Bölümü], [ZorunluSeçmeli], [ÖğretimElemanı]) VALUES (N'BDO2117', N'İnternet Programcılığı 1', 5, 4, 1, N'Erol Özçelik')
INSERT [dbo].[Dersler] ([DersKodu], [DersAdı], [Kredisi], [Bölümü], [ZorunluSeçmeli], [ÖğretimElemanı]) VALUES (N'BDO2121', N'Nesne tabanlı Programlama 1', 5, 4, 1, N'ERol ÖZÇELİK')
GO
INSERT [dbo].[Öğrenciler] ([ÖğrenciNo], [Adı], [Soyadı], [Adres], [Telefon], [eposta], [TcKimlikNo], [HarçMiktarı], [DoğumTarihi], [KayıtTarihi], [KrediAlıyorMu], [Bölümü]) VALUES (N'202110614001', N'Ahmet', N'Şahintekin', NULL, NULL, NULL, N'11111111111', 0.0000, NULL, CAST(N'2022-10-05T13:42:17.977' AS DateTime), 0, 4)
INSERT [dbo].[Öğrenciler] ([ÖğrenciNo], [Adı], [Soyadı], [Adres], [Telefon], [eposta], [TcKimlikNo], [HarçMiktarı], [DoğumTarihi], [KayıtTarihi], [KrediAlıyorMu], [Bölümü]) VALUES (N'202110614002', N'Ali İhsan', N'Sağdıç', NULL, NULL, NULL, N'22222222222', 0.0000, NULL, CAST(N'2022-10-05T13:42:17.977' AS DateTime), 0, 4)
INSERT [dbo].[Öğrenciler] ([ÖğrenciNo], [Adı], [Soyadı], [Adres], [Telefon], [eposta], [TcKimlikNo], [HarçMiktarı], [DoğumTarihi], [KayıtTarihi], [KrediAlıyorMu], [Bölümü]) VALUES (N'202110614003', N'Halil Can', N'Ayyıldız', N'X Mah., Y Cad., Balıkesir', N'2661234567', N'can@ayyildiz.com', N'12345678901', 350.0000, CAST(N'2001-05-01T00:00:00.000' AS DateTime), CAST(N'2021-09-28T00:00:00.000' AS DateTime), 1, 4)
GO
ALTER TABLE [dbo].[Öğrenciler] ADD  CONSTRAINT [DF__Öğrencile__HarçM__4222D4EF]  DEFAULT ((0.0)) FOR [HarçMiktarı]
GO
ALTER TABLE [dbo].[Öğrenciler] ADD  CONSTRAINT [DF__Öğrencile__Kayıt__4316F928]  DEFAULT (getdate()) FOR [KayıtTarihi]
GO
ALTER TABLE [dbo].[Öğrenciler] ADD  CONSTRAINT [DF__Öğrencile__Kredi__440B1D61]  DEFAULT ((0)) FOR [KrediAlıyorMu]
GO
ALTER TABLE [dbo].[Dersler]  WITH CHECK ADD  CONSTRAINT [FK_Dersler_Bölümler] FOREIGN KEY([Bölümü])
REFERENCES [dbo].[Bölümler] ([BölümNo])
GO
ALTER TABLE [dbo].[Dersler] CHECK CONSTRAINT [FK_Dersler_Bölümler]
GO
ALTER TABLE [dbo].[Öğrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Öğrenciler_Bölümler] FOREIGN KEY([Bölümü])
REFERENCES [dbo].[Bölümler] ([BölümNo])
GO
ALTER TABLE [dbo].[Öğrenciler] CHECK CONSTRAINT [FK_Öğrenciler_Bölümler]
GO
