USE [master]
GO
/****** Object:  Database [QUANLIBANHANG]    Script Date: 02/12/2019 1:35:32 CH ******/
CREATE DATABASE [QUANLIBANHANG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLIBANHANG', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QUANLIBANHANG.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLIBANHANG_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QUANLIBANHANG_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLIBANHANG] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLIBANHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLIBANHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLIBANHANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLIBANHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLIBANHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLIBANHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLIBANHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLIBANHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLIBANHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLIBANHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLIBANHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLIBANHANG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QUANLIBANHANG] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QUANLIBANHANG]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonBan]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBan](
	[MaHD] [nvarchar](15) NOT NULL,
	[MaSP] [nvarchar](15) NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonVi] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhap]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhap](
	[MaHD] [nvarchar](15) NOT NULL,
	[MaSP] [nvarchar](15) NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonVi] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDonVi] [nchar](10) NOT NULL,
	[TenDonVi] [nchar](10) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Form]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Form] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHD] [nvarchar](15) NOT NULL,
	[MaKH] [nvarchar](15) NULL,
	[TenKH] [nvarchar](50) NULL,
	[MaNV] [nvarchar](15) NULL,
	[NgayBan] [date] NULL,
	[TongTien] [float] NULL,
	[DaTra] [float] NULL,
	[ConLai] [float] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHD] [nvarchar](15) NOT NULL,
	[MaNCC] [nvarchar](15) NULL,
	[TenNCC] [nvarchar](50) NULL,
	[MaNV] [nvarchar](15) NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [float] NULL,
	[DaTra] [float] NULL,
	[ConLai] [float] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[Number] [nvarchar](100) NULL,
	[MaKhuVuc] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKho] [nchar](10) NOT NULL,
	[TenKho] [nvarchar](100) NULL,
	[LienHe] [nvarchar](50) NULL,
	[DienThoai] [nchar](15) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[ConQuanLy] [bit] NULL CONSTRAINT [DF_KhoHang_ConQuanLy]  DEFAULT ((1)),
 CONSTRAINT [PK_KhoHang] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKhuVuc] [nchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiHang] [nvarchar](10) NOT NULL,
	[TenLoaiHang] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](15) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](200) NULL,
	[MaKhuVuc] [nchar](10) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](15) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleForm]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[FormId] [int] NULL,
	[Access] [bit] NULL,
	[Insert] [bit] NULL,
	[Delete] [bit] NULL,
	[Update] [bit] NULL,
	[Print] [bit] NULL,
	[Import] [bit] NULL,
	[Export] [bit] NULL,
 CONSTRAINT [PK_RoleForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleUser]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descript] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](15) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MoTa] [nvarchar](200) NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[DonVi] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[GiaMua] [float] NULL,
	[GiaBan] [float] NULL,
	[Code] [nvarchar](30) NULL,
	[NhaCungCap] [nvarchar](15) NULL,
	[MaLoai] [nvarchar](10) NULL,
	[MaKho] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 02/12/2019 1:35:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[MaNV] [nvarchar](15) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'Cái       ', N'Cái       ')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'Chiếc     ', N'Chiếc     ')
SET IDENTITY_INSERT [dbo].[Form] ON 

INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (1, N'frmHangHoa', N'Quản Lý Sản Phẩm')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (2, N'frmNhaCungCap', N'Quản Lý Nhà Sản Xuất')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (3, N'frmNVien', N'Quản Lý Người Dùng')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (4, N'frmBoPhan', N'Bộ Phận')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (5, N'frmDonViTinh', N'Đơn Vị Tính')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (6, N'frmKhachHang', N'Khách Hàng')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (7, N'frmKhoHang', N'Kho Hàng')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (8, N'frmKhuVuc', N'Khu Vực')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (9, N'frmNhomHang', N'Nhóm Hang')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (10, N'frmTyGia', N'Tỷ Giá')
INSERT [dbo].[Form] ([Id], [Name], [Description]) VALUES (11, N'frmThuTien', N'Thu Tiền')
SET IDENTITY_INSERT [dbo].[Form] OFF
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH001', N'Hồ Thị Duyên', N'123 Điện Biên Phủ', N'0123456789', N'MB        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH002', N'Trần Văn Cường', N'125 Lê Đức Thọ', N'0126584239', N'MT        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH003', N'Trần Linh Vương', N'34 Lê Văn Sĩ', N'0125478965', N'MN        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH004', N'Nguyễn Thị An', N'87 Lê Duẩn', N'0356483548', N'MB        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH005', N'Nguyễn Văn Đại', N'781 Nguyễn Oanh', N'0354133216', N'MT        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH006', N'Trần Thu Hương', N'134 Quang Trung', N'0965316328', N'MN        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH007', N'Hoàng Thị Hồ', N'68 Lê Lai', N'0358794412', N'MN        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH008', N'Trần Đức', N'95 Lê Văn Thọ', N'0975644569', N'MN        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH009', N'Hoàng Thị Thùy', N'67 Láng Hạ', N'0123765887', N'MB        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH010', N'Văn Mai Hương', N'71 Cổ Nhuế', N'0989172671', N'MB        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH011', N'Lê Tùng Dương', N'135 Xã Đàn', N'0923791029', N'MT        ')
INSERT [dbo].[KhachHang] ([MaKH], [Name], [Address], [Number], [MaKhuVuc]) VALUES (N'KH012', N'Thanh Ð?m', N'353biss', N'1234', N'MN        ')
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [LienHe], [DienThoai], [GhiChu], [ConQuanLy]) VALUES (N'KHO1      ', N'Kho Miền Đông', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [LienHe], [DienThoai], [GhiChu], [ConQuanLy]) VALUES (N'KHO2      ', N'Kho Miền Tây', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [LienHe], [DienThoai], [GhiChu], [ConQuanLy]) VALUES (N'KHO3      ', N'Test', N'', N'               ', N'', 1)
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'          ', N'')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'1         ', N'd')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'MB        ', N'Miền Bắc')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'MN        ', N'Miền Nam')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'MT        ', N'Miền Trung')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'v         ', N'a')
INSERT [dbo].[LoaiSanPham] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'DHTM', N'Đồng Hồ Thông Minh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'DTDD', N'Điện Thoại Di Động')
INSERT [dbo].[LoaiSanPham] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'TVTM', N'Ti Vi Thông Minh')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [MoTa], [MaKhuVuc]) VALUES (N'NCC001', N'Apple', N'Apple', N'MB        ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [MoTa], [MaKhuVuc]) VALUES (N'NCC002', N'Oppo', N'Oppo', N'MT        ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [MoTa], [MaKhuVuc]) VALUES (N'NCC003', N'SamSung', N'SamSung', N'MT        ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [MoTa], [MaKhuVuc]) VALUES (N'NCC004', N'Huawei', N'Huawei', N'MN        ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [MoTa], [MaKhuVuc]) VALUES (N'NCC005', N'Xiaomi', N'Xiaomi', N'MN        ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [MoTa], [MaKhuVuc]) VALUES (N'NCC006', N'C?c G?ch', N'ném chó', N'MB        ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV001', N'Hồ Tấn Phát', N'87 Hoàng Hoa Thám', N'0968741253')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV002', N'Admin', N'1 Hồ Văn Huê', N'0123456789')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV003', N'Trần Hoàng Duy', N'123 Năm Châu', N'0365214785')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV004', N'Hồ Văn Tấn', N' 298 Nguyễn Văn Cừ', N'0965478413')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV005', N'Nguyễn Ngọc Đức Hải', N'236 Lê Đức Thọ', N'0326879541')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV006', N'Nguyễn Thanh Đạm', N'25 Lê Lợi', N'0326587492')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [DienThoai]) VALUES (N'NV007', N'NguyenThanh', N'353biss', N'12345')
SET IDENTITY_INSERT [dbo].[RoleForm] ON 

INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (1, 1, 1, 1, 0, 0, 0, 1, 0, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (2, 1, 2, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (3, 1, 3, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (4, 1, 4, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (5, 1, 5, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (6, 1, 6, 0, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (7, 1, 7, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (8, 1, 8, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (9, 1, 9, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (10, 1, 10, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (11, 1, 11, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (12, 2, 1, 0, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (13, 2, 2, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (14, 2, 3, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (15, 2, 4, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (16, 2, 5, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (17, 2, 6, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (18, 2, 7, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (19, 2, 8, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (20, 2, 9, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (21, 2, 10, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (22, 2, 11, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (23, 3, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (24, 3, 2, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (25, 3, 3, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (26, 3, 4, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (27, 3, 5, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (28, 3, 6, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (29, 3, 7, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (30, 3, 8, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (31, 3, 9, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (32, 3, 10, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[RoleForm] ([Id], [RoleId], [FormId], [Access], [Insert], [Delete], [Update], [Print], [Import], [Export]) VALUES (33, 3, 11, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[RoleForm] OFF
SET IDENTITY_INSERT [dbo].[RoleUser] ON 

INSERT [dbo].[RoleUser] ([Id], [Name], [Descript]) VALUES (1, N'Người Dùng', N'Cấp cho người dùng bình thường')
INSERT [dbo].[RoleUser] ([Id], [Name], [Descript]) VALUES (2, N'Quản Lý', N'Cấp cho bộ phận quản lý')
INSERT [dbo].[RoleUser] ([Id], [Name], [Descript]) VALUES (3, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[RoleUser] OFF
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP001', N'Mi Band 3', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 30, 500000, 560000, N'MB3', N'NCC005', N'DHTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP002', N'Mi Band 4', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 25, 750000, 800000, N'MB4', N'NCC005', N'DHTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP003', N'Huawei Watch GT2', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 15, 5400000, 5490000, N'HWGT2', N'NCC004', N'DHTM', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP004', N'Huawei TalkBand 2', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 16, 5200000, 5500000, N'HWTB2', N'NCC004', N'DHTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP005', N'Galaxy Watch Active 2', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 13, 7000000, 7110000, N'GWA2', N'NCC003', N'DHTM', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP006', N'Samsung Galaxy Fit', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 20, 2050000, 2450000, N'SGF', N'NCC003', N'DHTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP007', N'Samsung Galaxy Gear Fit', N'Đồng Hồ Thông Minh', NULL, N'Cái       ', 15, 3400000, 3500000, N'SGGF', N'NCC003', N'DHTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP008', N'iPhone XS Max', N'Điện Thoại Di Động', NULL, N'Cái       ', 11, 24000000, 25000000, N'XSMAX', N'NCC001', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP009', N'Vertu Signature S', N'Điện Thoại Di Động', NULL, N'Cái       ', 5, 180000000, 1950000000, N'VSS', N'NCC001', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP010', N'Redmi 3s', N'Điện Thoại Di Động', NULL, N'Cái       ', 30, 1300000, 1400000, N'RM3s', N'NCC005', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP011', N'Huawei Nova 3i', N'Điện Thoại Di Động', NULL, N'Cái       ', 20, 4700000, 4800000, N'HN3i', N'NCC004', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP012', N'iPhone 11', N'Điện Thoại Di Động', NULL, N'Cái       ', 15, 41000000, 42000000, N'IP11', N'NCC001', N'DTDD', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP013', N'iPhone 8 Plus', N'Điện Thoại Di Động', NULL, N'Cái       ', 20, 16000000, 17000000, N'IP8P', N'NCC001', N'DTDD', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP014', N'iPhone 7S Plus', N'Điện Thoại Di Động', NULL, N'Cái       ', 13, 14000000, 15000000, N'IP7SP', N'NCC001', N'DTDD', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP015', N'Samsung Galaxy Note 10', N'Điện Thoại Di Động', NULL, N'Cái       ', 20, 19000000, 20000000, N'SSGN10', N'NCC003', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP016', N'Samsung Galaxy Fold', N'Điện Thoại Di Động', NULL, N'Cái       ', 15, 44000000, 45000000, N'SSGF', N'NCC003', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP017', N'Samsung Galaxy Note 8', N'Điện Thoại Di Động', NULL, N'Cái       ', 20, 16000000, 17000000, N'SSGN8', N'NCC003', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP018', N'Oppo F1s', N'Điện Thoại Di Động', NULL, N'Cái       ', 19, 6500000, 7500000, N'OF1s', N'NCC002', N'DTDD', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP019', N'Tivi Samsung 28inch 28J4100', N'Ti Vi Thông Minh', NULL, N'Cái       ', 14, 3300000, 4300000, N'SS28J4', N'NCC003', N'TVTM', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP020', N'Tivi Samsung 32N4000 32 Inch', N'Ti Vi Thông Minh', NULL, N'Cái       ', 19, 4300000, 5300000, N'SS32N400', N'NCC003', N'TVTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP021', N'Tivi Samsung 32N4300 32 Inch', N'Ti Vi Thông Minh', NULL, N'Cái       ', 15, 5500000, 6500000, N'SS32N430', N'NCC003', N'TVTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP022', N'Tivi Xiaomi 4A 23 Inch', N'Ti Vi Thông Minh', NULL, N'Cái       ', 10, 3500000, 4500000, N'XM4A43', N'NCC005', N'TVTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP023', N'Tivi Xiaomi E32A 32 Inch', N'Ti Vi Thông Minh', NULL, N'Cái       ', 9, 5300000, 6300000, N'XME32', N'NCC005', N'TVTM', N'KHO1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP024', N'Tivi Xiaomi 4C FHD', N'Ti Vi Thông Minh', NULL, N'Cái       ', 6, 6500000, 7500000, N'XM4C', N'NCC005', N'TVTM', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP025', N'Oppo 4K GZK', N'Ti Vi Thông Minh', NULL, N'Cái       ', 10, 7560000, 8560000, N'OP4GZK', N'NCC002', N'TVTM', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP026', N'Oppo DLNA FHD', N'Ti Vi Thông Minh', NULL, N'Cái       ', 12, 6600000, 7600000, N'OPDLNA', N'NCC002', N'TVTM', N'KHO2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [HinhAnh], [DonVi], [SoLuong], [GiaMua], [GiaBan], [Code], [NhaCungCap], [MaLoai], [MaKho]) VALUES (N'SP027', N'Oppo MHL 4K', N'Ti Vi Thông Minh', NULL, N'Cái       ', 6, 8500000, 9500000, N'OPMHL', N'NCC002', N'TVTM', N'KHO1      ')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (1, N'htphat', N'123', 3, N'NV001')
INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (2, N'admin', N'123', 3, N'NV002')
INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (3, N'ntdam', N'123', 2, N'NV003')
INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (4, N'nhduy', N'123', 1, N'NV004')
INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (5, N'hvtan', N'123', 1, N'NV005')
INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (6, N'nndhai', N'123', 1, N'NV006')
INSERT [dbo].[User] ([Id], [UserName], [Password], [RoleID], [MaNV]) VALUES (7, N'abc', N'123', 1, N'NV007')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBan_DonVi] FOREIGN KEY([DonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_ChiTietHoaDonBan_DonVi]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_DonVi] FOREIGN KEY([DonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_DonVi]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_SanPham]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_ChiTietHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[ChiTietHoaDonBan] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDon_ChiTietHoaDon]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_ChiTietHoaDonNhap] FOREIGN KEY([MaHD])
REFERENCES [dbo].[ChiTietHoaDonNhap] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_ChiTietHoaDonNhap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_KhuVuc]
GO
ALTER TABLE [dbo].[NhaCungCap]  WITH CHECK ADD  CONSTRAINT [FK_NhaCungCap_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[NhaCungCap] CHECK CONSTRAINT [FK_NhaCungCap_KhuVuc]
GO
ALTER TABLE [dbo].[RoleForm]  WITH CHECK ADD  CONSTRAINT [FK_RoleForm_Form] FOREIGN KEY([FormId])
REFERENCES [dbo].[Form] ([Id])
GO
ALTER TABLE [dbo].[RoleForm] CHECK CONSTRAINT [FK_RoleForm_Form]
GO
ALTER TABLE [dbo].[RoleForm]  WITH CHECK ADD  CONSTRAINT [FK_RoleForm_RoleUser] FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleUser] ([Id])
GO
ALTER TABLE [dbo].[RoleForm] CHECK CONSTRAINT [FK_RoleForm_RoleUser]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DonVi] FOREIGN KEY([DonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DonVi]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_KhoHang] FOREIGN KEY([MaKho])
REFERENCES [dbo].[KhoHang] ([MaKho])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_KhoHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_NhanVien]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_RoleUser] FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleUser] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_RoleUser]
GO
USE [master]
GO
ALTER DATABASE [QUANLIBANHANG] SET  READ_WRITE 
GO
