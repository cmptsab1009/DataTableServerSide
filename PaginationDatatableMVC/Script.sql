USE [master]
GO
/****** Object:  Database [PaginationDatatableDemo]    Script Date: 27-12-2018 12:58:01 ******/
CREATE DATABASE [PaginationDatatableDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PaginationDatatableDemo', FILENAME = N'C:\Users\lokeshmuleva\PaginationDatatableDemo.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PaginationDatatableDemo_log', FILENAME = N'C:\Users\lokeshmuleva\PaginationDatatableDemo_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PaginationDatatableDemo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PaginationDatatableDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PaginationDatatableDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PaginationDatatableDemo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PaginationDatatableDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PaginationDatatableDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PaginationDatatableDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PaginationDatatableDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PaginationDatatableDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PaginationDatatableDemo] SET  MULTI_USER 
GO
ALTER DATABASE [PaginationDatatableDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PaginationDatatableDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PaginationDatatableDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PaginationDatatableDemo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PaginationDatatableDemo]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 27-12-2018 12:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BackgroundColor] [nvarchar](50) NULL,
	[FontColor] [nvarchar](50) NULL,
	[ProfilePhoto] [nvarchar](max) NULL,
	[CoverPhoto] [nvarchar](max) NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Postcode] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (1, N'Black', N'white', N'~/Content/ProfilePhoto/1.png', N'~/Content/CoverPhoto/1.JPG', N'loku1', N'loku1@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (2, N'Red', N'green', N'~/Content/ProfilePhoto/5.jpg', N'~/Content/CoverPhoto/10.jpg', N'loku2', N'loku1@cdnsol1.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (3, N'Green', N'yellow', N'~/Content/ProfilePhoto/3.png', N'~/Content/CoverPhoto/2.JPG', N'loku3', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (4, N'Yellow', N'white', N'~/Content/ProfilePhoto/4.jpg', N'~/Content/CoverPhoto/1.JPG', N'loku4', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (5, N'Black', N'white', N'~/Content/ProfilePhoto/5.jpg', N'~/Content/CoverPhoto/3.JPG', N'loku5', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (6, N'White', N'yello', N'~/Content/ProfilePhoto/6.png', N'~/Content/CoverPhoto/4.jpg', N'loku6', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (7, N'abc', N'white', N'~/Content/ProfilePhoto/1.png', N'~/Content/CoverPhoto/5.jpg', N'loku7', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (8, N'def', N'red', N'~/Content/ProfilePhoto/2.png', N'~/Content/CoverPhoto/6.jpg', N'loku8', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (9, N'ghi', N'we', N'~/Content/ProfilePhoto/3.png', N'~/Content/CoverPhoto/7.jpg', N'loku9', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (10, N'jkl', N'sad', N'~/Content/ProfilePhoto/4.jpg', N'~/Content/CoverPhoto/8.jpg', N'loku10', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (11, N'mno', N'sadasda', N'~/Content/ProfilePhoto/5.jpg', N'~/Content/CoverPhoto/9.jpg', N'loku11', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[UserInfo] ([Id], [BackgroundColor], [FontColor], [ProfilePhoto], [CoverPhoto], [UserName], [Email], [Address], [Postcode], [Phone], [CreateDate]) VALUES (12, N'pqr', N'ghh', N'~/Content/ProfilePhoto/2.png', N'~/Content/CoverPhoto/4.jpg', N'loku12', N'lokesh@cdnsol.com', N'indore', N'454545', N'5454545454', CAST(0x0000A9C300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
USE [master]
GO
ALTER DATABASE [PaginationDatatableDemo] SET  READ_WRITE 
GO
