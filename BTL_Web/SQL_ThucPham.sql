--create database [QLCuaHangThucPham1]

USE [QLCuaHangThucPham1]
GO
/****** Object:  Table [dbo].[AnhSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSP](
	[MaAnh] int identity NOT NULL,
	[MaSP] int NOT NULL,
	[TenAnh] [nvarchar](50) NULL,
	[URL] [nvarchar](50) NULL,
 CONSTRAINT [PK_AnhSP] PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDH]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDH](
	[MaCTDH] int identity primary key NOT NULL,
	[MaDH] int NOT NULL,
	[MaSP] int NOT NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DonHang]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] int identity NOT NULL,
	[Time_Create] [datetime] NULL,
	[Money] [money] NULL,
	[MaKH] int NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSP](
	[MaGia] int identity NOT NULL,
	[MaSP] int  NULL,
	[Gia] [money] NULL,
	[Time_Begin] [datetime] NULL,
	[Time_End] [datetime] NULL,
 CONSTRAINT [PK_GiaSP] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] int identity NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[Tuoi] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Time_Create] [datetime] NULL,
	[Time_Update] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[isDelete] [tinyint] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Admin] [tinyint] NULL,
	[DiaChi] [nvarchar](max) null
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] int identity NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[Time_Create] [datetime] NULL,
	[Time_Update] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[isDelete] [tinyint] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] int identity NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GTSP] [nvarchar](50) NULL,
	[MaLoai] int NULL,
	[SL] [int] NULL,
	[Time_Create] [datetime] NULL,
	[Time_Update] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[isDelete] [tinyint] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/10/2022 12:03:12 AM ******/

/****** Object:  Table [dbo].[TinTuc]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT]int identity NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
	[ND] [nvarchar](max) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTDH]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTDH](
	[MaTTDH]int identity primary key  NOT NULL,	
	[MaDH] int  NOT NULL,
	[Tong] [money] NULL,
	[PTTT] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (1, N'Rau Củ', CAST(N'2022-03-26T15:34:43.323' AS DateTime), CAST(N'2022-03-26T15:34:43.323' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (2, N'Trái Cây', CAST(N'2022-03-26T15:35:00.800' AS DateTime), CAST(N'2022-03-26T15:35:00.800' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (3, N'Đồ Uống', CAST(N'2022-03-26T15:35:35.597' AS DateTime), CAST(N'2022-03-26T15:35:35.597' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (4, N'Đồ Khô', CAST(N'2022-03-26T15:36:02.323' AS DateTime), CAST(N'2022-03-26T15:36:02.323' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (1, N'Cà Chua', NULL, 2, 1000, CAST(N'2022-03-26T15:37:20.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (2, N'Nho Xanh', NULL, 2, 200, CAST(N'2022-03-27T01:53:11.037' AS DateTime), CAST(N'2022-03-27T01:53:11.037' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (3, N'Ớt', NULL, 1, 200, CAST(N'2022-03-27T01:53:40.697' AS DateTime), CAST(N'2022-03-27T01:53:40.697' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (4, N'Quả óc chó', NULL, 4, 200, CAST(N'2022-03-27T01:54:16.837' AS DateTime), CAST(N'2022-03-27T01:54:16.837' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (5, N'Súp Lơ', NULL, 1, 200, CAST(N'2022-03-27T01:55:02.750' AS DateTime), CAST(N'2022-03-27T01:55:02.750' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (6, N'Táo Xanh', NULL, 2, 200, CAST(N'2022-03-27T01:55:44.530' AS DateTime), CAST(N'2022-03-27T01:55:44.530' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (7, N'Thơm(Dứa)', NULL, 2, 200, CAST(N'2022-03-27T01:56:27.247' AS DateTime), CAST(N'2022-03-27T01:56:27.247' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (8, N'Cam', NULL, 2, 200, CAST(N'2022-03-26T15:37:52.000' AS DateTime), CAST(N'2022-03-27T01:52:40.990' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (9, N'Chanh', NULL, 2, 200, CAST(N'2022-03-27T01:38:55.453' AS DateTime), CAST(N'2022-03-27T01:38:55.453' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (10, N'Chanh Dây', NULL, 2, 200, CAST(N'2022-03-27T01:48:34.150' AS DateTime), CAST(N'2022-03-27T01:48:34.150' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (11, N'Chuối', NULL, 2, 200, CAST(N'2022-03-27T01:49:09.413' AS DateTime), CAST(N'2022-03-27T01:49:09.413' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (12, N'Đào', NULL, 2, 200, CAST(N'2022-03-27T01:50:17.400' AS DateTime), CAST(N'2022-03-27T01:50:17.400' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (13, N'Dưa Leo', NULL, 2, 200, CAST(N'2022-03-27T01:50:59.357' AS DateTime), CAST(N'2022-03-27T01:50:59.357' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (14, N'Dừa Sáp', NULL, 2, 200, CAST(N'2022-03-27T01:51:34.000' AS DateTime), CAST(N'2022-03-27T01:52:40.990' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (15, N'Lựu', NULL, 1, 200, CAST(N'2022-03-27T01:52:40.990' AS DateTime), CAST(N'2022-03-27T01:52:40.990' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (16, N'Táo', NULL, NULL, 200, CAST(N'2022-04-12T13:19:40.000' AS DateTime), CAST(N'2022-04-12T13:47:33.187' AS DateTime), NULL, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (17, N'Táo', NULL, 2, 200, CAST(N'2022-04-12T13:20:30.000' AS DateTime), CAST(N'2022-04-12T13:34:52.047' AS DateTime), NULL, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (18, N'Bia 333', NULL, 3, 200, CAST(N'2022-04-12T15:04:49.757' AS DateTime), CAST(N'2022-04-12T15:04:49.757' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (19, N'Bia Heineken', NULL, 3, 233, CAST(N'2022-04-12T15:11:17.633' AS DateTime), CAST(N'2022-04-12T15:11:17.633' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (20, N'Bia Sài Gòn', NULL, 3, 30000, CAST(N'2022-04-12T15:12:07.000' AS DateTime), CAST(N'2022-04-12T15:12:38.290' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (21, N'Nước ngọt Tiger', NULL, 3, 2000, CAST(N'2022-04-12T15:12:33.000' AS DateTime), CAST(N'2022-04-12T21:16:44.827' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (22, N'Bia Huda', NULL, 3, 2000, CAST(N'2022-04-12T15:24:45.000' AS DateTime), CAST(N'2022-04-12T15:24:55.790' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (23, N'Nước ngọt Sapporo', NULL, 3, 2222, CAST(N'2022-04-12T15:26:29.000' AS DateTime), CAST(N'2022-04-12T21:16:27.847' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (24, N'6 chai Coca Cola', NULL, 3, 1000, CAST(N'2022-04-12T15:36:08.547' AS DateTime), CAST(N'2022-04-12T15:36:08.547' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (25, N'6 chai Fanta cam', NULL, 3, 2000, CAST(N'2022-04-12T15:37:01.997' AS DateTime), CAST(N'2022-04-12T15:37:01.997' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (26, N' 6 chai Sprite', NULL, 3, 2000, CAST(N'2022-04-12T15:37:29.000' AS DateTime), CAST(N'2022-04-12T15:45:39.557' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (27, N'6 lon Monster Energy', NULL, NULL, 2000, CAST(N'2022-04-12T15:47:21.000' AS DateTime), CAST(N'2022-04-12T15:53:35.720' AS DateTime), NULL, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (28, N'6 lon Monster Energy', NULL, 3, 2000, CAST(N'2022-04-12T15:49:32.633' AS DateTime), CAST(N'2022-04-12T15:49:32.633' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (29, N'6 lon Sting hương dâu', NULL, 3, 2000, CAST(N'2022-04-12T15:50:07.000' AS DateTime), CAST(N'2022-04-12T16:02:11.510' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (30, N'6 lon  Sting Gold ', NULL, 3, 5000, CAST(N'2022-04-12T15:51:46.987' AS DateTime), CAST(N'2022-04-12T15:51:46.987' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (31, N'Rau Cải Ngọt', NULL, 1, 2000, CAST(N'2022-04-12T16:07:28.997' AS DateTime), CAST(N'2022-04-12T16:07:28.997' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (32, N'Rau Đay  (gói 500g)', NULL, 1, 5000, CAST(N'2022-04-12T16:08:09.910' AS DateTime), CAST(N'2022-04-12T16:08:09.910' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (33, N'Rau dền', NULL, 1, 5000, CAST(N'2022-04-12T16:08:32.887' AS DateTime), CAST(N'2022-04-12T16:08:32.887' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (34, N'Rau Lang', NULL, 1, NULL, CAST(N'2022-04-12T16:08:53.850' AS DateTime), CAST(N'2022-04-12T16:08:53.850' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (35, N'Cải Bó Xôi', NULL, 1, 2000, CAST(N'2022-04-12T16:20:20.687' AS DateTime), CAST(N'2022-04-12T16:20:20.687' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (36, N'Nước cốt dừa Yolo', NULL, 4, 100, CAST(N'2022-04-12T16:28:12.510' AS DateTime), CAST(N'2022-04-12T16:28:12.510' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (37, N'Nước cốt dừa organic Vietcoco', NULL, 4, 100, CAST(N'2022-04-12T16:28:40.227' AS DateTime), CAST(N'2022-04-12T16:28:40.227' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (38, N'Nước cốt dừa tươi Cocoxim', NULL, 4, 2000, CAST(N'2022-04-12T16:29:07.913' AS DateTime), CAST(N'2022-04-12T16:29:07.913' AS DateTime), NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO

SET IDENTITY_INSERT [dbo].[AnhSP] ON 

INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (1, 1, N'Cà Chua', N'product-22-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (2, 11, N'Chuối', N'product-12-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (3, 11, N'Chuối', N'chuoi3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (4, 3, N'Ớt', N'product-21-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (5, 4, N'quả Óc Chó', N'product-6-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (6, 4, N'Quả Óc Chó', N'occho1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (7, 4, N'Quả Óc Chó', N'occho2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (8, 4, N'Quả Óc Chó', N'occho.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (9, 5, N'Súp Lơ', N'product-4-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (10, 5, N'Súp Lơ', N'suplo1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (11, 5, N'Súp Lơ', N'suplo2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (12, 1, N'Cà Chua 2', N'cachua4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (13, 5, N'Súp Lơ', N'suplo.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (14, 6, N'Táo Xanh', N'product-1-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (15, 6, N'Táo Xanh', N'taoxanh1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (16, 6, N'Táo Xanh', N'taoxanh2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (17, 6, N'Táo Xanh', N'taoxanh.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (18, 7, N'Dứa', N'product-23-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (19, 7, N'Dứa', N'dua.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (20, 7, N'Dứa', N'dua2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (21, 7, N'Dứa', N'dua1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (22, 8, N'Cam', N'product-5.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (23, 1, N'Cà Chua1', N'cachua5.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (24, 8, N'Cam', N'cam2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (25, 8, N'Cam', N'cam1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (26, 8, N'Cam', N'cam.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (27, 9, N'Chanh', N'product-7-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (28, 9, N'Chanh', N'chanh.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (29, 9, N'Chanh', N'chanh2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (30, 9, N'Chanh', N'chanh1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (31, 10, N'Chanh Dây', N'product-15-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (32, 10, N'Chanh Dây', N'chanh4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (33, 10, N'Chanh Dây', N'chanh3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (34, 1, N'Cà Chua', N'cachua6.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (35, 10, N'Chanh Dây', N'chanh5.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (36, 3, N'Ớt', N'ớt.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (37, 11, N'Chuối', N'chuoi3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (38, 11, N'Chuối', N'chuoi4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (39, 3, N'Ớt', N'ot1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (40, 12, N'Đào', N'product-24-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (41, 12, N'Đào', N'dao1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (42, 12, N'Đào', N'dao2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (43, 12, N'Đào', N'dao.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (44, 13, N'Dưa Leo', N'product-16-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (45, 2, N'Nho Xanh', N'product-9-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (46, 13, N'Dưa Leo', N'dualeo2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (47, 13, N'Dưa Leo', N'dualeo1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (48, 13, N'Dưa Leo', N'dualeo.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (49, 14, N'Dừa', N'product-11-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (50, 14, N'Dừa', N'duasap.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (51, 14, NULL, N'duasap2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (52, 14, N'Dừa', N'duasap1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (53, 15, N'Lựu', N'product-25-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (54, 15, N'Lựu', N'product-25-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (55, 15, N'Lựu', N'product-25-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (56, 2, N'Nho Xanh', N'nho1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (57, 15, N'Lựu', N'product-25-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (58, 2, N'Nho Xanh', N'nho2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (59, 2, N'Nho Xanh', N'nho4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (60, 3, N'Ớt', N'product-21-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (62, 5, N'Súp Lơ', N'product-4-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (63, 10, N'Chanhday', N'product-15-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (64, 18, N'Bia333', N'Bia3331.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (65, 18, N'Bia333', N'bia3332.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (66, 18, N'Bia333', N'bia3333.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (67, 18, N'Bia333', N'bia33334.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (68, 19, NULL, N'biaken1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (69, 19, NULL, N'biaken2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (70, 19, NULL, N'biaken3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (71, 19, NULL, N'biaken4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (72, 20, NULL, N'biasg.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (73, 20, NULL, N'biasg2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (74, 20, NULL, N'biasg3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (75, 20, NULL, N'biasg4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (76, 21, NULL, N'biatg.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (77, 21, NULL, N'biatg3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (78, 21, NULL, N'biatg2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (79, 21, NULL, N'biatd4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (80, 23, NULL, N'biasapo4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (81, 23, NULL, N'biasapo.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (82, 23, NULL, N'biasapo2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (83, 23, NULL, N'biasapo3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (84, 22, NULL, N'biahuda.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (85, 22, NULL, N'biahuda1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (86, 22, NULL, N'biahuda2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (87, 22, NULL, N'biahuda3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (88, 24, NULL, N'coca.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (89, 24, NULL, N'coca1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (90, 24, NULL, N'coca3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (91, 25, NULL, N'fanta.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (92, 25, NULL, N'fanta1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (93, 25, NULL, N'fanta2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (94, 25, NULL, N'fanta3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (95, 26, NULL, N'sp1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (96, 26, NULL, N'sp2.jpeg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (97, 26, NULL, N'sp3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (98, 24, NULL, N'sp4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (99, 26, NULL, N'sp4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (100, 28, NULL, N'ncmon.jpg')
GO
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (101, 28, NULL, N'ncmon1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (102, 28, NULL, N'ncmon2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (103, 28, NULL, N'ncmon3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (104, 29, NULL, N'sting1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (105, 29, NULL, N'sting2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (106, 29, NULL, N'sting3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (107, 29, NULL, N'string4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (108, 30, NULL, N'string6.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (109, 30, NULL, N'string7.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (110, 30, NULL, N'string8.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (111, 30, NULL, N'string9.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (112, 31, NULL, N'rau1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (113, 31, NULL, N'rau2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (114, 31, NULL, N'rau3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (115, 31, NULL, N'rau4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (116, 32, NULL, N'rau5.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (117, 32, NULL, N'rau7.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (118, 32, NULL, N'rau8.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (119, 32, NULL, N'rau6.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (120, 33, NULL, N'rau9.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (121, 33, NULL, N'rau10.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (122, 33, NULL, N'rau11.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (123, 33, NULL, N'rau12.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (124, 34, NULL, N'rau13.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (125, 34, NULL, N'rau14.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (126, 34, NULL, N'rau15.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (127, 34, NULL, N'rau16.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (128, 35, NULL, N'rau17.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (129, 35, NULL, N'rau18.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (130, 35, NULL, N'rau19.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (131, 35, N'R', N'rau20.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (132, 36, NULL, N'ncdua.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (133, 36, NULL, N'ncdua1.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (134, 36, NULL, N'ncdua2.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (135, 36, NULL, N'ncdua3.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (136, 37, NULL, N'ncdua4.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (137, 37, NULL, N'ncdua6.png')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (138, 37, NULL, N'ncdua7.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (139, 37, NULL, N'ncdua8.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (140, 38, NULL, N'ncdua9.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (141, 38, NULL, N'ncdua10.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (142, 38, NULL, N'ncdua11.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (143, 38, NULL, N'ncdua12.jpg')
SET IDENTITY_INSERT [dbo].[AnhSP] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaSP] ON 

INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (1, 1, 320000.0000, CAST(N'2022-03-29T11:05:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (2, 10, 320000.0000, CAST(N'2022-03-18T11:17:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (3, 11, 450000.0000, CAST(N'2022-03-22T11:18:00.000' AS DateTime),CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (4, 12, 120000.0000, CAST(N'2022-03-17T11:18:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (5, 13, 350000.0000, CAST(N'2022-03-15T11:19:00.000' AS DateTime),CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (6, 14, 220000.0000, CAST(N'2022-03-14T11:19:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (7, 15, 150000.0000, CAST(N'2022-03-24T11:20:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (8, 2, 250000.0000, CAST(N'2022-03-30T11:06:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (9, 3, 210000.0000, CAST(N'2022-03-23T11:06:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (10, 4, 190000.0000, CAST(N'2022-03-14T11:07:00.000' AS DateTime),CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (11, 5, 150000.0000, CAST(N'2022-03-15T11:12:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (12, 6, 330000.0000, CAST(N'2022-03-14T11:13:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (13, 7, 50000.0000, CAST(N'2022-03-14T11:14:00.000' AS DateTime),CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (14, 8, 350000.0000, CAST(N'2022-03-18T11:14:00.000' AS DateTime),CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (15, 9, 170000.0000, CAST(N'2022-03-22T11:14:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (16, 18, 265000.0000, CAST(N'2022-03-11T00:00:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (17, 19, 440000.0000, CAST(N'2022-04-11T15:14:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (18, 20, 255000.0000, CAST(N'2022-04-11T15:15:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (19, 21, 405000.0000, CAST(N'2022-04-05T15:15:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (20, 23, 360000.0000, CAST(N'2022-04-05T15:27:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (21, 22, 250000.0000, CAST(N'2022-04-11T15:28:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (22, 24, 42000.0000, CAST(N'2022-04-08T15:37:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (23, 25, 42000.0000, CAST(N'2022-04-06T15:38:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (24, 26, 42000.0000, CAST(N'2022-04-11T15:38:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (25, 30, 50000.0000, CAST(N'2022-04-06T15:52:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (26, 29, 55000.0000, CAST(N'2022-04-11T15:55:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (27, 28, 174000.0000, CAST(N'2022-04-07T15:55:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (28, 31, 13500.0000, CAST(N'2022-04-12T16:09:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (29, 32, 14000.0000, CAST(N'2022-04-12T16:09:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (30, 32, 15000.0000, CAST(N'2024-04-15T16:10:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (31, 34, 15000.0000, CAST(N'2022-04-12T16:10:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (32, 33, 16000.0000, CAST(N'2022-04-12T16:12:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (33, 35, 150000.0000, CAST(N'2022-04-12T16:20:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (34, 36, 25000.0000, CAST(N'2022-04-12T16:29:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (35, 37, 30000.0000, CAST(N'2022-04-12T16:29:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (36, 38, 25000.0000, CAST(N'2022-04-12T16:29:00.000' AS DateTime), CAST(N'9999-12-31T23:59:59.997' AS DateTime))
go

SET IDENTITY_INSERT [dbo].[GiaSP] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTT], [MoTa], [Anh], [ND]) VALUES (1, N'Nấm vân chi có tác dụng gì?', N'new1.jpg', N'Cách đây hơn 2000 năm, nấm vân chi rừng đã được biết đến và sử dụng tại Trung Quốc. Giờ đây, khi khoa học phát triển thì công dụng của nấm vân chi rừng ngày càng được khẳng định và nhiều người biết tới.
Có bao nhiêu loại nấm vân chi rừng?
Nấm vân chi là loại nấm dược liệu quan trọng, được nghiên cứu có tác dụng tốt với sức khỏe con người. Đặc biệt, nấm vân chi rừng mọc trong tự nhiên còn có nhiều dưỡng chất có lợi hơn nữa.
Nấm vân chi giúp sản sinh ra interferon a,b bởi các tế bào máu trắng bạch cầu đơn nhân. Đồng thời, kích hoạt các hoạt động của tế bào chống ung thư, tăng sự tổng hợp của các yếu tố miễn dịch, ngăn chặn sự teo tuyến của các loại thuốc hóa trị liệu. Giúp cơ thể phục hồi nhanh những thiệt hại của tế bào tạo máu.

Gia tăng đáng kể chất lượng cuộc sống của bệnh nhân
Các kết quả thử nghiệm lâm sàng cho thấy, nấm vân chi rừng với các liệu pháp hóa trị và xạ trị có thể cải thiện đáng kể triệu chứng lâm sàng của bệnh nhân, đặc biệt là bệnh nhân ung thư.

Sử dụng nấm vân chi còn tăng sức đề kháng, bảo vệ máu, mang đến sức mạnh và ổn định chức năng miễn dịch của bệnh nhân. Từ đó giúp nâng cao chất lượng cuộc sống.

Giải độc những tác hại của hóa trị và xạ trị
Cách điều trị hiện nay của các bệnh nhân ung thư là hóa trị và xạ trị. Tuy nhiên, hai cách này đều gây những ảnh hưởng không tốt cho cơ thể. Sử dụng nấm vân chi rừng giúp giảm các phản ứng bất lợi gây ra bởi hóa trị và xạ trị.

Cải thiện sự ngon miệng của bệnh nhân ung thư
Khoảng 40 – 50% bệnh nhân ung thư gặp phải tình trạng chán ăn. Nghiên cứu lâm sàng cho thấy, nấm vân chi có thể tăng cảm giác ngon miệng. Qua đó, giúp bổ sung chất dinh dưỡng và gia tăng hiệu quả điều trị cho bệnh nhân.

Nấm vân chi rừng có tác dụng với sức khỏe nói chung và bệnh nhân ung thư nói riêng. Tuy nhiên, nấm vân chi rừng hiện nay khá ít và chưa có ở Việt Nam mà chỉ có những loại nấm được nuôi trồng. Vì thế, khi mua hàng bạn nên cẩn thận để không mua phải nấm vân chi rừng giả. Điều này, không những không cải thiện tình trạng sức khỏe mà còn “rước họa vào thân”. Tốt nhất, bạn nên tìm đến những địa chỉ bán nấm vân chi đáng tin cậy.
Các loại nấm vân chi rừng:
Nấm vân chi đỏ: Loại nấm vân chi rừng này có màu sắc đặc trưng là màu đỏ, mũ nấm không quá dày, từ 0,1 – 0,3cm và không hề có cuống. Loại nấm vân chi rừng đỏ có kích thước từ 1 – 8cm.
Nấm vân chi xanh: Vốn gọi là nấm vân chi rừng xanh bởi nó có màu xanh nổi bật. Mọc phổ biến ở Úc và thường mọc trên các thân cây gỗ mục nát. Trong số các loại nấm vân chi rừng, nấm vân chi xanh thường được sử dụng để trang trí thay vì để ăn.
Nấm vân chi Coriolus versicolor: Nấm vân chi rừng Coriolus versicolor có màu trắng – nâu – cam. Chúng mọc ở nhiều nơi trên thế giới, trên các loại cây gỗ mục và thường mọc thành chùm giống như một chiếc đuôi gà tây. Từ lâu, loại nấm vân chi rừng này đã được Nhật Bản sử dụng như một liệu pháp hỗ trợ điều trị ung thư.
Những loại nấm vân chi rừng này phân bổ ở nhiều nơi trên thế giới. Tuy nhiên, số lượng khá ít. Còn ở Việt Nam hiện tại chỉ trồng được chứ không có nấm vân chi rừng.

Tác dụng của nấm vân chi rừng và lưu ý khi sử dụng
Nấm vân chi có tác dụng rất tốt đối với sức khỏe con người, cụ thể như sau:

Loại bỏ khối u ác tính mà không ảnh hưởng đến các tế bào khác
Trong các cuộc nghiên cứu độc tính chung của nấm vân chi cho thấy cấp tính, bán cấp, mạn tính, subchronic, di truyền, kiểm tra độc tính sinh sản và thai nhi đều âm tính, tức là không hề có tác dụng phụ.

Nấm vân chi có tác dụng chọn lọc gây độc tế bào trên tế bào ung thư mà không gây ảnh hưởng đến các tế bào bình thường khác.

Giúp sản sinh phản ứng sinh học sửa đổi có lợi trong điều trị ung thư')
INSERT [dbo].[TinTuc] ([MaTT], [MoTa], [Anh], [ND]) VALUES (2, N'Chả cốm ăn với gì ngon', N'new2.jpg', N'Bánh giò là một loại bánh được làm từ bột gạo tẻ, nhân bánh làm từ thịt nạc heo cùng mộc nhĩ. Loại bánh này rất phổ biến tại các tỉnh miền Bắc. Bánh thường ăn kèm với chả quế, thịt xiên, nem chua, xúc xích hay chả cốm. Vỏ bánh mềm, dẻo, có lớp nhân beo béo, nêm nếm vừa vị, ăn kèm dưa leo, chả quế và chả cốm thì không gì ngon bằng.

Tùy theo phong cách và khẩu vị mà chủ quán tự cho thêm các loại topping đi kèm. Và ở mỗi quán lại có một vị ngon riêng níu kéo bước chân thực khách. Các bạn ở Hà Nội có thể ăn bánh giò kèm chả cốm tại quán Bánh giò Thụy Khuê; Chợ hôm hay bánh giò Nguyễn Công Trứ. Tại Sài Gòn, bạn có thể tìm mua tại Bánh giò Nem chả Dì Linh, Tiệm giò chả Hồng Phúc,…

 – Bún đậu mắm tôm

Đây là một trong số ít món ăn vặt mặn được nhiều người yêu thích ở cả ba miền đất nước. Món ăn này rất đơn giản, chỉ với vài khuôn đậu chiên nóng giòn, bún lá, thịt luộc, dồi, lòng heo, chả cốm, chấm cùng mắm tôm mằn mặn. Chỉ vậy thôi mà làm say mê không biết bao nhiêu thế hệ. Ở mỗi miền, bún đậu lại có những biến tấu riêng, nhưng để làm nên món bún đậu mắm tôm ngon đúng điệu thì nhất thiết cần có chả cốm.
Tại Sài Gòn, bạn có thể thưởng thức món bún đậu mắm tôm kèm chả cốm tại quán Bún đậu Homemade; quán Bún đậu cô Khàn,…

 – Xôi chả cốm

Không những ăn kèm với bánh giò, bún đậu, chả cốm còn được người Hà Nội dùng làm nguyên liệu ăn cùng các loại xôi như xôi trắng, xôi xéo, xôi gấc. Tại Sài Gòn, kiểu dùng xôi với chả cốm thường không phổ biến và được ít người biết đến. Với các bạn tại Hà Nội, có thể ghé đến hàng xôi bà Thảo- Đường Thành hay xôi Cô Kim tại 25 Lò Đúc để thưởng thức.
Chả cốm ăn riêng đã ngon, làm topping cho xôi, bún đậu, bánh cuốn hay bánh giò còn ngon hơn nữa. Qua bài viết về chả cốm ăn với gì ngon, mong rằng bạn đã chọn cho mình được món ăn kèm với chả cốm cho gia đình. Chúc cả nhà có một bữa ăn ngon miệng!')
INSERT [dbo].[TinTuc] ([MaTT], [MoTa], [Anh], [ND]) VALUES (3, N'Cốm tươi làm món gì ngon?', N'new3.jpg', N'Dùng cốm tươi làm món gì, cốm tươi có thể chế biến thành nhiều món ăn khác nhau như chả cốm, chè cốm, xôi cốm, bánh cốm, kem cốm… Với mỗi món ăn, hạt cốm lại cho một hương vị độc đáo riêng. Tùy vào tay nghề người làm, hạt cốm cũng cho những vị khác nhau. Hạt lúa phải chín đủ độ, bởi nếu nếp non quá hạt cốm sẽ bị vỡ, không đủ độ ngọt. Nếu hạt nếp già quá, cốm sẽ bị khô, cứng và không dẻo.
Sau đây, chúng ta sẽ cùng tìm hiểu công thức cốm tươi làm món gì ngon với món xôi cốm. Chắc hẳn, với nhiều người xôi cốm đã trở thành món ăn quen thuộc mỗi sáng. Tuy nhiên không phải ai cũng biết cách làm xôi cốm thơm ngon, tròn vị.
Nguyên liệu làm xôi cốm:
200gr cốm tươi
100gr hạt sen tươi
100gr đậu xanh đã cà vỏ
20gr dừa nạo
Muối, dầu ăn, đường cát.
Cách làm
Bước 1: Hạt sen rửa sạch, ninh cho chín nhừ cùng ¼ muỗng cà phê muối. Sau đó, vớt ra để ráo nước rồi xào hạt sen với một muỗng cà phê đường cho sen có vị hơi ngọt.

Bước 2: Đậu xanh rửa sạch, hấp chín cùng ¼ muỗng cà phê muối, giã nhuyễn rồi nắm thành nắm tròn to. Dừa nạo ngâm đường trong 30 phút, sau đó vớt ra để ráo nước. Rồi xào lửa nhỏ cho tới khi sợi dừa trong.

Bước 3: Cốm tươi đem bỏ ra một chiếc chảo hoặc mâm rộng. Nếu dùng cốm khô (cốm đông lạnh) thì cần vẩy một chút nước vào cốm để cốm mềm ra.

Bước 4: Cắt nắm đậu xanh thành từng lát mỏng rồi trộn với cốm. Tiếp tục trộn hạt sen với đậu xanh và cốm cho đến khi đều.

Bước 5: Đun nước sôi, cho hỗn hợp vừa trộn vào nồi đồ cho đến khi cốm chín mềm. Đổ xôi ra mâm, trộn thêm 2 muỗng cà phê đường hoặc nhiều hơn, tùy vào khẩu vị mỗi người cho vừa ăn. Xới xôi cốm ra đĩa, rắc dừa nạo lên là có thể ăn ngay.
Như vậy là bạn đã hoàn thành món xôi cốm cho công thức cốm tươi nấu gì ngon. Cùng tiếp tục làm món ngon với cốm đó là kem cốm.

Cốm tươi làm món gì- Kem cốm thơm mát
Kem cốm là một trong những món ăn không thể bỏ qua trong những ngày hè nóng bức. Nguyên liệu để làm kem cốm rất đơn giản và dễ tìm. Khi ăn, kem cốm dẻo mịn, mát lạnh, có vị ngọt, beo béo của sữa tươi và kem tươi, chắc chắn sẽ giúp bạn thỏa mãn cơn nóng.

Nguyên liệu làm kem cốm
250ml kem tươi
250ml sữa tươi
100gr đường
50gr cốm tươi
50gr cơm dừa tươi
5-7 lá dứa
1 lòng đỏ trứng gà
½ muỗng cà phê muối
Cách làm
Bước 1: Đun sữa tươi với 2 muỗng đường và 5gr muối cho đến khi sôi.

Bước 2: Trộn cốm vào sữa nóng, ngâm cho mềm. Sau đó, đem xay hạt cốm và cơm dừa non. Rồi đem hỗn hợp này để nguội.

Bước 3: Đánh bông lòng đỏ trứng với đường. Rồi trộn hỗn hợp này với cốm sữa dừa đã xay trước đó. Sau đó đem hỗn hợp này đun sôi nhẹ.

Bước 4: Thái nhỏ lá nếp, đem xay rồi lọc lấy nước cốt. Đổ nước cốt lá nếp vào hỗn hợp kem đang đun. Vừa đun, vừa khuấy đều để không bị cháy.

Bước 5: Đánh bông nhẹ kem tươi, trộn cùng hỗn hợp kem đang đun. Để nguội hỗn hợp rồi đổ vào khuôn, đem đông lạnh ở ngăn đá tủ lạnh.
Vậy là bạn đã hoàn thành món kem cốm thơm ngon, mát lạnh trong công thức cốm tươi làm món gì ngon rồi. Nhanh tay vào bếp và cùng làm những món ăn ngon với cốm đãi cả nhà nào.')
INSERT [dbo].[TinTuc] ([MaTT], [MoTa], [Anh], [ND]) VALUES (4, N'Cách làm măng tây xào tỏi', N'new4.jpg', N'Nguyên liệu cần để nấu món măng tây xào tỏi
500g măng tây xanh
2 muỗng canh dầu lạc (dầu đậu phộng)
4 tép tỏi.
Các gia vị khác: tiêu, bột ngọt, muối, nước mắm.
Cách nấu măng tây xào tỏi giòn thơm
Bước 1: Sơ chế nguyên liệu

Chọn những ngọn măng tây xanh có phần gốc không bị khô, không có đốm vàng. Măng tây sau khi mua về, rửa sạch, tỉa, cắt bỏ phần bị xơ cứng ở gốc hoặc tước bỏ phần vỏ ngoài rồi nấu. Cắt măng tây thành đoạn dài từ 4cm- 5cm.
Tỏi đem bóc vỏ, băm nhuyễn.
Bước 2: Xào măng tây với tỏi sao cho vừa xanh vừa giòn

Cách đơn giản để xào măng tây với tỏi vừa giòn vừa giữ được độ xanh của măng là cần chọn những búp măng tây non, loại bỏ phần già. Bên cạnh đó, cần xào nhanh và đều tay.

Bước 3: Măng tây xào tỏi

Đầu tiên, cần phi thơm tỏi với ít dầu trong chảo nóng. Sau đó, bỏ măng tây đã cắt khúc vào xào đều, nêm nếm gia vị muối, tiêu, bột ngọt, nước mắm cho vừa ăn. Xào đều trong 2 phút rồi bắt chảo xuống, bỏ ra đĩa và thưởng thức. Lưu ý, trong quá trình xào không nên đậy nắp vì măng tây sẽ dễ bị chín nhũn và không giữ được màu xanh.
Trên đây là công thức nấu món măng tây xào tỏi đơn giản, dễ làm cho bữa cơm gia đình thêm hấp dẫn. Chỉ cần chú ý lựa chọn loại măng tây tươi ngon cùng một vài mẹo xào đơn giản là bạn đã có một món ăn thơm ngon rồi.

Ngoài măng tây xào tỏi với dầu lạc, bạn có thể dùng dầu oliu, dầu mè để xào. Hoặc xào măng tây với một số nguyên liệu khác như tôm, thịt bò cũng cho những hương vị hấp dẫn riêng.

Măng tây là một loại rau được khá nhiều người ưa dùng bởi nguồn dinh dưỡng tuyệt vời từ chúng. Hiện nay, măng tây đang được trồng chủ yếu tại một số tỉnh miền Bắc và Đông Nam Bộ. Tuy nhiên, để nói đến độ ngon, cho năng suất cao và hàm lượng dinh dưỡng cao phải kể đến tỉnh Ninh Thuận. Măng tây ở đây chủ yếu là loại măng tây xanh và măng tây tím. Riêng loại măng tây trắng được đánh giá là loại măng tây chứa hàm lượng dinh dưỡng cao nhất trong tất cả các loại măng tây. Tuy nhiên, tại Việt Nam hiện chưa trồng được loại này.

Ngoài ra, để đảm bảo an toàn cho sức khỏe, bạn nên chọn mua măng tây sạch hoặc măng tây hữu cơ. Các loại măng tây hữu cơ không sử dụng phân bón hóa học, thuốc kích thích tăng trưởng, đảm bảo tốt cho sức khỏe cả gia đình. Mua măng tây xanh hữu cơ Ninh Thuận.

Hy vọng với bài hướng dẫn này, bạn có thể thực hiện được món măng tây xào tỏi vừa giòn xanh vừa thơm ngon cho bữa ăn thêm dinh dưỡng. Chúc các bạn thực hiện thành công')
INSERT [dbo].[TinTuc] ([MaTT], [MoTa], [Anh], [ND]) VALUES (6, N'Súp lơ xanh nấu món gì ngon?', N'new5.jpg', N'Súp lơ xanh xào gà
Nguyên liệu

600g ức gà; 250g súp lơ xanh; ½ muỗng cà phê vừng đã rang chín; dầu mè; dầu oliu; bột ngô; hành tây; gừng; mật ong; và các gia vị khác như hành, tiêu, hạt nêm.

Thực hiện

Bước 1: Ức gà rửa sạch, cắt miếng nhỏ vừa ăn. Hành tây rửa sạch, cắt khúc nhỏ. Súp lơ xanh sau khi rửa sạch, cắt khúc từ 4cm- 5cm. Gừng bỏ vỏ ngoài, cắt thành sợi nhỏ, mỏng.

Bước 2: Trộn nước tương, mật ong, dầu mè, bột ngô tùy theo khẩu vị mỗi người. Đánh đều hỗn hợp cho đến khi sánh mịn.

Bước 3: Cho dầu oliu vào chảo, khi chảo nóng bắt đầu cho ức gà vào xào cho săn. Sau đó cho hành tây, gừng cắt sợi, súp lơ xanh và chút tiêu vào xào đều trong 4 phút. Tiếp đó vặn lửa nhỏ và thêm hỗn hợp nước sốt đã làm trước đó vào chảo và đảo đều. Nấu thêm 5 phút cho đến khi nước sốt có độ sền sệt.

Bước 4: Tắt bếp, cho món ăn ra đĩa và rắc hạt vừng đã rang lên trên. Dùng nóng với cơm gạo lứt sẽ cho vị ngon hơn.

Súp lơ xanh nấu món gì ngon? Bạn có thể xào loại rau này với nhiều nguyên liệu khác như tôm, thịt bò, tỏi…đều cho những hương vị tươi ngon.

Mì spaghetti với súp lơ xanh
Một món ăn với súp lơ xanh nấu món gì ngon mà các bạn có thể tham khảo là mì spaghetti với súp lơ xanh. Món ăn được dùng phổ biến tại nhiều nước Châu Âu bởi hương vị thơm ngon lại chứa đầy đủ dinh dưỡng.

Nguyên liệu

50g mì spaghetti; 200g súp lơ xanh; 50g rau cải bó xôi (rau chân vịt); 2 quả cà chua; dầu oliu; hành, tỏi băm nhuyễn; các gia vị khác như sốt cà chua, tiêu, hạt nêm.
Thực hiện

Bước 1: Súp lơ xanh rửa sạch, cắt khúc vừa ăn. Cải bó xôi rửa sạch, cắt khúc từ 3cm- 4cm. Cà chua sau khi rửa sạch, cắt hạt lựu.

Bước 2: Chần súp lơ xanh trong nước sôi trong 2 phút, vớt ra, bỏ vào tô nước đá lạnh. Bắt nồi nước sôi, cho mì spaghetti vào nấu trong 9 phút, sau đó vớt ra cho ráo nước.

Bước 3: Bắt chảo, cho dầu oliu vào chảo. Khi chảo nóng, cho hành, tỏi băm nhuyễn vào xào cho thơm, sau đó cho cà chua vào xào cho mềm. Cho tiếp rau cải bó xôi, súp lơ xanh vào xào, thêm 2 muỗng sốt cà chua và nêm nếm gia vị cho vừa ăn. Cuối cùng, thêm mì spaghetti vào đảo đều.

Bước 4: Tắt bếp, cho thức ăn ra đĩa. Dùng khi mì còn nóng.
Lưu ý:

Có rất nhiều công thức cho súp lơ xanh nấu món gì ngon đơn giản mà bạn có thể thực hiện. Riêng với món mì spaghetti, bạn có thể thêm nhiều loại rau củ khác hoặc chế biến với nước sốt kem tươi cho vị cũng rất ngon.

Súp lơ xanh có thể ăn được tất cả kể cả phần thân. Những phần có lớp thân già, cứng, bạn có thể gọt bỏ lớp vỏ ngoài, phần thân mềm bên trong thường rất giòn và ngọt, hoàn toàn có thể sử dụng.
Khi nấu các món với súp lơ xanh, nên dùng nóng để giữ được các chất dinh dưỡng và hương vị thơm ngon.')
INSERT [dbo].[TinTuc] ([MaTT], [MoTa], [Anh], [ND]) VALUES (7, N'Yến mạch là gì?', N'new6.jpg', N'Yến mạch là gì?
Yến mạch là một loại ngũ cốc, thường được trồng ở những vùng khí hậu ôn đới mát mẻ. Cây khi thu hoạch thường đạt chiều cao 1,5m. Yến mạch có một số đặc điểm khá giống với lúa mạch nhưng chúng chỉ có thể phát triển trên đất có nhiều cát, độ phì nhiêu thấp và có tính axit cao. So với các loại ngũ cốc khác, yến mạch không chứa gluten, ít tinh bột, giàu chất xơ, các loại vitamin và khoáng chất. Thích hợp dùng cho cả người lớn và bé ăn dặm.

Yến mạch khi ăn có mùi thơm nhẹ, vị hơi ngọt. Thường được dùng làm thực phẩm chế biến thức ăn, nguyên liệu làm đẹp và giảm cân. Yến mạch sau khi thu hoạch được sơ chế thành 4 loại. Khi bạn chưa nắm rõ yến mạch là gì hay có bao nhiêu loại yến mạch thì đây sẽ là câu trả lời thỏa đáng.

Phân biệt các dạng yến mạch
Yến mạch sau khi thu hoạch được chế biến thành nhiều dạng khác nhau tùy theo nhu cầu sử dụng của người dùng. Khi đã có những thông tin về yến mạch là gì thì bạn cũng cần phải biết có bao nhiêu dạng yến mạch.

Yến mạch nguyên hạt

Như khi thu hoạch lúa nếp tại Việt Nam, yến mạch sau khi thu hoạch sẽ được tuốt bỏ lớp vỏ bên ngoài là có thể dùng. Tuy nhiên, yến mạch nguyên hạt có thời gian chín khá lâu (50 phút) và muốn yến mạch chín đều, không bị dai thì nên nấu với tỷ lệ nước và yến mạch là 3: 1.
Yến mạch cắt nhỏ

Loại này được cắt nhỏ từ hạt yến mạch nguyên hạt. Giúp tiết kiệm thời gian nấu, bạn chỉ cần 30 phút là có thể dùng được. Yến mạch chứa lượng lớn chất xơ, chất chống oxy hóa. Vì vậy, chúng đặc biệt thích hợp cho những người bị táo bón kéo dài hay những người bị tiểu đường.
Yến mạch cán dẹt

Loại yến mạch này được làm từ hạt yến mạch nguyên hạt đã hấp chín, sau đó đem cán dẹt. Tuy nhiên, khi chế biến làm món ăn, bạn vẫn cần phải nấu chín chúng trong 15 phút để dễ ăn hơn.
Yến mạch cán mỏng

Cũng như loại yến mạch cán dẹt, yến mạch cán mỏng cũng có cách sơ chế tương tự. Điểm khác biệt duy nhất là yến mạch cán mỏng được cán nhỏ hơn, mỏng hơn. Vì vậy, chúng có thời gian nấu nhanh hơn. Bạn chỉ cần đổ nước sôi vào và đợi khoảng 1 phút là có thể dùng ngay.
Loại yến mạch này thường được nhiều người sử dụng thay cho bữa sáng. Bạn có thể cho thêm bơ đậu phộng, bơ điều, sữa tươi hay trái cây để món ăn thêm hấp dẫn.
Yến mạch dạng bột

Loại yến mạch này được nghiền mịn từ yến mạch cán mỏng. Và thường được dùng làm bột cho bé ăn dặm hay làm nguyên liệu đắp mặt nạ có tác dụng giảm mụn, trắng da, làm chậm quá trình lão hóa da.')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO


ALTER TABLE [dbo].[AnhSP]  WITH CHECK ADD  CONSTRAINT [FK_AnhSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[AnhSP] CHECK CONSTRAINT [FK_AnhSP_SanPham]
GO
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_DonHang]
GO
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[GiaSP]  WITH CHECK ADD  CONSTRAINT [FK_GiaSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GiaSP] CHECK CONSTRAINT [FK_GiaSP_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO

ALTER TABLE [dbo].[TTDH]  WITH CHECK ADD  CONSTRAINT [FK_TTDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[TTDH] CHECK CONSTRAINT [FK_TTDH_DonHang]
GO
