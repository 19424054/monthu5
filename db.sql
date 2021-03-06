USE [master]
GO
/****** Object:  Database [QuanLyMuaBanSanPham]    Script Date: 3/30/2021 1:43:41 AM ******/
CREATE DATABASE [QuanLyMuaBanSanPham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyMuaBanSanPham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyMuaBanSanPham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyMuaBanSanPham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyMuaBanSanPham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyMuaBanSanPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyMuaBanSanPham', N'ON'
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET QUERY_STORE = OFF
GO
USE [QuanLyMuaBanSanPham]
GO
/****** Object:  Table [dbo].[BM_DinhGia_Ban]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_DinhGia_Ban](
	[Id_gia_ban] [int] IDENTITY(1,1) NOT NULL,
	[Id_May] [int] NULL,
	[Loi_nhuan] [float] NULL,
	[Chi_phi] [float] NULL,
	[Gia_mua] [float] NULL,
	[Dinh_gia] [float] NULL,
 CONSTRAINT [PK_BM_DinhGia_Ban] PRIMARY KEY CLUSTERED 
(
	[Id_gia_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BM_DinhGia_MuaSP]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_DinhGia_MuaSP](
	[Id_kiemTra] [int] IDENTITY(1,1) NOT NULL,
	[Id_May] [int] NULL,
	[Trang_thai] [nvarchar](250) NULL,
	[Gia_thap_nhat] [float] NULL,
	[Gia_cao_nhat] [float] NULL,
 CONSTRAINT [PK_BM_DinhGia_MuaXe] PRIMARY KEY CLUSTERED 
(
	[Id_kiemTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BM_GiaoDich]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_GiaoDich](
	[Id_ban] [int] IDENTITY(1,1) NOT NULL,
	[Id_KH] [int] NULL,
	[Id_May] [int] NULL,
	[Gia_ban] [float] NULL,
	[Hinh_thuc] [nvarchar](50) NULL,
	[Ghi_chu] [nvarchar](250) NULL,
	[Thoi_gian] [datetime] NULL,
 CONSTRAINT [PK_BM_GiaoDich] PRIMARY KEY CLUSTERED 
(
	[Id_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BM_TaiKhoan]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_TaiKhoan](
	[Id_Tk] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan] [varchar](50) NULL,
	[mat_khau] [varchar](50) NULL,
	[phan_quyen] [int] NULL,
	[MD5Code] [varchar](1000) NULL,
 CONSTRAINT [PK_BM_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Id_Tk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BM_ThongTin_SuaChua]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_ThongTin_SuaChua](
	[Id_sua] [int] IDENTITY(1,1) NOT NULL,
	[Id_May] [int] NULL,
	[Dien_giai] [nvarchar](500) NULL,
	[Phu_tung] [nvarchar](500) NULL,
	[Chi_phi] [float] NULL,
	[Hoan_thanh] [bit] NULL,
	[Thoi_gian] [datetime] NULL,
	[Bo_phan] [nvarchar](250) NULL,
 CONSTRAINT [PK_BM_ThongTin_SuaChua] PRIMARY KEY CLUSTERED 
(
	[Id_sua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BM_ThongTinKhachHang]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_ThongTinKhachHang](
	[Id_KH] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [nvarchar](100) NULL,
	[SDT] [varchar](50) NULL,
	[Dia_chi] [nvarchar](250) NULL,
	[Yeu_cau] [nvarchar](max) NULL,
	[Trang_thai] [nvarchar](50) NULL,
	[Ma_KH] [varchar](50) NULL,
	[Thoi_gian] [datetime] NULL,
 CONSTRAINT [PK_BM_ThongTinKhachHang] PRIMARY KEY CLUSTERED 
(
	[Id_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BM_ThongTinSPBan]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BM_ThongTinSPBan](
	[Id_May] [int] IDENTITY(1,1) NOT NULL,
	[Ma_so_May] [nvarchar](10) NULL,
	[Dong_May] [varchar](50) NULL,
	[Ten_KH_Ban] [nvarchar](100) NULL,
	[SDT] [varchar](50) NULL,
	[Dia_chi] [nvarchar](200) NULL,
	[Trang_Thai] [nvarchar](50) NULL,
	[Gia_ban] [float] NULL,
	[Ngay_tao] [datetime] NULL,
	[Loai_May] [nvarchar](50) NULL,
	[Ngay_mua] [datetime] NULL,
 CONSTRAINT [PK_BM_ThongTinXeBan] PRIMARY KEY CLUSTERED 
(
	[Id_May] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BM_DinhGia_Ban] ON 

INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (4, 4, NULL, 800000, 8500000, 16500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (5, 5, NULL, 200000, 780000, 1200000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (6, 6, NULL, 150000, 1000000, 1700000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (7, 7, NULL, 2400000, 6800000, 12000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (8, 8, NULL, 1500000, 8500000, 15500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (9, 9, NULL, 1200000, 850000, 1350000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (10, 10, NULL, 1500000, 7500000, 14000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (13, 13, NULL, 1500000, 5200000, 9500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (14, 14, NULL, 2500000, 6000000, 14500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (15, 12, NULL, 2500000, 7000000, 12500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (16, 15, NULL, 2200000, 8000000, 14500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (17, 16, NULL, 300000, 720000, 1400000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (21, 45, NULL, 2350000, 10800000, 14500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (22, 46, NULL, 2100000, 12500000, 14850000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (23, 17, NULL, 200000, 890000, 1200000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (24, 18, NULL, 1000000, 14000000, 18000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (25, 19, NULL, 320000, 900000, 1400000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (26, 20, NULL, 2400000, 22500000, 31000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (27, 21, NULL, 350000, 850000, 1600000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (28, 22, NULL, 2500000, 16800000, 20000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (29, 23, NULL, 2000000, 24000000, 36000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (30, 24, NULL, 1800000, 12800000, 18000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (31, 25, NULL, 2200000, 12000000, 18720000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (32, 26, NULL, 450000, 1250000, 1800000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (33, 27, NULL, 400000, 920000, 1600000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (34, 28, NULL, 320000, 890000, 1500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (35, 29, NULL, 200000, 720000, 1400000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (36, 30, NULL, 2400000, 7200000, 14500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (37, 31, NULL, 2110000, 16900000, 23000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (38, 32, NULL, 1980000, 13800000, 18500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (39, 33, NULL, 1890000, 12000000, 16800000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (40, 34, NULL, 2480000, 18200000, 25000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (42, 35, NULL, 2945000, 13200000, 18500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (43, 36, NULL, 1984000, 15200000, 19500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (45, 43, NULL, 1899000, 21500000, 25000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (46, 44, NULL, 1925000, 12000000, 17500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (47, 47, NULL, 2450000, 11200000, 17800000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (48, 48, NULL, 1450000, 11800000, 18000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (49, 50, NULL, 445000, 1100000, 1900000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (50, 51, NULL, 2540000, 13800000, 21500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (51, 52, NULL, 2345000, 8900000, 17500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (52, 53, NULL, 245000, 1100000, 1920000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (53, 54, NULL, 380000, 1000000, 1750000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (57, 37, NULL, 2549000, 15000000, 18500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (65, 55, NULL, 2750000, 14000000, 18500000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (66, 75, NULL, 600000, 2000000, 3000000)
INSERT [dbo].[BM_DinhGia_Ban] ([Id_gia_ban], [Id_May], [Loi_nhuan], [Chi_phi], [Gia_mua], [Dinh_gia]) VALUES (70, 77, NULL, 1200000, 14500000, 18500000)
SET IDENTITY_INSERT [dbo].[BM_DinhGia_Ban] OFF
GO
SET IDENTITY_INSERT [dbo].[BM_DinhGia_MuaSP] ON 

INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (5, 4, N'Hỏng ít, trầy xước ít, mới 85%', 8000000, 9000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (6, 5, N'Hư hỏng nhiều, trầy xước nhiều, mới 55%', 550000, 990000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (7, 6, N'Hư hỏng ít, trầy ít, mới 78%', 850000, 1300000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (8, 7, N'Hư hỏng nhiều, trầy nhiều, mới 68%', 6200000, 7200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (9, 8, N'Hư hỏng ít, trầy xước ít, mới 89%', 8200000, 9200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (10, 9, N'Hư hỏng ít, trầy xướt nhiều, mới 75%', 750000, 1000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (12, 10, N'Hư hỏng nhiều, trầy xướt ít', 7000000, 8200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (13, 12, N'Hư hỏng ít, trầy xướt ít, mới 80%', 7000000, 8000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (14, 13, N'Hư hỏng nặng, trầy nhiều, mới 65%', 4500000, 6200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (15, 14, N'Hư hỏng nhiều, trầy nhiều, mới 68%', 4800000, 6500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (16, 15, N'Trầy ít, hết bình, mới 82%', 7800000, 9200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (17, 16, N'Trầy ít, hư hỏng nhiều, mới 75%', 640000, 800000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (18, 17, N'Trầy nhiều, hư ít, mới 78%', 780000, 1000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (19, 18, N'Trầy ít, hư ít, mới 90%', 12000000, 15000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (20, 19, N'Trầy nhiều, hư ít, mới 82%', 820000, 1250000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (21, 20, N'Hư nhiều, trầy nhiều, mới 68%', 18000000, 24000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (22, 21, N'Hư nặng, trầy nhiều, mới 62%', 750000, 1000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (23, 22, N'Trầy nhiều, hư nhiều, mới 72%', 14000000, 18000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (24, 23, N'Trầy nhiều, hư ít, mới 80%', 23000000, 26000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (25, 24, N'Trầy ít, hư ít, mới 85%', 12000000, 14000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (26, 25, N'Trầy nhiều, hư hỏng ít, mới 78%', 9000000, 14000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (27, 26, N'Trầy ít, hư hỏng ít, mới 82%', 1000000, 1400000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (28, 27, N'Trầy nhiều, hư ít, mới 75%', 750000, 1100000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (29, 28, N'Có trầy xướt, hư ít, mới 85%', 750000, 1000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (30, 29, N'Hư nhiều, trầy nhiều, mới 65%', 400000, 850000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (31, 30, N'Có trầy xướt, hư hỏng nặng, mới 72%', 6200000, 8200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (32, 31, N'Hư hỏng nhiều, có trầy xướt, mới 75%', 15200000, 18500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (33, 43, N'Hư hỏng nhiều. trầy nhiều, mới 68%', 19000000, 24000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (34, 44, N'Hư ít, trầy xướt ít, mới 82%', 10000000, 14000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (35, 45, N'Hư ít, trầy xướt nhiều, mới 78%', 8500000, 12500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (36, 46, N'Hư hỏng nặng, trầy nhiều, mới 68%', 10000000, 14000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (37, 32, N'Hư hỏng nhiều, trầy nhiều, mới 72%', 12000000, 15000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (38, 33, N'Hư nhiều, trầy nhiều, mới 75%', 10500000, 13400000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (39, 34, N'Trầy ít, hư ít, mới 82%', 16000000, 20000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (40, 35, N'Hư nhiều, trầy ít, mới 78%', 12000000, 14500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (41, 36, N'Trầy nhiều, hư hỏng ít, mới 82%', 14000000, 16500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (42, 37, N'Trầy ít, hư hỏng ít, mới 82%', 14000000, 16800000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (43, 38, N'Hư hỏng ít, trầy nhiều, mới 79%', 10000000, 12500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (44, 39, N'Hư hỏng ít, trầy nhiều, mới 82%', 8500000, 12000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (45, 40, N'Hư hỏng nhiều, trầy ít, mới 78%', 7800000, 10000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (46, 41, N'Trầy ít, hư hỏng ít, mới 82%', 12000000, 15000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (48, 42, N'Hư nhiều, trầy xướt nhiều, mới 62%
', 9500000, 13200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (50, 47, N'Hư hỏng ít, trầy nhiều, mới 80%', 8850000, 12450000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (51, 48, N'Hư hỏng ít, trầy xước nhiều, 79%', 8900000, 12650000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (52, 50, N'Hư hỏng ít, trầy xước ít. mới 82%', 850000, 1200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (53, 51, N'Hư hỏng ít, trầy xước ít, mới 89%', 12000000, 15000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (54, 52, N'Hư hỏng nặng, trầy ước ít, mới 68%', 7200000, 10000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (55, 53, N'Hư hỏng ít, trầy xước nhiều', 700000, 1200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (56, 54, N'Hư hỏng ít, trầy ít, mới 85%', 720000, 1250000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (57, 55, N'Hư hỏng nặng, trầy nhiều, mới 78%', 12500000, 16200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (59, 56, N'Hư hỏng nhẹ, trầy nhiều, mới 75%', 8200000, 12400000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (60, 57, N'Hư hỏng nhẹ, trầy ít, 82%', 9500000, 14200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (61, 58, N'Hư hỏng nhẹ, trầy nhiều, mới 79%', 11500000, 15000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (62, 59, N'Hư hỏng ít, trầy ít, mới 85%', 14000000, 18000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (63, 60, N'Trầy nhiều, hư hỏng nhiều, mới 65%', 7200000, 9400000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (64, 61, N'Trầy ít, hư hỏng nhiều, mới 74%', 6500000, 8900000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (65, 62, N'Hư hỏng ít, trầy nhiều, mới 75%', 7400000, 9500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (66, 63, N'Hư hỏng nhiều, trầy nhiều, mới 62%', 5400000, 8200000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (67, 64, N'Trầy nhiều, hư ít, mới 72%', 500000, 850000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (68, 65, N'Hư hỏng nhiều, trầy nhiều, mới 75%', 7200000, 9450000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (69, 66, N'Hư hỏng ít, trầy ít, mới 89%', 9200000, 14500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (71, 75, N'Hư hỏng 50%', 2000000, 2000000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (72, 76, N'Hư hỏng nhẹ 90 %, xướt màn hình, vỏ trầy', 10000000, 11500000)
INSERT [dbo].[BM_DinhGia_MuaSP] ([Id_kiemTra], [Id_May], [Trang_thai], [Gia_thap_nhat], [Gia_cao_nhat]) VALUES (73, 77, N'Trầy màn hình nhẹ, 95%', 13000000, 16000000)
SET IDENTITY_INSERT [dbo].[BM_DinhGia_MuaSP] OFF
GO
SET IDENTITY_INSERT [dbo].[BM_GiaoDich] ON 

INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (11, 2, 4, 17100000, N'Thanh toán trực tiếp', N'600,000 VNĐ phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (12, 3, 6, 2000000, N'Chuyển khoản', N'300,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (14, 5, 5, 1250000, N'Thanh toán trực tiếp', N'50,000 VNĐ phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (15, 6, 10, 14500000, N'Thanh toán trực tiếp', N'500,000 VNĐ phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (16, 7, 14, 15000000, N'Thanh toán trực tiếp', N'500,000 VNĐ phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (17, 8, 9, 1400000, N'Thanh toán trực tiếp', N'50,000 VNĐ phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (18, 9, 13, 10000000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (19, 4, 7, 12500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí giao dịch', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (20, 1, 8, 16200000, N'Thanh toán trực tiếp', N'700,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (21, 10, 12, 13000000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (22, 11, 16, 1450000, N'Thanh toán trực tiếp', N'50,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (23, 12, 15, 15000000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (24, 13, 46, 15500000, N'Thanh toán trực tiếp', N'650,000 VNĐ Phí giao dịch', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (26, 14, 45, 15000000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-03-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (27, 15, 18, 18500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (28, 16, 23, 36500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (29, 17, 20, 31500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (30, 18, 21, 1650000, N'Thanh toán trực tiếp', N'50,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (31, 19, 22, 20500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (32, 20, 19, 1450000, N'Thanh toán trực tiếp', N'50,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (33, 21, 24, 18500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (34, 22, 28, 1550000, N'Thanh toán trực tiếp', N'50,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (35, 23, 30, 15000000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (36, 24, 31, 23500000, N'Thanh toán trực tiếp', N'500,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (37, 25, 27, 1650000, N'Thanh toán trực tiếp', N'50,000 VNĐ Phí dịch vụ', CAST(N'2021-04-01T02:56:36.533' AS DateTime))
INSERT [dbo].[BM_GiaoDich] ([Id_ban], [Id_KH], [Id_May], [Gia_ban], [Hinh_thuc], [Ghi_chu], [Thoi_gian]) VALUES (40, 47, 77, 20000000, N'Thanh toán trực tiếp', NULL, CAST(N'2021-03-30T00:56:01.873' AS DateTime))
SET IDENTITY_INSERT [dbo].[BM_GiaoDich] OFF
GO
SET IDENTITY_INSERT [dbo].[BM_TaiKhoan] ON 

INSERT [dbo].[BM_TaiKhoan] ([Id_Tk], [tai_khoan], [mat_khau], [phan_quyen], [MD5Code]) VALUES (1, N'huutrong                                          ', N'123456                                            ', 0, N'vXqiyaehilg=')
INSERT [dbo].[BM_TaiKhoan] ([Id_Tk], [tai_khoan], [mat_khau], [phan_quyen], [MD5Code]) VALUES (2, N'kythuat', N'123456                                            ', 1, N'vXqiyaehilg=')
INSERT [dbo].[BM_TaiKhoan] ([Id_Tk], [tai_khoan], [mat_khau], [phan_quyen], [MD5Code]) VALUES (3, N'kinhdoanh', N'123456                                            ', 2, N'vXqiyaehilg=')
INSERT [dbo].[BM_TaiKhoan] ([Id_Tk], [tai_khoan], [mat_khau], [phan_quyen], [MD5Code]) VALUES (4, N'tiepnhan', N'123456                                            ', 3, N'vXqiyaehilg=')
SET IDENTITY_INSERT [dbo].[BM_TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[BM_ThongTin_SuaChua] ON 

INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (10, 4, N'Chưa hoàn thành', N'Màn hình cảm ứng', 800000, NULL, CAST(N'2021-03-03T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (12, 5, N'Chưa hoàn thành', N'Màn hình cảm ứng', 200000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (13, 6, N'Hoàn thành', N'Màn hình cảm ứng', 150000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (14, 7, N'Hoàn thành', N'Màn hình cảm ứng', 2400000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (15, 8, N'Hoàn thành', N'Màn hình cảm ứng', 1500000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (16, 9, N'Hoàn thành', N'Màn hình cảm ứng', 200000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (17, 10, N'Chưa hoàn thành', N'Màn hình cảm ứng', 1500000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (18, 12, N'Chưa hoàn thành', N'Màn hình cảm ứng', 2000000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (19, 13, N'Chưa hoàn thành', N'Màn hình cảm ứng', 1500000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (20, 14, N'Hoàn thành', N'Màn hình cảm ứng', 2500000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (21, 15, N'Hoàn thành', N'Pin', 2200000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (22, 16, N'Hoàn thành', N'Pin', 300000, 1, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (23, 17, N'Hoàn thành', N'Pin', 200000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (24, 18, N'Chưa hoàn thành', N'Pin', 1000000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (25, 19, N'Chưa hoàn thành', N'Pin', 320000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (26, 20, N'Chưa hoàn thành', N'Pin', 2400000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (27, 21, N'Chưa hoàn thành', N'Pin', 350000, NULL, CAST(N'2021-03-02T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (28, 22, N'Chưa hoàn thành', N'Pin', 2500000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Pin')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (29, 23, N'Chưa hoàn thành', N'Vỏ điện thoại', 2000000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (30, 24, N'Chưa hoàn thành', N'Vỏ điện thoại', 1800000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (31, 25, N'Chưa hoàn thành', N'Vỏ điện thoại', 2200000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (32, 26, N'Chưa hoàn thành', N'Vỏ điện thoại', 450000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (33, 27, N'Chưa hoàn thành', N'Vỏ điện thoại', 400000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (34, 28, N'Chưa hoàn thành', N'Vỏ điện thoại', 320000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (35, 29, N'Chưa hoàn thành', N'Vỏ điện thoại', 200000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (36, 30, N'Chưa hoàn thành', N'Vỏ điện thoại', 2400000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (37, 31, N'Chưa hoàn thành', N'Vỏ điện thoại', 2110000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (38, 43, N'Chưa hoàn thành', N'Vỏ điện thoại', 1899000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (39, 44, N'Chưa hoàn thành', N'Vỏ điện thoại', 1925000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (40, 45, N'Chưa hoàn thành', N'Vỏ điện thoại', 2350000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (41, 46, N'Chưa hoàn thành', N'Vỏ điện thoại', 2100000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Vỏ điện thoại')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (44, 32, N'Chưa hoàn thành', N'Cảm ứng', 1980000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (45, 33, N'Chưa hoàn hành', N'Cảm ứng', 1890000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (46, 42, N'Chưa hoàn thành', N'Cảm ứng', 2100000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (47, 34, N'Chưa hoàn thành', N'Cảm ứng', 2480000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (48, 35, N'Chưa hoàn thành', N'Cảm ứng', 2945000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (49, 36, N'Chưa hoàn thành', N'Cảm ứng', 1984000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (50, 37, N'Chưa hoàn thành', N'Cảm ứng', 2549000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (51, 47, N'Chưa hoàn thành', N'Cảm ứng', 2450000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (52, 48, N'Chưa hoàn thành', N'Cảm ứng', 1450000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (53, 50, N'Chưa hoàn thành', N'Cảm ứng', 445000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (54, 51, N'Chưa hoàn thành', N'Cảm ứng', 2540000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (55, 52, N'Chưa hoàn thành', N'Cảm ứng', 2345000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (56, 53, N'Chưa hoàn thành', N'Cảm ứng', 245000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (57, 54, N'Chưa hoàn thành', N'Cảm ứng', 380000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (58, 55, N'Chưa hoàn thành', N'Cảm ứng', 2750000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (59, 38, N'Chưa hoàn thành', N'Cảm ứng', 3150000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (60, 39, N'Chưa hoàn thành', N'Cảm ứng', 2490000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (61, 40, N'Chưa hoàn thành', N'Cảm ứng', 1980000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (62, 41, N'Chưa hoàn thành', N'Cảm ứng', 3210000, NULL, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Cảm ứng')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (63, 75, N'2', N'd', 500000, NULL, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'd')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (64, 75, N'ds', N'sd', 100000, NULL, CAST(N'2021-04-01T00:00:00.000' AS DateTime), N'sds')
INSERT [dbo].[BM_ThongTin_SuaChua] ([Id_sua], [Id_May], [Dien_giai], [Phu_tung], [Chi_phi], [Hoan_thanh], [Thoi_gian], [Bo_phan]) VALUES (65, 77, N'Thay màn hình', N'Màn hình', 1200000, NULL, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Màn hình cảm ứng')
SET IDENTITY_INSERT [dbo].[BM_ThongTin_SuaChua] OFF
GO
SET IDENTITY_INSERT [dbo].[BM_ThongTinKhachHang] ON 

INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (1, N'NGUYỄN TRỌNG', N'0123456789', N'HCM', N'IP10', N'Đã mua', N'KH2006001', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (2, N'NGUYÊN THƯ', N'0123456788', N'HCM', N'IP10', N'Đã mua', N'KH2006002', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (3, N'ĐẶNG TÍNH', N'0123456777', N'HN', N'IP10', N'Đã mua', N'KH2006001', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (4, N'TRỌNG', N'0123456789', N'HCM', N'IP10', N'Đã mua', N'KH2006001', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (5, N'THƯ', N'0123456779', N'HCM', N'IP10', N'Đã mua', N'KH2006003', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (6, N'TÍNH', N'0123356789', N'HCM', N'IP10', N'Đã mua', N'KH2006004', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (7, N'NGUYỄN HOÀNG ANH THƯ', N'0124455667', N'An Giang', N'Samsung galaxy', N'Đã mua', N'KH2006005', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (8, N'NGUYỄN HỮU TRỌNG', N'0123456234', N'Bến Tre', N'Samsung galaxy', N'Đã mua', N'KH2006006', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (9, N'ĐẶNG MAI TÍNH', N'0123452345', N'Bình Dương', N'Samsung galaxy', N'Đã mua', N'KH2006007', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (10, N'HOÀNG', N'0945681289', N'Thủ Đức', N'Samsung galaxy', N'Đã mua', N'KH2006008', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (11, N'VIỆT', N'0934761542', N'Bình Dương', N'Samsung galaxy', N'Đã mua', N'KH2006009', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (12, N'VĨ', N'0945712498', N'Hồ Chí Minh', N'Samsung galaxy', N'Đã mua', N'KH2006010', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (13, N'TOÀN', N'0945712859', N'Bình Dương', N'Samsung galaxy', N'Đã mua', N'KH2006011', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (14, N'TÚ', N'0124289768', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006012', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (15, N'HÒA', N'0986257896', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006013', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (16, N'HIỆP', N'0934685369', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006014', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (17, N'LÊ', N'0124765987', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006015', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (18, N'TRUNG', N'0923589075', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006016', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (19, N'CHÍ', N'0945698798', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006017', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (20, N'PHƯƠNG', N'0983458749', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006018', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (21, N'PHƯỢNG', N'0124789654', N'Hồ Chí Minh', N'Samsung Note', N'Đã mua', N'KH2006019', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (22, N'VI', N'0123598642', N'Bình Phước', N'Samsung Note', N'Đã mua', N'KH2006020', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (23, N'VƯƠNG', N'0945312789', N'Thủ Đức', N'Samsung Note', N'Đã mua', N'KH2006021', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (24, N'THÚY', N'0945875217', N'Hồ Chí Minh', N'IP11', N'Đã mua', N'KH2006022', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (25, N'VY', N'0945317845', N'Hồ Chí Minh', N'IP11', N'Đã mua', N'KH2006023', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (26, N'THỦY', N'0123412671', N'Hồ Chí Minh', N'IP11', N'Mới tạo', N'KH2007001', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (27, N'HẢI', N'0123761898', N'Hồ Chí Minh', N'IP11', N'Mới tạo', N'KH2007002', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (28, N'PHONG', N'0912312312', N'Thủ Đức', N'IP11', N'Mới tạo', N'KH2007003', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (29, N'HÀO', N'0123745129', N'Nhà Bè', N'IP11', N'Mới tạo', N'KH2007004', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (30, N'BẢO', N'0121212787', N'Hồ Chí Minh', N'IP11', N'Mới tạo', N'KH2007005', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (32, N'THANH', N'0912538528', N'Bình Dương', N'IP11', N'Mới tạo', N'KH2007007', CAST(N'2021-03-30T23:40:31.463' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (33, N'THỨC', N'0942498358', N'Bến Tre', N'IP11', N'Mới tạo', N'KH2007008', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (34, N'NHƯ', N'0912398596', N'Hồ Chí Minh', N'IP11', N'Mới tạo', N'KH2007009', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (35, N'HÀO', N'0951209567', N'Bình Dương', N'IP11', N'Mới tạo', N'KH2007010', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (36, N'HÙNG', N'0941346794', N'Thủ Đức', N'IP11', N'Mới tạo', N'KH2007011', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (38, N'ĐỊNH', N'0904239506', N'Hồ Chí Minh', N'IP12', N'Mới tạo', N'KH2007012', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (39, N'HẢI', N'0904592045', N'Thủ Đức', N'IP12', N'Mới tạo', N'KH2007013', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (40, N'BÌNH', N'0903412893', N'Hồ Chí Minh', N'IP12', N'Mới tạo', N'KH2007014', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (41, N'GIANG', N'0903419584', N'Biên Hòa', N'IP12', N'Mới tạo', N'KH2007015', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (42, N'LUẬT', N'0912350294', N'Bình Dương', N'IP12', N'Mới tạo', N'KH2007016', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (43, N'ĐẠT', N'0901239450', N'Hồ Chí Minh', N'IP12', N'Mới tạo', N'KH2007017', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (44, N'ĐẠO', N'0923198045', N'Hồ Chí Minh', N'IP12', N'Mới tạo', N'KH2007018', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (45, N'THI', N'0912430596', N'Hồ Chí Minh', N'IP12', N'Mới tạo', N'KH2007019', CAST(N'2021-04-01T16:07:02.010' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (46, N'NGUYỄN HỮU TRỌNG', N'0397586827', N'202/19', N'ip 12', N'Mới tạo', N'KH2103001', CAST(N'2021-03-30T00:02:13.013' AS DateTime))
INSERT [dbo].[BM_ThongTinKhachHang] ([Id_KH], [Ho_ten], [SDT], [Dia_chi], [Yeu_cau], [Trang_thai], [Ma_KH], [Thoi_gian]) VALUES (47, N'TRẦN VĂN ĐẠI', N'02514766625', N'254, Nguyễn Thị Minh Khai, Phường 3, Quận 1, TP HCM', N'IPhone 12 Pro Max', N'Đã mua', N'KH2103002', CAST(N'2021-03-30T00:52:35.607' AS DateTime))
SET IDENTITY_INSERT [dbo].[BM_ThongTinKhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[BM_ThongTinSPBan] ON 

INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (4, N'BX2006003', N'IP8', N'Nguyễn Thư', N'0123456789', N'Tp Ho Chi Minh
', N'Mới tạo', 0, CAST(N'2021-03-29T23:44:38.527' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (5, N'BX2006004', N'IP10', N'Mai Tính', N'0123456788', N'Tp Ho Chi Minh
', N'Đã giao dịch', 780000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (6, N'BX2006005', N'IP10', N'Hữu Trọng', N'0123456777', N'Tp Ha Noi', N'Đã giao dịch', 1000000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (7, N'BX2006006', N'IP10', N'Thư', N'0123456666', N'Tp Ha Noi', N'Đã giao dịch', 6800000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (8, N'BX2006007', N'IP10', N'Trọng', N'0123455555', N'Tp Ha Noi', N'Đã giao dịch', 8500000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (9, N'BX2006008', N'IP10', N'Tính', N'0123444444', N'Tp Ha Noi', N'Đã giao dịch', 850000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (10, N'BX2006009', N'Samsung galaxy', N'Nguyễn Hoàng Anh Thư', N'0123456789', N'Tp Ha Noi', N'Đã giao dịch', 7500000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (12, N'BX2006010', N'Samsung galaxy', N'Phúc', N'0123456789', N'Tp Ho Chi Minh
', N'Đã giao dịch', 7500000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T22:23:25.713' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (13, N'BX2006011', N'Samsung galaxy', N'Mai', N'0123456345', N'Tp Hồ Chí Minh', N'Đã giao dịch', 5200000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (14, N'BX2006012', N'Samsung galaxy', N'Lan', N'0123451321', N'Bến Tre', N'Đã giao dịch', 6000000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (15, N'BX2006013', N'Samsung galaxy', N'Huệ', N'0123464213', N'Bình Dương', N'Đã giao dịch', 8000000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (16, N'BX2006014', N'Samsung galaxy', N'Thọ', N'0123462446', N'Long An', N'Đã giao dịch', 720000, CAST(N'2021-03-30T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (17, N'BX2006015', N'Samsung galaxy', N'Thiên', N'0123453113', N'Bình Phước', N'Đã định giá bán', 890000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (18, N'BX2006016', N'Samsung galaxy', N'Hồng', N'0123512451', N'Biên Hòa', N'Đã giao dịch', 14000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (19, N'BX2006017', N'Samsung galaxy', N'Hoa', N'0124553456', N'Long Thành', N'Đã giao dịch', 900000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (20, N'BX2006018', N'Samsung galaxy', N'Vũ', N'0123412345', N'Đồng Nai', N'Đã giao dịch', 22500000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (21, N'BX2006019', N'Samsung galaxy', N'Hoài', N'0123454789', N'Hồ Chí Minh', N'Đã giao dịch', 850000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (22, N'BX2006020', N'Samsung galaxy', N'Dung', N'0355456789', N'Tiền Giang', N'Đã giao dịch', 16800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (23, N'BX2006021', N'Samsung galaxy', N'Long', N'0123451239', N'Hồ Chí Minh', N'Đã giao dịch', 24000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Điện thoại', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (24, N'BX2006022', N'IP11', N'Minh', N'0932456789', N'Hồ Chí Minh', N'Đã giao dịch', 12800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (25, N'BX2006023', N'IP10', N'Thông', N'0123451234', N'Hồ Chí Minh', N'Đã định giá bán', 12000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (26, N'BX2006024', N'IP10', N'Cúc', N'0123452345', N'Hồ Chí Minh', N'Đã định giá bán', 1250000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (27, N'BX2006025', N'IP11', N'Lộc', N'0123451239', N'Hồ Chí Minh', N'Đã giao dịch', 920000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (28, N'BX2006026', N'IP11', N'Tin', N'0123451285', N'Hồ Chí Minh', N'Đã giao dịch', 890000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (29, N'BX2006027', N'IP11', N'Toán', N'0123986427', N'Hồ Chí Minh', N'Đã định giá bán', 720000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (30, N'BX2006028', N'IP11', N'Nghĩa', N'0123123432', N'Hồ Chí Minh', N'Đã giao dịch', 7200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (31, N'BX2006029', N'IP11', N'Nhân', N'0923587123', N'Bình Dương', N'Đã giao dịch', 16900000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (32, N'BX2006030', N'IP11', N'Trang', N'0128734756', N'Hồ Chí Minh', N'Đã định giá bán', 13800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (33, N'BX2006031', N'IP11', N'Tuấn', N'0983456788', N'Thủ Đức', N'Đã định giá bán', 12000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (34, N'BX2006032', N'IP11', N'Võ', N'0123598743', N'Hồ Chí Minh', N'Đã định giá bán', 18200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (35, N'BX2006033', N'IP11', N'Huỳnh', N'0912341235', N'Hồ Chí Minh', N'Đã định giá bán', 13200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (36, N'BX2006034', N'IP11', N'Ngọc', N'0123123768', N'Hồ Chí Minh', N'Đã định giá bán', 15200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (37, N'BX2006035', N'IP11', N'Anh', N'0123126783', N'Hồ Chí Minh', N'Đã định giá bán', 15000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (38, N'BX2006036', N'IP11', N'Kiệt', N'0912312343', N'Hồ Chí Minh', N'Sửa chữa', 11400000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (39, N'BX2006037', N'IP11', N'Bích', N'56-D5 85912', N'Hồ Chí Minh', N'Sửa chữa', 10800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (40, N'BX2006038', N'IP12', N'Trâm', N'0123123985', N'Hồ Chí Minh', N'Sửa chữa', 8900000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (41, N'BX2006039', N'IP12', N'Trí', N'0123765989', N'Hồ Chí Minh', N'Sửa chữa', 13900000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (42, N'BX2006040', N'IP12', N'Nhật', N'0978978968', N'Hồ Chí Minh', N'Sửa chữa', 12000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (43, N'BX2007001', N'IP12', N'Quang', N'0943768098', N'Hồ Chí Minh', N'Đã định giá bán', 21500000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (44, N'BX2007002', N'IP12', N'Đăng', N'0985675698', N'Hò Chí Minh', N'Đã định giá bán', 12000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (45, N'BX2007003', N'IP12', N'Hạnh', N'0345348759', N'Hồ Chí Minh', N'Đã giao dịch', 10800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (46, N'BX2007004', N'IP12', N'Nhi', N'0967453498', N'Hồ Chí Minh', N'Đã giao dịch', 12500000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (47, N'BX2007005', N'IP12', N'Thoại', N'0123980789', N'Hồ Chí Minh', N'Đã định giá bán', 11200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (48, N'BX2007006', N'IP12', N'Công', N'0967934058', N'Hồ Chí Minh', N'Đã định giá bán', 11800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (50, N'BX2007007', N'Samsung note', N'Lý', N'0945612397', N'Bình Dương', N'Đã định giá bán', 1100000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (51, N'BX2007008', N'Samsung note', N'Duyên', N'0923154126', N'Hồ Chí Minh', N'Đã định giá bán', 13800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (52, N'BX2007009', N'Samsung note', N'Nguyệt', N'0934129695', N'Hồ Chí Minh', N'Đã định giá bán', 8900000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (53, N'BX2007010', N'Samsung note', N'Dũng', N'0945213958', N'Hồ Chí Minh', N'Đã định giá bán', 1100000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (54, N'BX2007011', N'Samsung note', N'Tiên', N'0934129583', N'Hồ Chí Minh', N'Đã định giá bán', 1000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (55, N'BX2007012', N'Samsung note', N'Nam', N'0124195839', N'Hồ Chí Minh', N'Đã định giá bán', 14000000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (56, N'BX2007013', N'Samsung note', N'Thành', N'0912398495', N'Hồ Chí Minh', N'Đã mua', 10200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (57, N'BX2007014', N'Samsung note', N'Phú', N'0912349869', N'Hồ Chí Minh', N'Đã mua', 12400000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (58, N'BX2007015', N'Samsung note', N'Kiên', N'0923598014', N'Bình Dương', N'Đã mua', 13400000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (59, N'BX2007016', N'Samsung note', N'Tánh', N'0945981024', N'Bình Chánh', N'Đã mua', 15800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (60, N'BX2007017', N'Samsung note', N'Cường', N'0923451989', N'Biên Hòa', N'Đã mua', 8200000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (61, N'BX2007018', N'Samsung note', N'Linh', N'0912419498', N'Hồ Chí Minh', N'Đã mua', 7800000, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', CAST(N'2021-04-01T00:13:25.063' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (62, N'BX2007019', N'Samsung note', N'Thu', N'0903492049', N'Hồ Chí Minh', N'Đã kiểm tra', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (63, N'BX2007020', N'Samsung note', N'Vân', N'0945829458', N'Hồ Chí Minh', N'Đã kiểm tra', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (64, N'BX2007021', N'Samsung note', N'Trân', N'0904294849', N'Hồ Chí Minh', N'Đã kiểm tra', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (65, N'BX2007022', N'Samsung note', N'Tùng', N'0903492849', N'Hồ Chí Minh', N'Đã kiểm tra', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (66, N'BX2007023', N'Samsung note', N'Khoa', N'0904294895', N'Thủ Đức', N'Đã kiểm tra', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (67, N'BX2007024', N'Samsung note', N'Thiên', N'0934389395', N'Hồ Chí Minh', N'Mới tạo', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (68, N'BX2007025', N'Samsung note', N'Long', N'0950249569', N'Hồ Chí Minh', N'Mới tạo', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (69, N'BX2007026', N'Samsung note', N'Khang', N'0958388427', N'Hồ Chí Minh', N'Mới tạo', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (70, N'BX2007027', N'Samsung note', N'Thịnh', N'0945938684', N'Hồ Chí Minh', N'Mới tạo', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (71, N'BX2007028', N'Samsung note', N'Phúc', N'0956836926', N'Hồ Chí Minh', N'Mới tạo', 0, CAST(N'2021-04-20T19:11:52.947' AS DateTime), N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Máy tính bảng', NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (73, N'BX2103001', N'IP 12 Pro', N'Nguyễn Hữu Trọng', N'0397586827', N'202/19, Lý Thường Kiệt, P14, Q10, TP HCM', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (75, N'BX2103002', N'Test', N'test', N'12345', N'123, Test', N'Đã định giá bán', 2000000, CAST(N'2021-03-29T23:51:11.280' AS DateTime), N'Điện thoại', CAST(N'2021-03-29T23:54:32.313' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (76, N'BX2103003', N'Iphone 12 Pro', N'Nguyễn Hữu Trọng', N'0397586827', N'202/19, Lý Thường Kiệt , Phường 14, Quận 10, TP HCM', N'Đã mua', 11000000, CAST(N'2021-03-30T00:30:02.557' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T00:32:09.653' AS DateTime))
INSERT [dbo].[BM_ThongTinSPBan] ([Id_May], [Ma_so_May], [Dong_May], [Ten_KH_Ban], [SDT], [Dia_chi], [Trang_Thai], [Gia_ban], [Ngay_tao], [Loai_May], [Ngay_mua]) VALUES (77, N'BX2103004', N'IPhone 12 Pro Max', N'Nguyễn Thị Hồng Cúc', N'036954227', N'141, Lý Thái Tổ, P10, Q11, TP HCM', N'Đã giao dịch', 14500000, CAST(N'2021-03-30T00:39:16.790' AS DateTime), N'Điện thoại', CAST(N'2021-03-30T00:41:34.923' AS DateTime))
SET IDENTITY_INSERT [dbo].[BM_ThongTinSPBan] OFF
GO
ALTER TABLE [dbo].[BM_DinhGia_Ban]  WITH CHECK ADD  CONSTRAINT [FK_BM_DinhGia_Ban_BM_ThongTinXeBan] FOREIGN KEY([Id_May])
REFERENCES [dbo].[BM_ThongTinSPBan] ([Id_May])
GO
ALTER TABLE [dbo].[BM_DinhGia_Ban] CHECK CONSTRAINT [FK_BM_DinhGia_Ban_BM_ThongTinXeBan]
GO
ALTER TABLE [dbo].[BM_DinhGia_MuaSP]  WITH CHECK ADD  CONSTRAINT [FK_BM_DinhGia_MuaXe_BM_ThongTinXeBan] FOREIGN KEY([Id_May])
REFERENCES [dbo].[BM_ThongTinSPBan] ([Id_May])
GO
ALTER TABLE [dbo].[BM_DinhGia_MuaSP] CHECK CONSTRAINT [FK_BM_DinhGia_MuaXe_BM_ThongTinXeBan]
GO
ALTER TABLE [dbo].[BM_GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_BM_GiaoDich_BM_ThongTinKhachHang] FOREIGN KEY([Id_KH])
REFERENCES [dbo].[BM_ThongTinKhachHang] ([Id_KH])
GO
ALTER TABLE [dbo].[BM_GiaoDich] CHECK CONSTRAINT [FK_BM_GiaoDich_BM_ThongTinKhachHang]
GO
ALTER TABLE [dbo].[BM_GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_BM_GiaoDich_BM_ThongTinXeBan] FOREIGN KEY([Id_May])
REFERENCES [dbo].[BM_ThongTinSPBan] ([Id_May])
GO
ALTER TABLE [dbo].[BM_GiaoDich] CHECK CONSTRAINT [FK_BM_GiaoDich_BM_ThongTinXeBan]
GO
ALTER TABLE [dbo].[BM_ThongTin_SuaChua]  WITH CHECK ADD  CONSTRAINT [FK_BM_ThongTin_SuaChua_BM_ThongTinXeBan] FOREIGN KEY([Id_May])
REFERENCES [dbo].[BM_ThongTinSPBan] ([Id_May])
GO
ALTER TABLE [dbo].[BM_ThongTin_SuaChua] CHECK CONSTRAINT [FK_BM_ThongTin_SuaChua_BM_ThongTinXeBan]
GO
/****** Object:  StoredProcedure [dbo].[BM_CUSTOMER_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_CUSTOMER_DETAILS]
	-- Add the parameters for the stored procedure here
	@Year int, @Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select A.Id_KH,A.Ho_ten,A.Dia_chi,A.Ma_KH,A.SDT,A.Trang_thai,A.Yeu_cau from BM_ThongTinKhachHang A
	LEFT JOIN BM_GiaoDich B ON A.Id_KH=B.Id_KH
	WHERE (YEAR(A.Thoi_gian)=@Year OR @Year=-1) AND (Month(A.Thoi_gian)=@Month OR @Month=-1) AND (A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã mua')
 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_CUSTOMER_MENU]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_CUSTOMER_MENU]
	-- Add the parameters for the stored procedure here
	@SanPham NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select MONTH(A.Thoi_gian) Pmonth, YEAR(A.Thoi_gian) PYear from BM_ThongTinKhachHang A
	LEFT JOIN BM_GiaoDich B ON A.Id_KH=B.Id_KH
	WHERE A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã mua'
	GROUP BY MONTH(A.Thoi_gian) , YEAR(A.Thoi_gian) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_DINHGIA_MENU]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_DINHGIA_MENU]
	-- Add the parameters for the stored procedure here
	@SanPham NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select MONTH(A.Ngay_tao) Pmonth, YEAR(A.Ngay_tao) PYear from BM_ThongTinSPBan A
	LEFT JOIN BM_ThongTin_SuaChua B ON A.Id_May=B.Id_May
	LEFT JOIN BM_DinhGia_Ban C ON A.Id_May=B.Id_May
	WHERE (A.Trang_Thai=N'Đã mua' OR A.Trang_Thai=N'Sửa chữa' OR A.Trang_Thai=N'Đã định giá bán')
	GROUP BY MONTH(A.Ngay_tao) , YEAR(A.Ngay_tao) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_DINHGIA_MUA_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_DINHGIA_MUA_DETAILS]
	-- Add the parameters for the stored procedure here
	@Year INT, @Month INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select A.Id_May,B.Id_kiemTra,ISNULL(B.Gia_thap_nhat,0)Gia_thap_nhat,IsNULL(B.Gia_cao_nhat,0)Gia_cao_nhat,A.Trang_Thai,A.Loai_May,B.Trang_thai TinhTrang, A.Ma_so_May from BM_ThongTinSPBan A
	LEFT JOIN BM_DinhGia_MuaSP B ON A.Id_May=B.Id_May
	WHERE (A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã kiểm tra' )
	AND (MONTH(A.Ngay_tao)=@Month OR @Month=-1) AND( YEAR(A.Ngay_tao) =@Year OR @Year=-1)
	--GROUP BY MONTH(A.Ngay_tao) , YEAR(A.Ngay_tao) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_DINHGIA_MUA_MENU]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_DINHGIA_MUA_MENU]
	-- Add the parameters for the stored procedure here
	@SanPham NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select MONTH(A.Ngay_tao) Pmonth, YEAR(A.Ngay_tao) PYear from BM_ThongTinSPBan A
	LEFT JOIN BM_DinhGia_MuaSP B ON A.Id_May=B.Id_May
	WHERE (A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã kiểm tra')
	GROUP BY MONTH(A.Ngay_tao) , YEAR(A.Ngay_tao) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_INFORTECHNICAL__MENU]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_INFORTECHNICAL__MENU]
	-- Add the parameters for the stored procedure here
	@SanPham NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select MONTH(A.Ngay_tao) Pmonth, YEAR(A.Ngay_tao) PYear from BM_ThongTinSPBan A
	LEFT JOIN BM_ThongTin_SuaChua B ON A.Id_May=B.Id_May
	WHERE A.Trang_Thai=N'Đã mua' OR A.Trang_Thai=N'Sửa chữa'
	GROUP BY MONTH(A.Ngay_tao) , YEAR(A.Ngay_tao) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_INFORTECHNICAL_MAIN]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_INFORTECHNICAL_MAIN]
	-- Add the parameters for the stored procedure here
	@Year INT, @Month INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT A.Id_May,A.Ma_so_May,A.Loai_May, SUM(ISNULL(B.Chi_phi,0)) TongChiPhi, MAX(B.Thoi_gian) ThoiGian,A.Trang_Thai FROM BM_ThongTinSPBan A
	LEFT JOIN BM_ThongTin_SuaChua B ON A.Id_May=B.Id_May --AND (YEAR(A.Ngay_tao)=@Year OR @Year=-1) AND (MONTH(A.Ngay_tao)=@Month Or @Month=-1)
	WHERE (YEAR(A.Ngay_tao)=@Year OR @Year=-1) AND (MONTH(A.Ngay_tao)=@Month Or @Month=-1) AND  (A.Trang_Thai=N'Đã mua' OR A.Trang_Thai=N'Sửa chữa')
	GROUP BY A.Ma_so_May,A.Loai_May,A.Id_May,A.Trang_Thai
END


GO
/****** Object:  StoredProcedure [dbo].[BM_KHACHHANG_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_KHACHHANG_DETAILS]
	-- Add the parameters for the stored procedure here
	@Nam INT, @Thang INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROm BM_ThongTinKhachHang A
	WHERE (YEAR(A.Thoi_gian)=@Nam or @Nam=-1) 
	AND (Month(A.Thoi_gian)=@Thang OR @Thang=-1)
END


GO
/****** Object:  StoredProcedure [dbo].[BM_LISTPRODUCT_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_LISTPRODUCT_DETAILS]
	-- Add the parameters for the stored procedure here
	@Year int, @Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		Select A.Id_May,A.Loai_May,A.Dong_May,A.Ma_so_May,A.Ten_KH_Ban,A.SDT,ISNULL(A.Gia_ban,0) Gia_ban, A.Dia_chi,
		B.Id_kiemTra,ISNULL(B.Gia_cao_nhat,0) Gia_cao_nhat,ISNULL(B.Gia_thap_nhat,0) Gia_thap_nhat,A.Trang_Thai FROM BM_ThongTinSPBan A
		LEFT JOIN BM_DinhGia_MuaSP B ON A.Id_May=B.Id_May
		WHERE (A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã kiểm tra' OR A.Trang_Thai=N'Đã mua')
		AND (YEAR(A.Ngay_tao)=@Year OR @Year=-1) AND (Month(A.Ngay_tao)=@Month OR @Month=-1)
		--GROUP BY MONTH(A.Ngay_tao) , YEAR(A.Ngay_tao) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_LISTPRODUCT_MENU]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_LISTPRODUCT_MENU]
	-- Add the parameters for the stored procedure here
	@SanPham NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select MONTH(A.Ngay_tao) Pmonth, YEAR(A.Ngay_tao) PYear from BM_ThongTinSPBan A
	LEFT JOIN BM_DinhGia_MuaSP B ON A.Id_May=B.Id_May
	WHERE A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã kiểm tra' OR A.Trang_Thai=N'Đã mua'
	GROUP BY MONTH(A.Ngay_tao) , YEAR(A.Ngay_tao) 
END


GO
/****** Object:  StoredProcedure [dbo].[BM_REPORT_BUY_SELL]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_REPORT_BUY_SELL] 
	-- Add the parameters for the stored procedure here
	@Day int, @Year int, @Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT A.Id_May,A.Loai_May, N'Đã mua' AS Trang_Thai, A.Gia_ban GiaMua,0 Gia_ban,A.Ma_so_May  FROM BM_ThongTinSPBan A
WHERE A.Trang_Thai<>N'Đã giao dịch' AND  A.Trang_Thai<>N'Mới tạo' AND (DAY(A.Ngay_mua)=@Day OR @Day =-1) AND  (Year(A.Ngay_mua)=@Year OR @Year =-1) AND  (Month(A.Ngay_mua)=@Month OR @Month =-1)
UNION
SELECT A.Id_May,A.Loai_May,A.Trang_Thai, A.Gia_ban GiaMua,B.Gia_ban,A.Ma_so_May  FROM BM_ThongTinSPBan A
INNER JOIN BM_GiaoDich B ON A.Id_May=B.Id_May AND (DAY(B.Thoi_gian)=@Day OR @Day =-1) AND  (Year(B.Thoi_gian)=@Year OR @Year =-1) AND  (Month(B.Thoi_gian)=@Month OR @Month =-1)
WHERE A.Trang_Thai=N'Đã giao dịch'
END


GO
/****** Object:  StoredProcedure [dbo].[BM_REPORT_BUY_SELL_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_REPORT_BUY_SELL_DETAILS]
	-- Add the parameters for the stored procedure here
	@Day int, @Year int, @Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT A.Id_May,A.Loai_May, N'Đã mua' AS Trang_Thai, A.Gia_ban GiaMua,0 Gia_ban,A.Ma_so_May, ISNULL(SUM(C.Chi_phi),0) ChiPhi, 0 LoiNhuan  FROM BM_ThongTinSPBan A
	LEFT JOIN BM_ThongTin_SuaChua C ON C.Id_May=A.Id_May
WHERE A.Trang_Thai<>N'Đã giao dịch' AND  A.Trang_Thai<>N'Mới tạo' AND (DAY(A.Ngay_mua)=@Day OR @Day =-1) AND  (Year(A.Ngay_mua)=@Year OR @Year =-1) AND  (Month(A.Ngay_mua)=@Month OR @Month =-1)
GROUP BY A.Id_May,A.Loai_May, A.Gia_ban ,A.Ma_so_May
UNION
SELECT A.Id_May,A.Loai_May,A.Trang_Thai, A.Gia_ban GiaMua,B.Gia_ban,A.Ma_so_May, ISNULL(SUM(C.Chi_phi),0) ChiPhi, B.Gia_ban-(A.Gia_ban+ISNULL(SUM(C.Chi_phi),0)) LoiNhuan  FROM BM_ThongTinSPBan A
LEFT JOIN BM_ThongTin_SuaChua C ON C.Id_May=A.Id_May
INNER JOIN BM_GiaoDich B ON A.Id_May=B.Id_May AND (DAY(B.Thoi_gian)=@Day OR @Day =-1) AND  (Year(B.Thoi_gian)=@Year OR @Year =-1) AND  (Month(B.Thoi_gian)=@Month OR @Month =-1)
WHERE A.Trang_Thai=N'Đã giao dịch'
GROUP BY  A.Id_May,A.Loai_May,A.Trang_Thai, A.Gia_ban ,B.Gia_ban,A.Ma_so_May
END


GO
/****** Object:  StoredProcedure [dbo].[BM_REPORT_BUY_SELL_DETAILS_EACH]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_REPORT_BUY_SELL_DETAILS_EACH]
	-- Add the parameters for the stored procedure here
	@IdMay Int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT A.Id_May,A.Loai_May,A.Trang_Thai, A.Gia_ban GiaMua,B.Gia_ban,A.Ma_so_May, ISNULL(SUM(C.Chi_phi),0) ChiPhi, B.Gia_ban-(A.Gia_ban+ISNULL(SUM(C.Chi_phi),0)) LoiNhuan  FROM BM_ThongTinSPBan A
LEFT JOIN BM_ThongTin_SuaChua C ON C.Id_May=A.Id_May
INNER JOIN BM_GiaoDich B ON A.Id_May=B.Id_May 
WHERE A.Id_May=@IdMay
GROUP BY  A.Id_May,A.Loai_May,A.Trang_Thai, A.Gia_ban ,B.Gia_ban,A.Ma_so_May
END


GO
/****** Object:  StoredProcedure [dbo].[BM_SELLPRODUCT_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_SELLPRODUCT_DETAILS]
	-- Add the parameters for the stored procedure here
	@Year int, @Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select A.Id_KH,A.Ho_ten,A.Dia_chi,A.Ma_KH,A.SDT,A.Trang_thai,A.Yeu_cau,B.Id_May,B.Gia_ban,C.Dong_May,C.Ma_so_May,C.Loai_May,B.Id_ban from BM_ThongTinKhachHang A
	LEFT JOIN BM_GiaoDich B ON A.Id_KH=B.Id_KH
	LEFT JOIN BM_ThongTinSPBan C ON C.Id_May=B.Id_May
	WHERE (YEAR(A.Thoi_gian)=@Year OR @Year=-1) AND (Month(A.Thoi_gian)=@Month OR @Month=-1) AND (A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã mua')
	--WHERE A.Trang_Thai=N'Mới tạo' OR A.Trang_Thai=N'Đã mua' AND (YEAR(A.Thoi_gian)=@Year OR @Year=-1) AND (Month(A.Thoi_gian)=@Month OR @Month=-1)
END


GO
/****** Object:  StoredProcedure [dbo].[BM_THONGTINSP_DINHGIA]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_THONGTINSP_DINHGIA]
	-- Add the parameters for the stored procedure here
	@Id_May INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT A.Id_May,A.Loai_May,  A.Ma_so_May,A.Gia_ban,SUM(ISNULL(B.Chi_phi,0)) ChiPhi FROM BM_ThongTinSPBan A
LEFT JOIN BM_ThongTin_SuaChua B ON A.Id_May=B.Id_May
WHERE A.Id_May=@Id_May
GROUP BY A.Id_May,A.Loai_May,  A.Ma_so_May,A.Gia_ban
END


GO
/****** Object:  StoredProcedure [dbo].[BM_THONGTINSP_DINHGIA_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_THONGTINSP_DINHGIA_DETAILS]
	-- Add the parameters for the stored procedure here
	@Year INT, @Month INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT A.Id_May,A.Loai_May,  A.Ma_so_May,A.Gia_ban,SUM(ISNULL(B.Chi_phi,0)) ChiPhi,IsNULL(C.Dinh_gia,0) Dinh_gia,A.Trang_Thai,C.Id_gia_ban FROM BM_ThongTinSPBan A
LEFT JOIN BM_ThongTin_SuaChua B ON A.Id_May=B.Id_May
LEFT JOIN BM_DinhGia_Ban C ON A.Id_May=C.Id_May
WHERE (MONTH(A.Ngay_tao)=@Month OR @Month=-1) AND (YEAR(A.Ngay_tao)=@Year OR @Year=-1) AND (A.Trang_Thai=N'Đã mua' OR A.Trang_Thai=N'Sửa chữa' OR A.Trang_Thai=N'Đã định giá bán')
GROUP BY A.Id_May,A.Loai_May,  A.Ma_so_May,A.Gia_ban,C.Dinh_gia ,A.Trang_Thai,C.Id_gia_ban
END


GO
/****** Object:  StoredProcedure [dbo].[BM_XACNHANMUASP_DETAILS]    Script Date: 3/30/2021 1:43:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BM_XACNHANMUASP_DETAILS]
	-- Add the parameters for the stored procedure here
	 @Id_May INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT A.Id_May,A.Ma_so_May,B.Gia_cao_nhat,B.Gia_thap_nhat,A.Ngay_mua, A.Gia_ban,A.Loai_May FROM BM_ThongTinSPBan A
	INNER JOIN BM_DinhGia_MuaSP B ON A.Id_May=B.Id_May And A.Id_May=@Id_May
END


GO
USE [master]
GO
ALTER DATABASE [QuanLyMuaBanSanPham] SET  READ_WRITE 
GO
