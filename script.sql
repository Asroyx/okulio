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

USE [master]
GO
/****** Object:  Database [Okul2022IO]    Script Date: 6.10.2022 16:22:05 ******/
CREATE DATABASE [Okul2022IO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Okul2022IO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Okul2022IO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Okul2022IO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Okul2022IO_log.ldf' , SIZE = 66560KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Okul2022IO] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Okul2022IO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Okul2022IO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Okul2022IO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Okul2022IO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Okul2022IO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Okul2022IO] SET ARITHABORT OFF 
GO
ALTER DATABASE [Okul2022IO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Okul2022IO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Okul2022IO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Okul2022IO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Okul2022IO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Okul2022IO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Okul2022IO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Okul2022IO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Okul2022IO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Okul2022IO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Okul2022IO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Okul2022IO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Okul2022IO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Okul2022IO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Okul2022IO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Okul2022IO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Okul2022IO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Okul2022IO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Okul2022IO] SET  MULTI_USER 
GO
ALTER DATABASE [Okul2022IO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Okul2022IO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Okul2022IO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Okul2022IO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Okul2022IO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Okul2022IO] SET QUERY_STORE = OFF
GO
USE [Okul2022IO]
GO
/****** Object:  Table [dbo].[Bölümler]    Script Date: 6.10.2022 16:22:05 ******/
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
/****** Object:  Table [dbo].[Dersler]    Script Date: 6.10.2022 16:22:05 ******/
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
/****** Object:  Table [dbo].[Ögrenciler]    Script Date: 6.10.2022 16:22:05 ******/
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
USE [master]
GO
ALTER DATABASE [Okul2022IO] SET  READ_WRITE 
GO

