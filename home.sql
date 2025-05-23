USE [master]
GO
/****** Object:  Database [Products]    Script Date: 07.03.2025 23:18:22 ******/
CREATE DATABASE [Products]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Products', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Products.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Products_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Products_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Products] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Products].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Products] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Products] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Products] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Products] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Products] SET ARITHABORT OFF 
GO
ALTER DATABASE [Products] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Products] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Products] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Products] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Products] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Products] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Products] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Products] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Products] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Products] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Products] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Products] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Products] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Products] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Products] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Products] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Products] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Products] SET RECOVERY FULL 
GO
ALTER DATABASE [Products] SET  MULTI_USER 
GO
ALTER DATABASE [Products] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Products] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Products] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Products] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Products] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Products] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Products', N'ON'
GO
ALTER DATABASE [Products] SET QUERY_STORE = ON
GO
ALTER DATABASE [Products] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Products]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07.03.2025 23:18:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (1, N' маска', 43.23)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (23, N'картопля', 45.9)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (944, N'сардельки', 60.72)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (1991, N'вода газована', 15.27)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (2343, N'куряче філе', 123.5)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (3683, N'чорний хліб', 18.37)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (4232, N'цибуля', 13.78)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (8290, N'яблуко', 10.88)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (8732, N'цукерки', 60.54)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (32334, N'капуста', 22.78)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (32828, N'фарш свиний ', 100.37)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (32887, N'булочка', 12.83)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (33232, N'соняшникове насіння', 32.23)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (36543, N'багет', 25.74)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (45466, N'колаген', 154.43)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (47384, N'масло', 80.33)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (55435, N'туалетний папір', 55.55)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (78732, N'коржики', 30.93)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (83272, N'вівсянка', 32.32)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (83727, N'томатна паста', 43.21)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (83737, N'майонез', 44.43)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (84937, N'сметана', 30.76)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (89234, N'манна крупа', 40.73)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (93492, N'шампунь', 86.55)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (93837, N'кетчуп', 40.33)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (98032, N'молоко', 40.62)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (98221, N'кава', 50.5)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (123445, N'мінеральна вода', 16.22)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (235436, N'вафлі', 22.29)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (325252, N'кукурудза', 30.43)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (325525, N'оселедець', 70.43)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (352352, N'протеїновий батончик', 65.34)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (364432, N'горошок', 28.32)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (364634, N'пральний порошок', 324.5)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (446364, N'перець', 73.32)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (574547, N'сік', 17.02)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (765654, N'кефір', 45.89)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (823732, N'мариновані огірки', 56.64)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (873232, N'протеїн', 503.32)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (902523, N'зубна паста', 76.43)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (978657, N'сіль', 55.22)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (3432526, N'креатин', 353.52)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (3546333, N'печиво', 29.72)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (3834732, N'макарони', 50.32)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (3892893, N'батон', 20.98)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (4364462, N'чіпси', 60.48)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (7832892, N'тушонка', 70.22)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (9383213, N'гречка', 70.32)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (32897324, N'засіб для миття посуду', 93.21)
INSERT [dbo].[Products] ([id], [name], [price]) VALUES (923822233, N'рис', 66.32)
GO
USE [master]
GO
ALTER DATABASE [Products] SET  READ_WRITE 
GO
