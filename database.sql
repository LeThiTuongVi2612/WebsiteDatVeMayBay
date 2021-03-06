USE [master]
GO
/****** Object:  Database [WebDatVe]    Script Date: 12/18/2021 1:46:43 PM ******/
CREATE DATABASE [WebDatVe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebDatVe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebDatVe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebDatVe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebDatVe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebDatVe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebDatVe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebDatVe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebDatVe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebDatVe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebDatVe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebDatVe] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebDatVe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebDatVe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebDatVe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebDatVe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebDatVe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebDatVe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebDatVe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebDatVe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebDatVe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebDatVe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebDatVe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebDatVe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebDatVe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebDatVe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebDatVe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebDatVe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebDatVe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebDatVe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebDatVe] SET  MULTI_USER 
GO
ALTER DATABASE [WebDatVe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebDatVe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebDatVe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebDatVe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebDatVe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebDatVe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebDatVe] SET QUERY_STORE = OFF
GO
USE [WebDatVe]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaChuyenBay] [bigint] IDENTITY(1,1) NOT NULL,
	[DiemDi] [bigint] NULL,
	[DiemDen] [bigint] NULL,
	[ThoiGianDi] [datetime] NULL,
	[ThoiGianDen] [datetime] NULL,
	[MaMayBay] [varchar](10) NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_CB] PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangBay]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangBay](
	[MaHangBay] [bigint] IDENTITY(1,1) NOT NULL,
	[TenHangBay] [nvarchar](50) NULL,
	[Logo] [text] NULL,
 CONSTRAINT [PK_HangBay] PRIMARY KEY CLUSTERED 
(
	[MaHangBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [bigint] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [varchar](50) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[MaVe] [varchar](50) NULL,
	[LoaiKhachHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayBay]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayBay](
	[MaMayBay] [varchar](10) NOT NULL,
	[SoGhePhoThong] [int] NULL,
	[SoGheThuongGia] [int] NULL,
	[SoGhePhoThongDacBiet] [int] NULL,
	[SoGheHangNhat] [int] NULL,
	[MahangBay] [bigint] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MaMayBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDatVe]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDatVe](
	[MaNguoiDat] [bigint] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[Email] [nvarchar](50) NULL,
	[MaVe] [varchar](50) NULL,
 CONSTRAINT [PK_NguoiDatVe] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanBay]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanBay](
	[MaSanBay] [bigint] IDENTITY(1,1) NOT NULL,
	[TenSanBay] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanBay] PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](200) NULL,
	[MatKhau] [varchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[Quyen] [nchar](10) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [varchar](50) NOT NULL,
	[MaChuyenBay] [bigint] NULL,
	[HangVe] [nvarchar](50) NULL,
	[SoLuongGhe] [int] NULL,
	[MaTaiKhoan] [bigint] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[NgayDat] [datetime] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeDaLuu]    Script Date: 12/18/2021 1:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeDaLuu](
	[MaVeDaLuu] [bigint] IDENTITY(1,1) NOT NULL,
	[MaChuyenBay] [bigint] NULL,
	[MaTaiKhoan] [bigint] NULL,
 CONSTRAINT [PK_VeDaLuu] PRIMARY KEY CLUSTERED 
(
	[MaVeDaLuu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChuyenBay] ON 

INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [DiemDi], [DiemDen], [ThoiGianDi], [ThoiGianDen], [MaMayBay], [Gia]) VALUES (1, 1, 2, CAST(N'2021-12-18T07:30:00.000' AS DateTime), CAST(N'2021-12-18T09:30:00.000' AS DateTime), N'VJ-521', 420000)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [DiemDi], [DiemDen], [ThoiGianDi], [ThoiGianDen], [MaMayBay], [Gia]) VALUES (2, 1, 2, CAST(N'2021-12-18T10:00:00.000' AS DateTime), CAST(N'2021-12-18T13:00:00.000' AS DateTime), N'BB-123', 430000)
SET IDENTITY_INSERT [dbo].[ChuyenBay] OFF
GO
SET IDENTITY_INSERT [dbo].[HangBay] ON 

INSERT [dbo].[HangBay] ([MaHangBay], [TenHangBay], [Logo]) VALUES (1, N'VietJet Air', N'Logo-Vietjet.png')
INSERT [dbo].[HangBay] ([MaHangBay], [TenHangBay], [Logo]) VALUES (2, N'Bamboo', N'Logo-Bamboo.png')
SET IDENTITY_INSERT [dbo].[HangBay] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [Ho], [Ten], [SDT], [NgaySinh], [CMND], [QuocTich], [MaVe], [LoaiKhachHang]) VALUES (1, N'Phạm ', N'Văn Thanh', N'0789547895', CAST(N'2000-12-06' AS Date), N'271548795', N'Việt Nam', N'112/17/2021 10:07:47', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[MayBay] ([MaMayBay], [SoGhePhoThong], [SoGheThuongGia], [SoGhePhoThongDacBiet], [SoGheHangNhat], [MahangBay]) VALUES (N'BB-123', 60, 40, 20, 10, 2)
INSERT [dbo].[MayBay] ([MaMayBay], [SoGhePhoThong], [SoGheThuongGia], [SoGhePhoThongDacBiet], [SoGheHangNhat], [MahangBay]) VALUES (N'VJ-521', 60, 40, 20, 10, 1)
GO
SET IDENTITY_INSERT [dbo].[SanBay] ON 

INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [DiaChi]) VALUES (1, N'Nội Bài', N'Hà Nội')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [DiaChi]) VALUES (2, N'Tân Sơn Nhất', N'TP HCM')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [DiaChi]) VALUES (3, N'Cát Bi', N'Hải Phòng')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [DiaChi]) VALUES (4, N'Điện Biên Phủ', N'Điện Biên')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [DiaChi]) VALUES (5, N'Thọ Xuân', N'Thanh Hóa')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [DiaChi]) VALUES (6, N'Vinh', N'Nghệ An')
SET IDENTITY_INSERT [dbo].[SanBay] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [Email], [MatKhau], [HoTen], [SDT], [Quyen]) VALUES (1, N'phamhuynhhaiyen1107@gmail.com', N'123', N'Phạm Huỳnh Hải Yến', N'0123456789', N'0         ')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[Ve] ([MaVe], [MaChuyenBay], [HangVe], [SoLuongGhe], [MaTaiKhoan], [TinhTrang], [NgayDat], [TongTien]) VALUES (N'112/17/2021 10:07:47', 1, N'Phổ thông', 1, 1, N'Processing', CAST(N'2021-12-17T10:07:47.440' AS DateTime), 462000)
GO
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenBay_MayBay] FOREIGN KEY([MaMayBay])
REFERENCES [dbo].[MayBay] ([MaMayBay])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [FK_ChuyenBay_MayBay]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_Ve]
GO
ALTER TABLE [dbo].[MayBay]  WITH CHECK ADD  CONSTRAINT [FK_MayBay_HangBay] FOREIGN KEY([MahangBay])
REFERENCES [dbo].[HangBay] ([MaHangBay])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MayBay] CHECK CONSTRAINT [FK_MayBay_HangBay]
GO
ALTER TABLE [dbo].[NguoiDatVe]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDatVe_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NguoiDatVe] CHECK CONSTRAINT [FK_NguoiDatVe_Ve]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_ChuyenBay1] FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_ChuyenBay1]
GO
ALTER TABLE [dbo].[VeDaLuu]  WITH CHECK ADD  CONSTRAINT [FK_VeDaLuu_ChuyenBay] FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VeDaLuu] CHECK CONSTRAINT [FK_VeDaLuu_ChuyenBay]
GO
USE [master]
GO
ALTER DATABASE [WebDatVe] SET  READ_WRITE 
GO
