create database SellBicycleWebsite
go
USE [SellBicycleWebsite]
GO
/****** Object:  Table [dbo].[Anh_Blogs]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh_Blogs](
	[ma_baiviet] [int] NOT NULL,
	[sttanh] [int] NOT NULL,
	[link] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_baiviet] ASC,
	[sttanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anh_SP]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh_SP](
	[ma_Anh] [int] NOT NULL,
	[ma_SP] [int] NOT NULL,
	[link] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_Anh] ASC,
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ma_baiviet] [int] NOT NULL,
	[noidung] [varchar](2000) NULL,
	[thoigiandang] [datetime] NULL,
	[tacgia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_baiviet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DonHang]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DonHang](
	[ma_DH] [int] NOT NULL,
	[ma_SP] [int] NOT NULL,
	[dongiaban] [int] NULL,
	[soluongban] [int] NULL,
	[thanhtien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_DH] ASC,
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HoaDon_NhapHang]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDon_NhapHang](
	[ma_HDDonNhap] [int] NOT NULL,
	[ma_SP] [int] NOT NULL,
	[soluongnhap] [int] NULL,
	[dongianhap] [int] NULL,
	[thanhtien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_HDDonNhap] ASC,
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HoaDonBan]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDonBan](
	[maHD_ban] [int] NOT NULL,
	[ma_SP] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
	[thanhtien] [int] NULL,
	[ghichu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD_ban] ASC,
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ma_DH] [int] NOT NULL,
	[ma_NV] [int] NULL,
	[ma_KH] [int] NULL,
	[thoigian] [datetime] NULL,
	[tongtien] [int] NULL,
	[diachi_giaohang] [nvarchar](50) NOT NULL,
	[sdt_nguoinhan] [int] NOT NULL,
	[hoten_nguoinhan] [nvarchar](30) NOT NULL,
	[trangthai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_DH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[ma_DV] [int] NOT NULL,
	[ten_DV] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon_NhapHang]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon_NhapHang](
	[ma_HDDonNhap] [int] NOT NULL,
	[ma_NCC] [int] NULL,
	[ma_NV] [int] NULL,
	[thoigian] [datetime] NULL,
	[tongtien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_HDDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[maHD_ban] [int] NOT NULL,
	[ngaylap_hoadon] [datetime] NULL,
	[ma_DH] [int] NULL,
	[ma_NV] [int] NULL,
	[tongtien] [int] NULL,
	[khachdua] [int] NULL,
	[tienthua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma_KH] [int] NOT NULL,
	[ten_KH] [nvarchar](30) NULL,
	[CMND_KH] [int] NULL,
	[GioiTinh_KH] [nvarchar](3) NULL,
	[NgaySinh_KH] [date] NULL,
	[DiaChi_KH] [nvarchar](50) NULL,
	[SDT_KH] [int] NULL,
	[username] [varchar](30) NULL,
	[pw] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_SP]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_SP](
	[maLoai] [int] NOT NULL,
	[tenLoai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[ma_NCC] [int] NOT NULL,
	[ten_NCC] [nvarchar](30) NULL,
	[diachi_NCC] [nvarchar](30) NULL,
	[std_NCC] [int] NULL,
	[email_NCC] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ma_NV] [int] NOT NULL,
	[ten_NV] [nvarchar](30) NULL,
	[ngaysinh_NV] [date] NULL,
	[ma_DV] [int] NULL,
	[email_NV] [varchar](30) NULL,
	[sdt_NV] [int] NULL,
	[diachi_NV] [nvarchar](50) NULL,
	[chuvu] [nvarchar](40) NULL,
	[batdau] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien_DN]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien_DN](
	[ma_NV] [int] NOT NULL,
	[tendn_NV] [varchar](20) NULL,
	[mk_NV] [varchar](20) NULL,
	[maquyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_NV] ASC,
	[maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenNV]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenNV](
	[maquyen] [int] NOT NULL,
	[tenquyen] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 8/10/2022 2:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ma_SP] [int] NOT NULL,
	[ten_SP] [nvarchar](20) NULL,
	[ma_NCC] [int] NULL,
	[soluong] [int] NULL,
	[dongiaban] [int] NULL,
	[dongianhap] [int] NULL,
	[thongso] [nvarchar](800) NULL,
	[maLoai] [int] NULL,
	[mota] [nvarchar](100) NULL,
	[link_anhdaidien] [varchar](50) NULL,
	[khuyenmai] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (5, 28, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (6, 27, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (7, 21, 2000000, 2, 4000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (7, 25, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (8, 20, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (8, 52, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (9, 2, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (9, 55, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (10, 27, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (11, 31, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (11, 51, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (12, 52, 2000000, 2, 4000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (13, 51, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (14, 2, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (14, 20, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (15, 1, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (15, 28, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (15, 59, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (16, 25, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (16, 28, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (17, 20, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (18, 27, 2000000, 3, 6000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (19, 3, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (19, 10, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (20, 7, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (21, 2, 2000000, 2, 4000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (21, 51, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (22, 32, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (23, 20, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (24, 20, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (25, 16, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (26, 2, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (26, 3, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (26, 51, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (27, 3, 2000000, 1, 2000000)
INSERT [dbo].[CT_DonHang] ([ma_DH], [ma_SP], [dongiaban], [soluongban], [thanhtien]) VALUES (27, 51, 2000000, 1, 2000000)
GO
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (5, NULL, 2, CAST(N'2022-05-10T15:50:57.650' AS DateTime), 2000000, N'Tứ Xã- Lâm Thao-Phú Thọ', 0, N'thành hai', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (6, NULL, 2, CAST(N'2022-05-10T15:54:50.177' AS DateTime), 2000000, N'Tứ Xã- Lâm Thao-Phú Thọ', 0, N'thành hai', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (7, 1, 1, CAST(N'2022-05-10T15:59:24.700' AS DateTime), 6000000, N'Cầu Giấy-Hà Nội', 0, N'Nguyễn Ngọc Nhi', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (8, NULL, 0, CAST(N'2022-05-10T16:01:41.193' AS DateTime), 4000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (9, 1, 0, CAST(N'2022-05-12T07:39:20.447' AS DateTime), 4000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (10, 5, 0, CAST(N'2022-05-12T07:39:50.793' AS DateTime), 2000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (11, NULL, 0, CAST(N'2022-05-12T07:46:34.947' AS DateTime), 4000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (12, NULL, 0, CAST(N'2022-05-12T07:50:45.113' AS DateTime), 4000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (13, NULL, 0, CAST(N'2022-05-12T07:53:30.513' AS DateTime), 2000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (14, NULL, 10, CAST(N'2022-05-13T08:05:16.823' AS DateTime), 4000000, N'Hà Nội', 0, N'Lưu Duy Hoàng', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (15, 5, 5, CAST(N'2022-05-13T08:06:12.690' AS DateTime), 6000000, N'Hà Nội', 0, N'Phạm Đăng Quang', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (16, 5, 5, CAST(N'2022-05-13T08:06:44.440' AS DateTime), 4000000, N'Hà Nội', 0, N'Phạm Đăng Quang', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (17, NULL, 0, CAST(N'2022-05-13T08:26:47.347' AS DateTime), 2000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (18, NULL, 0, CAST(N'2022-07-13T16:02:38.970' AS DateTime), 6000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (19, NULL, 0, CAST(N'2022-07-16T20:18:43.440' AS DateTime), 4000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (20, NULL, 0, CAST(N'2022-08-01T10:59:55.920' AS DateTime), 2000000, N'Bắc Từ Liêm-Hà Nội', 0, N'Nguyễn Tùng Lâm', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (21, NULL, 6, CAST(N'2022-08-09T07:34:21.607' AS DateTime), 6000000, N'Hà Nội', 0, N'Nguyễn Đức Toàn', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (22, NULL, 6, CAST(N'2022-08-09T07:35:04.243' AS DateTime), 2000000, N'Hà Nội', 0, N'Nguyễn Đức Toàn', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (23, NULL, 6, CAST(N'2022-08-09T13:34:35.583' AS DateTime), 2000000, N'Hà Nội', 0, N'Nguyễn Đức Toàn', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (24, 1, 6, CAST(N'2022-08-09T13:34:49.847' AS DateTime), 2000000, N'Hà Nội', 0, N'Nguyễn Đức Toàn', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (25, NULL, 0, CAST(N'2022-08-10T10:23:42.947' AS DateTime), 1800000, N'Hà Nội', 123456798, N'Nguyễn Ngọc Nhi', NULL)
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (26, 1, 9, CAST(N'2022-08-10T10:39:22.723' AS DateTime), 5100000, N'Hà Nội', 1234567, N'Nguyễn Tùng Lâm', N'Đặt hàng thành công!')
INSERT [dbo].[DonHang] ([ma_DH], [ma_NV], [ma_KH], [thoigian], [tongtien], [diachi_giaohang], [sdt_nguoinhan], [hoten_nguoinhan], [trangthai]) VALUES (27, NULL, 9, CAST(N'2022-08-10T10:41:56.577' AS DateTime), 3300000, N'Hà Nội', 1234567, N'Bùi Nguyễn Dũng', N'Chờ xác nhận')
GO
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (1, N'Phòng nhân sự')
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (2, N'Phòng tài chính')
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (3, N'Phòng kĩ thuật')
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (4, N'Phòng thu ngân')
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (5, N'Ban quản lý kho')
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (6, N'Tổ chăm sóc khách hàng')
INSERT [dbo].[DonVi] ([ma_DV], [ten_DV]) VALUES (8, N'Ban giám đốc')
GO
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (3, CAST(N'2022-05-12T21:44:12.017' AS DateTime), 7, 1, 6000000, NULL, NULL)
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (4, CAST(N'2022-05-12T21:44:16.100' AS DateTime), 9, 1, 4000000, NULL, NULL)
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (5, CAST(N'2022-05-13T08:15:18.820' AS DateTime), 10, 5, 2000000, NULL, NULL)
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (6, CAST(N'2022-05-13T08:15:21.393' AS DateTime), 16, 5, 4000000, NULL, NULL)
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (7, CAST(N'2022-05-13T08:15:29.043' AS DateTime), 15, 5, 6000000, NULL, NULL)
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (8, CAST(N'2022-08-09T20:04:17.937' AS DateTime), 24, 1, 2000000, NULL, NULL)
INSERT [dbo].[HoaDonBan] ([maHD_ban], [ngaylap_hoadon], [ma_DH], [ma_NV], [tongtien], [khachdua], [tienthua]) VALUES (9, CAST(N'2022-08-10T10:40:15.870' AS DateTime), 26, 1, 5100000, NULL, NULL)
GO
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (0, N'Nguyễn Tùng Lâm', 12345678, N'Nam', CAST(N'2000-04-11' AS Date), N'Bắc Từ Liêm-Hà Nội', 39215648, N'tunglam', N'2792000')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (1, N'Nguyễn Ngọc Nhi', 1234567891, N'Nữ', CAST(N'2000-09-01' AS Date), N'Cầu Giấy-Hà Nội', 121246324, N'ngocnhi', N'123456')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (2, N'Chử Thành Hai', 1234, N'Nam', CAST(N'2000-02-11' AS Date), N'Tứ Xã- Lâm Thao-Phú Thọ', 123, N'thanhhai', N'123')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (3, N'Đỗ Ngọc Long', 1234, N'Nam', CAST(N'2000-02-11' AS Date), N'Bắc Từ Liêm-Hà Nội', 1234, N'ngoclong', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (4, N'Nguyễn Tuấn Anh', 1234, N'Nam', CAST(N'2000-03-05' AS Date), N'Hà Nội', 1234, N'tuananh', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (5, N'Phạm Đăng Quang', 1234, N'Nam', CAST(N'2000-01-01' AS Date), N'Hà Nội', 1234, N'1234', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (6, N'Nguyễn Đức Toàn', 1234, N'Nam', CAST(N'1998-03-03' AS Date), N'Hà Nội', 1234, N'ductoan', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (7, N'Đỗ Thành Long', 1234, N'Nam', CAST(N'1999-05-04' AS Date), N'Hà Nội', 1234, N'thanhlong', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (8, N'Trần Doãn Tuấn', 5664, N'Nam', CAST(N'1998-12-06' AS Date), N'Hà Nội', 1234, N'doantuan', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (9, N'Bùi Nguyễn Dũng', 12567, N'Nam', CAST(N'1999-05-12' AS Date), N'Hà Nội', 1264548, N'nguyendung', N'1234')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_KH], [CMND_KH], [GioiTinh_KH], [NgaySinh_KH], [DiaChi_KH], [SDT_KH], [username], [pw]) VALUES (10, N'Lưu Duy Hoàng', 1234, N'Nam', CAST(N'1998-09-21' AS Date), N'Hà Nội', 2465749, N'duyhoang', N'1234')
GO
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (1, N'Xe đạp thể thao')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (2, N'Xe đạp thời trang')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (3, N'Xe đạp trẻ em')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (4, N'Xe đạp điện')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (5, N'Xe máy điện')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (6, N'Ắc quy')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (7, N'Sạc pin')
INSERT [dbo].[Loai_SP] ([maLoai], [tenLoai]) VALUES (8, N'Tay ga')
GO
INSERT [dbo].[NCC] ([ma_NCC], [ten_NCC], [diachi_NCC], [std_NCC], [email_NCC]) VALUES (1, N'LIFAN', N'Cầu Giấy, Hà Nội', 1900383838, NULL)
INSERT [dbo].[NCC] ([ma_NCC], [ten_NCC], [diachi_NCC], [std_NCC], [email_NCC]) VALUES (2, N'Thống Nhất', N'Hoàn Kiếm, Hà Nội', 38576699, NULL)
INSERT [dbo].[NCC] ([ma_NCC], [ten_NCC], [diachi_NCC], [std_NCC], [email_NCC]) VALUES (3, N'Phú Hy', N'Tân Phú, TP HCM', 190064786, NULL)
INSERT [dbo].[NCC] ([ma_NCC], [ten_NCC], [diachi_NCC], [std_NCC], [email_NCC]) VALUES (4, N'Việt Mỹ', N'Hoàng Mai, Hà Nội', 189368682, NULL)
INSERT [dbo].[NCC] ([ma_NCC], [ten_NCC], [diachi_NCC], [std_NCC], [email_NCC]) VALUES (5, N'BaseMobility', N'Bình Tân, TP HCM', 123456678, NULL)
INSERT [dbo].[NCC] ([ma_NCC], [ten_NCC], [diachi_NCC], [std_NCC], [email_NCC]) VALUES (6, N'Starider', N'Quận 8, TP HCM', 231678346, NULL)
GO
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (1, N'Nguyễn Tùng Lâm', CAST(N'1999-02-12' AS Date), 1, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (2, N'Đặng Nhân Tuyên', CAST(N'1999-02-16' AS Date), 2, N'2@gmail.com', NULL, NULL, N'Quản lý', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (3, N'Phạm Kim Tú', CAST(N'1999-02-14' AS Date), 2, N'3@gmail.com', NULL, NULL, N'Trưởng phòng', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (4, N'Ngô Thanh Nga', CAST(N'1999-02-01' AS Date), 2, N'4@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (5, N'Hoàng Đình Hưng', CAST(N'1999-01-05' AS Date), 1, N'5@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (6, N'Dương Trọng Thủy', CAST(N'1999-02-05' AS Date), 1, N'6@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (7, N'Huỳnh Hoàng Linh', CAST(N'1999-03-05' AS Date), 1, N'7@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (8, N'Hồ Quốc Tuyên', CAST(N'1999-04-05' AS Date), 3, N'8@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (9, N'Huỳnh Nhật Minh', CAST(N'1999-05-05' AS Date), 3, N'9@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (10, N'Phạm Đức Tá', CAST(N'1999-06-05' AS Date), 4, N'10@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (11, N'Phan Nguyên Minh', CAST(N'1999-07-05' AS Date), 5, N'11@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (12, N'Lê Nguyên Tùng', CAST(N'1999-07-05' AS Date), 6, N'12@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (13, N'Hoàng Đinh Phương', CAST(N'1999-12-05' AS Date), 6, N'13@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (14, N'Vũn Đình Nga', CAST(N'1999-11-05' AS Date), 8, N'14@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (15, N'Ngô Ngọc Uyên', CAST(N'1999-02-06' AS Date), 5, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (16, N'Vũ Thanh Kiên', CAST(N'1999-02-11' AS Date), 6, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (17, N'Võ Nghĩa Anh', CAST(N'1999-02-14' AS Date), 6, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (18, N'Lương Kim Tuyên', CAST(N'1999-04-05' AS Date), 8, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (19, N'An Thanh Đức', CAST(N'1999-09-15' AS Date), 8, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (20, N'Hoàng Thùy Linh', CAST(N'1999-07-05' AS Date), 4, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (21, N'Đỗ Hoàng Tú', CAST(N'1999-06-05' AS Date), 4, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (22, N'Nguyễn Quốc Anh', CAST(N'1999-02-25' AS Date), 6, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (23, N'Huỳnh Nghĩa Dương', CAST(N'1999-02-19' AS Date), 8, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (24, N'Trương Đình Tuấn', CAST(N'1999-12-05' AS Date), 5, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (25, N'Phạm Thanh Tùng', CAST(N'1999-02-20' AS Date), 6, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (26, N'Nguyễn Việt Hoàng', CAST(N'1999-03-05' AS Date), 4, N'1@gmail.com', NULL, NULL, N'Nhân viên', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [ngaysinh_NV], [ma_DV], [email_NV], [sdt_NV], [diachi_NV], [chuvu], [batdau]) VALUES (27, N'Dương Văn Tuyên', CAST(N'1999-05-05' AS Date), 3, N'1@gmail.com', NULL, NULL, N'Nhân viên', NULL)
GO
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (2, N'123', N'123', 1)
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (3, N'234', N'234', 1)
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (4, N'345', N'345', 1)
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (5, N'nhanvien5', N'1234', 1)
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (6, N'nhanvien6', N'1234', 1)
INSERT [dbo].[NhanVien_DN] ([ma_NV], [tendn_NV], [mk_NV], [maquyen]) VALUES (7, N'nhanvien7', N'1234', 1)
GO
INSERT [dbo].[QuyenNV] ([maquyen], [tenquyen]) VALUES (1, N'Admin')
INSERT [dbo].[QuyenNV] ([maquyen], [tenquyen]) VALUES (2, N'Kế toán')
INSERT [dbo].[QuyenNV] ([maquyen], [tenquyen]) VALUES (3, N'Chăm sóc khách hàng')
INSERT [dbo].[QuyenNV] ([maquyen], [tenquyen]) VALUES (4, N'Quản lý nhập')
INSERT [dbo].[QuyenNV] ([maquyen], [tenquyen]) VALUES (5, N'Quản lý sản phẩm')
GO
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (1, N'GIANT SPEEDER', 1, 20, 2000000, 1500001, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'1.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (2, N'GIANT PROPEL', NULL, 10, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'Hot', N'2.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (3, N'Californial City 200', NULL, 15, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'Hot', N'3.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (4, N'Fuji 24', NULL, 30, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'Hot', N'4.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (5, N'Napa 2', NULL, 33, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'5.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (6, N'Sky', NULL, 11, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'6.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (7, N'Vinabike rock', NULL, 24, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'7.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (8, N'XDS Romance 500', NULL, 15, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'8.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (9, N'XDS Romance 500 Plus', NULL, 12, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'9.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (10, N'XDS RX280', NULL, 10, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'10.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (11, N'XDS Sundance 710', 1, 30, 2000000, 9000000, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'11.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (12, N'XDS Sundance 800', NULL, 11, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'12.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (13, N'XDS RC600', NULL, 10, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'New', N'13.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (14, N'XDS RF380', NULL, 23, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'Hot', N'14.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (15, N'XDS RX350', NULL, 22, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'Hot', N'15.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (16, N'Keep Run', NULL, 18, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 1, N'Hot', N'16.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (17, N'VICKY SKY ', NULL, NULL, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 2, N'New', N'17.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (18, N'GIANT TROOPER', NULL, NULL, 2000000, NULL, N'Khung: Hợp kim nhôm 6061, size 26”*17″ (cho người 1m6-1m78)

Ghi đông/ pô tăng/ Cọc yên: Hợp kim nhôm

Giảm xóc: Phuộc nhún cơ học hành trình 100mm, có khóa cứng

Tay đề SHIMANO ST-EF500 21 speeds

Đề sau SHIMANO TZ500

Đề trước SHIMANO TZ500

Đùi đĩa: 24/34 / 42T * 170L

Líp: thép, định vị 7 cấp, 14-28T

Trục giữa: bạc đạn

Phanh: Phanh đĩa thể thao hợp kim

Vành: Hợp kim nhôm 2 lớp

Lốp: 26×1.95″ 27TPI

Màu: Đen đỏ/ Đen lam/ Đen lục/Ghi cam…', 2, N'New', N'18.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (19, N'133M SONCO', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 4, N'New', N'19.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (20, N'DK BIKE', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 4, N'Hot', N'20.jpg', 10)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (21, N'DK SPARTA', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 4, N'New', N'21.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (22, N'DK AIMA S3', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 4, N'New', N'22.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (23, N'DK EQ ', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 4, N'Hot', N'23.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (24, N'NINJA SASUKE', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 4, N'Hot', N'24.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (25, N'SONCO 122M PLUS', NULL, NULL, 2000000, NULL, N'NUChiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
LL', 4, N'New', N'25.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (26, N'DIPAO PANSY S8', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 5, N'Hot', N'26.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (27, N'DIBAO BUTTERFLY', NULL, NULL, 2000000, NULL, N'Chiều dài x Chiều rộng x Chiều cao:1640mm x 640mm x 1200mm
Đường kính bánh xe:Lốp: 300 - 10 - Vành: 254mm
Chiều cao yên xe:750mm
Hãng sản xuất:VN lắp ráp
Vận tốc tối đa:lên đến 35-40km/h
Loại acquy:48V - 12Ah
Chở vật nặng:150kg
Quãng đường:45 km / 1 lần sạc
Trọng lượng xe:50 kg
Mầu sắc:Đỏ, Đen, Xanh dương, Trắng
Động cơ xe:Điện 3 pha
Sạc điện:Sạc đầy tự ngắt
', 5, N'Hot', N'27.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (28, N'DIBAO CREER E 1', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'28.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (29, N'DIBAO GOGO CROSS', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'29.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (30, N'BIBAO GOGO SS 2021', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'30.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (31, N'DIBAO GOGO SS TRAN', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'31.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (32, N'DIBAO JEEK ONE', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'32.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (33, N'DIBAO M ONE 4', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'33.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (34, N'DIBAO PANSY', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'34.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (35, N'DIBAO PANSY SQ 202', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'New', N'35.png', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (36, N'DIBAO R1 ', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'New', N'36.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (37, N'DIBAO TESLA S9', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'New', N'37.jpg', 20)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (38, N'DIBAO TESLA SD', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'New', N'38.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (39, N'DIBAO XMEN LEO', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'New', N'39.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (40, N'DK AIMA MINE PLUS', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'40.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (41, N'DK GOGO NEW 2021', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'41.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (42, N'DK ROMA SE REU', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'42.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (43, N'DK XMEN ONE', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'43.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (44, N'DK XMEN X2', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'44.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (45, N'NIO SHIMA PLUS', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'45.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (46, N'PANSY SS 2022', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'46.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (47, N'XMEN OSAKAR 7', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Hot', N'47.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (48, N'XMEN OSAKAR MINI', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'New', N'48.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (49, N'XMEN OSAKAR PRO', NULL, NULL, 2000000, NULL, N'Độ cao yên	
733mm

Khoảng cách trục bánh xe	
1300mm

Độ cao gầm xe	
155mm

Khối lượng	
75kg

Kích thước	
1800 x 710 x 1070 mm

Tải trọng	
130kg

Đồng hồ xe	LCD
Số chỗ ngồi	2
Đèn trước	LED
Đèn hậu	LED
Phanh trước	Phanh đĩa
Phanh sau	Phanh cơ
Phuộc trước	
Ống lồng, Giảm chấn thủy lực

Phuộc sau	
1 lò xo trụ, Giảm chấn dầu

Lốp trước	
90/90-12, 44J

Lốp sau	
44J, 90/90-12

Chống nước & bụi	Chuẩn IP57', 5, N'Sale', N'49.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (50, N'Ắc Quy ALASHA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Hot', N'50.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (51, N'Ắc Quy ALIBABA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'51.jpg', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (52, N'Ắc Quy ASAMA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'New', N'52.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (53, N'Ắc Quy BRIDGESTONE', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'53.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (54, N'Ắc Quy HONDA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'54.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (55, N'Ắc Quy M133', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Hot', N'55.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (56, N'Ắc Quy NINJA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Hot', N'56.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (57, N'Ắc Quy OSAKA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Hot', N'57.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (58, N'Ắc Quy Đầu Trâu', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Hot', N'58.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (59, N'Ắc Quy Gà Trống', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'59.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (60, N'Ắc Quy YAMAHA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'60.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (61, N'Ắc Quy ALASHA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'61.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (62, N'Ắc Quy M133S', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'62.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (63, N'Ắc Quy VESPA', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'63.png', 25)
INSERT [dbo].[SanPham] ([ma_SP], [ten_SP], [ma_NCC], [soluong], [dongiaban], [dongianhap], [thongso], [maLoai], [mota], [link_anhdaidien], [khuyenmai]) VALUES (64, N'Ắc Quy ZOOMER', NULL, NULL, 2000000, NULL, N'Loại Ắc Quy

Ắc Quy Khô

Điện áp

12 V

Dung Lượng

50 Ah

Kích thước

132 x 127 x 220 (mm)

Xuất xứ

Hàn Quốc

Bảo hành

6 Tháng', 6, N'Sale', N'64.png', 25)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_username]    Script Date: 8/10/2022 2:34:25 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [unique_username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_tendn]    Script Date: 8/10/2022 2:34:25 PM ******/
ALTER TABLE [dbo].[NhanVien_DN] ADD  CONSTRAINT [unique_tendn] UNIQUE NONCLUSTERED 
(
	[tendn_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Anh_Blogs]  WITH CHECK ADD FOREIGN KEY([ma_baiviet])
REFERENCES [dbo].[Blogs] ([ma_baiviet])
GO
ALTER TABLE [dbo].[Anh_SP]  WITH CHECK ADD FOREIGN KEY([ma_SP])
REFERENCES [dbo].[SanPham] ([ma_SP])
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD FOREIGN KEY([tacgia])
REFERENCES [dbo].[NhanVien] ([ma_NV])
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK__CT_DonHan__ma_DH__571DF1D5] FOREIGN KEY([ma_DH])
REFERENCES [dbo].[DonHang] ([ma_DH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK__CT_DonHan__ma_DH__571DF1D5]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD FOREIGN KEY([ma_SP])
REFERENCES [dbo].[SanPham] ([ma_SP])
GO
ALTER TABLE [dbo].[CT_HoaDon_NhapHang]  WITH CHECK ADD FOREIGN KEY([ma_HDDonNhap])
REFERENCES [dbo].[HoaDon_NhapHang] ([ma_HDDonNhap])
GO
ALTER TABLE [dbo].[CT_HoaDon_NhapHang]  WITH CHECK ADD FOREIGN KEY([ma_SP])
REFERENCES [dbo].[SanPham] ([ma_SP])
GO
ALTER TABLE [dbo].[CT_HoaDonBan]  WITH CHECK ADD FOREIGN KEY([ma_SP])
REFERENCES [dbo].[SanPham] ([ma_SP])
GO
ALTER TABLE [dbo].[CT_HoaDonBan]  WITH CHECK ADD FOREIGN KEY([maHD_ban])
REFERENCES [dbo].[HoaDonBan] ([maHD_ban])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([ma_KH])
REFERENCES [dbo].[KhachHang] ([ma_KH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([ma_NV])
REFERENCES [dbo].[NhanVien] ([ma_NV])
GO
ALTER TABLE [dbo].[HoaDon_NhapHang]  WITH CHECK ADD FOREIGN KEY([ma_NCC])
REFERENCES [dbo].[NCC] ([ma_NCC])
GO
ALTER TABLE [dbo].[HoaDon_NhapHang]  WITH CHECK ADD FOREIGN KEY([ma_NV])
REFERENCES [dbo].[NhanVien] ([ma_NV])
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonBan__ma_DH__02FC7413] FOREIGN KEY([ma_DH])
REFERENCES [dbo].[DonHang] ([ma_DH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK__HoaDonBan__ma_DH__02FC7413]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD FOREIGN KEY([ma_NV])
REFERENCES [dbo].[NhanVien] ([ma_NV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([ma_DV])
REFERENCES [dbo].[DonVi] ([ma_DV])
GO
ALTER TABLE [dbo].[NhanVien_DN]  WITH CHECK ADD FOREIGN KEY([ma_NV])
REFERENCES [dbo].[NhanVien] ([ma_NV])
GO
ALTER TABLE [dbo].[NhanVien_DN]  WITH CHECK ADD FOREIGN KEY([maquyen])
REFERENCES [dbo].[QuyenNV] ([maquyen])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([ma_NCC])
REFERENCES [dbo].[NCC] ([ma_NCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([maLoai])
REFERENCES [dbo].[Loai_SP] ([maLoai])
GO
