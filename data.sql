USE [master]
GO
/****** Object:  Database [ASM_JAVA5]    Script Date: 13/06/2024 11:15:35 PM ******/
CREATE DATABASE [ASM_JAVA5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASM_JAVA5', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ASM_JAVA5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASM_JAVA5_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ASM_JAVA5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ASM_JAVA5] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM_JAVA5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM_JAVA5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM_JAVA5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM_JAVA5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASM_JAVA5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM_JAVA5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET RECOVERY FULL 
GO
ALTER DATABASE [ASM_JAVA5] SET  MULTI_USER 
GO
ALTER DATABASE [ASM_JAVA5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM_JAVA5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM_JAVA5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM_JAVA5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM_JAVA5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM_JAVA5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASM_JAVA5', N'ON'
GO
ALTER DATABASE [ASM_JAVA5] SET QUERY_STORE = ON
GO
ALTER DATABASE [ASM_JAVA5] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ASM_JAVA5]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](255) NOT NULL,
	[activated] [bit] NULL,
	[email] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
	[role_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [varchar](255) NOT NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [bigint] NULL,
	[productid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[createdate] [date] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productcategory]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productcategory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[categoryid] [varchar](255) NULL,
	[productid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[available] [bit] NULL,
	[createdate] [date] NULL,
	[images] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[price] [float] NULL,
	[brandid] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_category]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_category](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
	[qty] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_cost]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_cost](
	[date] [datetime2](7) NOT NULL,
	[cost] [float] NULL,
	[sum_order] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_product]    Script Date: 13/06/2024 11:15:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_product](
	[id] [bigint] NOT NULL,
	[count] [bigint] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[accounts] ([username], [activated], [email], [fullname], [password], [photo], [role_id]) VALUES (N'admin', 1, N'admin@gmail.com', N'admin', N'123', N'https://static.vecteezy.com/system/resources/previews/002/275/847/original/male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg', N'ADMIN')
INSERT [dbo].[accounts] ([username], [activated], [email], [fullname], [password], [photo], [role_id]) VALUES (N'USER1', 1, N'user1@gmail.com', N'USER1', N'USER1', N'logo.jpg', N'USER')
GO
INSERT [dbo].[brands] ([id], [image], [name]) VALUES (N'EN', N'logo.jpg', N'ENGLISH')
INSERT [dbo].[brands] ([id], [image], [name]) VALUES (N'SGK', N'logo.jpg', N'SCHOOL')
INSERT [dbo].[brands] ([id], [image], [name]) VALUES (N'TS', N'23a791f0.jpg', N'PROGRAMING')
GO
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (1, 5, 1, 1, 2)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (2, 5, 1, 2, 6)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (3, 3, 1, 2, 5)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (1, N'da nang', CAST(N'2024-06-13' AS Date), N'USER1')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (2, N'da nang', CAST(N'2024-06-13' AS Date), N'USER1')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [available], [createdate], [images], [name], [price], [brandid]) VALUES (1, 1, CAST(N'2024-06-13' AS Date), N'["56b0195c.jpeg"]', N'CUDA for Engineers: An Introduction to High-Performance Parallel Computing by Mete Yurtoglu, Duane Storti', 8, N'TS')
INSERT [dbo].[products] ([id], [available], [createdate], [images], [name], [price], [brandid]) VALUES (2, 1, CAST(N'2024-06-13' AS Date), N'["58261a57.jpg"]', N'TESTING AND DEPLOY ANDROID APP', 5, N'TS')
INSERT [dbo].[products] ([id], [available], [createdate], [images], [name], [price], [brandid]) VALUES (4, 1, CAST(N'2024-06-13' AS Date), N'["4a1d3a13.jpg"]', N'The Art of Computer Programming', 6, N'TS')
INSERT [dbo].[products] ([id], [available], [createdate], [images], [name], [price], [brandid]) VALUES (5, 1, CAST(N'2024-06-13' AS Date), N'["7c51e4d3.jpg"]', N'2000 English Collocations and Idioms, Trang Anh -B5', 3, N'EN')
INSERT [dbo].[products] ([id], [available], [createdate], [images], [name], [price], [brandid]) VALUES (6, 1, CAST(N'2024-06-13' AS Date), N'["c997019d.jpg"]', N'Destination B1 - Grammar & Vocabulary (With Answer Key)', 5, N'EN')
INSERT [dbo].[products] ([id], [available], [createdate], [images], [name], [price], [brandid]) VALUES (7, 1, CAST(N'2024-06-13' AS Date), N'["71797939.png"]', N'OOP JAVA', 7, N'SGK')
SET IDENTITY_INSERT [dbo].[products] OFF
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4] FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4]
GO
ALTER TABLE [dbo].[productcategory]  WITH CHECK ADD  CONSTRAINT [FK742sy9wrvs8ivg1wn23bncaa9] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[productcategory] CHECK CONSTRAINT [FK742sy9wrvs8ivg1wn23bncaa9]
GO
ALTER TABLE [dbo].[productcategory]  WITH CHECK ADD  CONSTRAINT [FKlt9fqcoyhngtu4sjpanlwtd62] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[productcategory] CHECK CONSTRAINT [FKlt9fqcoyhngtu4sjpanlwtd62]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK5dt69eq7frjuknk502wdsboje] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK5dt69eq7frjuknk502wdsboje]
GO
USE [master]
GO
ALTER DATABASE [ASM_JAVA5] SET  READ_WRITE 
GO
