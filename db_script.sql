USE [master]
GO
/****** Object:  Database [FoodShoppingCart]    Script Date: 08/08/2023 10:07:27 ******/
CREATE DATABASE [FoodShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FoodShoppingCart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FoodShoppingCart.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FoodShoppingCart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FoodShoppingCart_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FoodShoppingCart] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FoodShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FoodShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FoodShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FoodShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FoodShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FoodShoppingCart] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FoodShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FoodShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [FoodShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FoodShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FoodShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FoodShoppingCart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FoodShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FoodShoppingCart] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FoodShoppingCart] SET QUERY_STORE = ON
GO
ALTER DATABASE [FoodShoppingCart] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FoodShoppingCart]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[CountryDescription] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](50) NOT NULL,
	[FoodDescription] [nvarchar](max) NULL,
	[FoodPrice] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[FoodId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](20) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartDetail]    Script Date: 08/08/2023 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShoppingCartId] [int] NOT NULL,
	[FoodId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
 CONSTRAINT [PK_ShoppingCartDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807151342_added-tables', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807151650_added statuscode in ordersstatus', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230808001033_add unit price', N'7.0.9')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1f0004b3-39ac-4359-ad52-b75c2303ff7b', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'46792096-fe4b-4f4a-8e58-8927897243b4', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6c2ee224-cbfe-41be-b0a2-fc1bd1ee9cf7', N'1f0004b3-39ac-4359-ad52-b75c2303ff7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'39aa976f-3387-411b-9077-4190fce172ed', N'46792096-fe4b-4f4a-8e58-8927897243b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'605780b8-d563-4f24-972c-0df4678d247f', N'46792096-fe4b-4f4a-8e58-8927897243b4')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'39aa976f-3387-411b-9077-4190fce172ed', N'slametmahendra333@gmail.com', N'SLAMETMAHENDRA333@GMAIL.COM', N'slametmahendra333@gmail.com', N'SLAMETMAHENDRA333@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAECnTSlYruGBYJZCdwIqtkbd94hi4ji/3lkJfk6sTB1XBb0QNXLaHehD8y5Y/l1bhlA==', N'3FHIT6SDZRKICKL2P6KSBBGXUCPVMCQK', N'759115f8-51d9-4682-91bd-f4f80299635f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'605780b8-d563-4f24-972c-0df4678d247f', N'john.doe@gmail.com', N'JOHN.DOE@GMAIL.COM', N'john.doe@gmail.com', N'JOHN.DOE@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBDsW59eJIKduv1p3FViR2anWNKfLCQxZhN+UQX75E09lAaJyD9QQ5+HxBmBf4NVqg==', N'SPKR7CVDCGKB4CARYVAFXAAXJW63SEEA', N'7e605b99-c804-44ac-9573-320777b0145e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6c2ee224-cbfe-41be-b0a2-fc1bd1ee9cf7', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFVWeP6EC+YUXvifz1DmjFg4ORCbcN49BFHTjWmI1Wzc2YOmtLEaC2NYfRqAdEaU3g==', N'XULTTGJQCYMTOXFQ3NLYTFGXHQVXDFWF', N'b40f0fb5-fec0-4c01-a1d1-026b62dbafd2', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [CountryName], [CountryDescription], [IsDeleted]) VALUES (1, N'Indonesia', N'Negara dengan makanan yang kaya akan rempah', 0)
INSERT [dbo].[Country] ([Id], [CountryName], [CountryDescription], [IsDeleted]) VALUES (2, N'Chineese', N'Negara dengan sejarah kuliner yang mendalam', 0)
INSERT [dbo].[Country] ([Id], [CountryName], [CountryDescription], [IsDeleted]) VALUES (3, N'Italy', N'Negara Eropa yang terkenal akan roti dan sphagetti', 0)
INSERT [dbo].[Country] ([Id], [CountryName], [CountryDescription], [IsDeleted]) VALUES (4, N'Japan', N'Negara dengan cara masak yang minimalis', 0)
INSERT [dbo].[Country] ([Id], [CountryName], [CountryDescription], [IsDeleted]) VALUES (5, N'Korea', N'Negara yang terkenal dengan ramyeon', 0)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (1, N'Soto Lamongan', N'Makanan dengan kuah bening berwarna kuning', 15000, N'soto_lamongan.jpg', 0, 1)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (3, N'Pecel Lele', N'Ikan lele yang dimasak diberi tambahan sambal', 13000, N'pecel_lele.jpg', 0, 1)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (4, N'Soto Betawi', N'Makanan dengan kuah santan atau susu', 20000, N'soto_betawi.jpg', 0, 1)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (5, N'Mie Goreng Jawa', N'Mie dimasak dengan tungku dengan sedikit kuah', 18000, N'mie_goreng_jawa.jpg', 0, 1)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (6, N'Bakmi China', N'Mie khas dari cina', 20000, NULL, 0, 2)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (7, N'Fuyunghai', N'Telor yang berisi sayuran dan daging', 20000, N'fuyunghai.jpg', 0, 2)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (8, N'Pizza', N'Roti dengan toping bermacam-macam', 30000, N'pizza.jpg', 0, 3)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (9, N'Spaghetti', N'Mie panjang dengan saos tomat', 24000, NULL, 0, 3)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (10, N'Sushi', N'Gulungan nasi dan rumput laut yang di dalamnya terdapat isi sesuai keinginan', 5000, NULL, 0, 4)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (11, N'Ramen', N'Mie dengan kuah yang dimasak dalam waktu yang lama', 22000, NULL, 0, 4)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (12, N'Ramyeon', N'Mie khas Korea', 24000, NULL, 0, 5)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (13, N'Tteobokki', N'Makanan dari tepung beras yang dibentuk dan diberi kuah', 7000, NULL, 0, 5)
INSERT [dbo].[Food] ([Id], [FoodName], [FoodDescription], [FoodPrice], [Image], [IsDeleted], [CountryId]) VALUES (14, N'Test Delete', NULL, 1000, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatusId], [IsDeleted]) VALUES (2, N'605780b8-d563-4f24-972c-0df4678d247f', CAST(N'2023-08-08T02:00:12.3334123' AS DateTime2), 2, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [FoodId], [Quantity], [UnitPrice]) VALUES (1, 2, 5, 3, 18000)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [FoodId], [Quantity], [UnitPrice]) VALUES (2, 2, 1, 2, 15000)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [FoodId], [Quantity], [UnitPrice]) VALUES (3, 2, 8, 1, 30000)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([Id], [StatusName], [StatusId]) VALUES (1, N'Pending', 1)
INSERT [dbo].[OrderStatus] ([Id], [StatusName], [StatusId]) VALUES (2, N'Shipped', 2)
INSERT [dbo].[OrderStatus] ([Id], [StatusName], [StatusId]) VALUES (3, N'Delivered', 3)
INSERT [dbo].[OrderStatus] ([Id], [StatusName], [StatusId]) VALUES (4, N'Canceled', 4)
INSERT [dbo].[OrderStatus] ([Id], [StatusName], [StatusId]) VALUES (5, N'Returned', 5)
INSERT [dbo].[OrderStatus] ([Id], [StatusName], [StatusId]) VALUES (6, N'Refund', 6)
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCart] ON 

INSERT [dbo].[ShoppingCart] ([Id], [UserId], [IsDeleted]) VALUES (2, N'605780b8-d563-4f24-972c-0df4678d247f', 0)
INSERT [dbo].[ShoppingCart] ([Id], [UserId], [IsDeleted]) VALUES (3, N'6c2ee224-cbfe-41be-b0a2-fc1bd1ee9cf7', 0)
SET IDENTITY_INSERT [dbo].[ShoppingCart] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCartDetail] ON 

INSERT [dbo].[ShoppingCartDetail] ([Id], [ShoppingCartId], [FoodId], [Quantity], [UnitPrice]) VALUES (5, 3, 1, 3, 15000)
INSERT [dbo].[ShoppingCartDetail] ([Id], [ShoppingCartId], [FoodId], [Quantity], [UnitPrice]) VALUES (6, 2, 7, 1, 20000)
INSERT [dbo].[ShoppingCartDetail] ([Id], [ShoppingCartId], [FoodId], [Quantity], [UnitPrice]) VALUES (7, 2, 8, 2, 30000)
SET IDENTITY_INSERT [dbo].[ShoppingCartDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 08/08/2023 10:07:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 08/08/2023 10:07:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Food_CountryId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_Food_CountryId] ON [dbo].[Food]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_OrderStatusId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_Order_OrderStatusId] ON [dbo].[Order]
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_FoodId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_FoodId] ON [dbo].[OrderDetail]
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderId] ON [dbo].[OrderDetail]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartDetail_FoodId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartDetail_FoodId] ON [dbo].[ShoppingCartDetail]
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartDetail_ShoppingCartId]    Script Date: 08/08/2023 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartDetail_ShoppingCartId] ON [dbo].[ShoppingCartDetail]
(
	[ShoppingCartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderStatus] ADD  DEFAULT ((0)) FOR [StatusId]
GO
ALTER TABLE [dbo].[ShoppingCartDetail] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Country_CountryId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus_OrderStatusId] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus_OrderStatusId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Food_FoodId] FOREIGN KEY([FoodId])
REFERENCES [dbo].[Food] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Food_FoodId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_OrderId]
GO
ALTER TABLE [dbo].[ShoppingCartDetail]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartDetail_Food_FoodId] FOREIGN KEY([FoodId])
REFERENCES [dbo].[Food] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartDetail] CHECK CONSTRAINT [FK_ShoppingCartDetail_Food_FoodId]
GO
ALTER TABLE [dbo].[ShoppingCartDetail]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartDetail_ShoppingCart_ShoppingCartId] FOREIGN KEY([ShoppingCartId])
REFERENCES [dbo].[ShoppingCart] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartDetail] CHECK CONSTRAINT [FK_ShoppingCartDetail_ShoppingCart_ShoppingCartId]
GO
USE [master]
GO
ALTER DATABASE [FoodShoppingCart] SET  READ_WRITE 
GO
