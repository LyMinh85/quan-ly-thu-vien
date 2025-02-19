USE [master]
    GO
/****** Object:  Database [QuanLyThuVien]    Script Date: 9/13/2024 12:40:53 PM ******/
CREATE DATABASE [QuanLyThuVien]
    CONTAINMENT = NONE
    ON  PRIMARY
    ( NAME = N'QuanLyThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
    LOG ON
    ( NAME = N'QuanLyThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
    WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET COMPATIBILITY_LEVEL = 160
    GO
    IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
    EXEC [QuanLyThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULL_DEFAULT OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULLS OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_PADDING OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_WARNINGS OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET ARITHABORT OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CLOSE ON
    GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_SHRINK OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS ON
    GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_DEFAULT  GLOBAL
    GO
ALTER DATABASE [QuanLyThuVien] SET CONCAT_NULL_YIELDS_NULL OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET NUMERIC_ROUNDABORT OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET QUOTED_IDENTIFIER OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET RECURSIVE_TRIGGERS OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET  ENABLE_BROKER
    GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET TRUSTWORTHY OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET PARAMETERIZATION SIMPLE
    GO
ALTER DATABASE [QuanLyThuVien] SET READ_COMMITTED_SNAPSHOT OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET HONOR_BROKER_PRIORITY OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET RECOVERY SIMPLE
    GO
ALTER DATABASE [QuanLyThuVien] SET  MULTI_USER
    GO
ALTER DATABASE [QuanLyThuVien] SET PAGE_VERIFY CHECKSUM
    GO
ALTER DATABASE [QuanLyThuVien] SET DB_CHAINING OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
    GO
ALTER DATABASE [QuanLyThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS
    GO
ALTER DATABASE [QuanLyThuVien] SET DELAYED_DURABILITY = DISABLED
    GO
ALTER DATABASE [QuanLyThuVien] SET ACCELERATED_DATABASE_RECOVERY = OFF
    GO
ALTER DATABASE [QuanLyThuVien] SET QUERY_STORE = ON
    GO
ALTER DATABASE [QuanLyThuVien] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
    GO
USE [QuanLyThuVien]
    GO
/****** Object:  Table [dbo].[CT_PHIEU_MUON]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[CT_PHIEU_MUON](
    [idSach] [int] NOT NULL,
    [idPhieuMuon] [int] NOT NULL,
    [soLuong] [int] NULL,
     CONSTRAINT [PK_CTPM] PRIMARY KEY CLUSTERED
    (
    [idSach] ASC,
[idPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[CT_PHIEU_TRA]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[CT_PHIEU_TRA](
    [idSach] [int] NOT NULL,
    [idPhieuTra] [int] NOT NULL,
    [soLuong] [int] NULL,
    [trangThaiSach] [tinyint] NULL,
     CONSTRAINT [PK_CTPT] PRIMARY KEY CLUSTERED
    (
    [idSach] ASC,
[idPhieuTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[LOAI_SACH]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[LOAI_SACH](
    [id] [int] NOT NULL,
    [tenLoai] [nvarchar](100) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[NGUOI_DOC]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[NGUOI_DOC](
    [id] [int] NOT NULL,
    [sdt] [nvarchar](15) NULL,
    [ngaySinh] [date] NULL,
    [diaChi] [nvarchar](100) NULL,
    [hoTen] [nvarchar](100) NULL,
    [cmnd] [nvarchar](20) NULL,
    [hanSuDung] [date] NULL,
    [soLuongMuonChoPhep] [tinyint] NULL,
    [trangThaiViPham] [tinyint] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[NHA_XUAT_BAN]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[NHA_XUAT_BAN](
    [id] [int] NOT NULL,
    [ten] [nvarchar](100) NULL,
    [diaChi] [nvarchar](100) NULL,
    [sdt] [char](15) NULL,
    [email] [varchar](320) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[NHAN_VIEN](
    [id] [int] NOT NULL,
    [hoTen] [nvarchar](100) NULL,
    [ngaySinh] [nvarchar](100) NULL,
    [diaChi] [nvarchar](100) NULL,
    [cmnd] [nvarchar](20) NULL,
    [vaiTro] [tinyint] NULL,
    [matKhau] [varchar](50) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[PHIEU_MUON]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[PHIEU_MUON](
    [id] [int] NOT NULL,
    [idNhanVien] [int] NULL,
    [idNguoiDoc] [int] NULL,
    [ngayMuon] [date] NULL,
    [ngayTra] [date] NULL,
     PRIMARY KEY CLUSTERED
    (
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[PHIEU_TRA]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[PHIEU_TRA](
    [id] [int] NOT NULL,
    [idNguoiDoc] [int] NULL,
    [ngayTraThatSu] [date] NULL,
    [tienPhat] [money] NULL,
     PRIMARY KEY CLUSTERED
    (
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[SACH]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[SACH](
    [id] [int] NOT NULL,
    [tenSach] [nvarchar](100) NULL,
    [giaSach] [money] NULL,
    [soLuong] [int] NULL,
    [trangThai] [tinyint] NULL,
    [idTacGia] [int] NULL,
    [idNhaXuatBan] [int] NULL,
    [idLoaiSach] [int] NULL,
    [idKho] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[TAC_GIA]    Script Date: 9/13/2024 12:40:53 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[TAC_GIA](
    [id] [int] NOT NULL,
    [hoTen] [nvarchar](100) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (1, 1, 2)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (1, 3, 3)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (1, 4, 2)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (2, 2, 5)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (2, 3, 1)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (3, 2, 5)
    GO
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (1, 1, 2, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (1, 3, 1, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (1, 4, 1, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (2, 2, 5, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (2, 3, 0, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (3, 2, 5, 0)
    GO
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (1, N'Kinh dị')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (2, N'Ngôn tình')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (3, N'Trinh thám')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (4, N'Lịch sử')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (5, N'Khoa học và công nghệ')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (6, N'Viễn tưởng')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (7, N'Thiếu nhi')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (8, N'Tâm lý')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (9, N'Tôn giáo')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (10, N'Văn học tuổi mới lớn')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (11, N'Văn học kinh điển, phiêu lưu')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (12, N'Truyện thiếu nhi')
INSERT INTO [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (13, N'Thơ');
INSERT INTO [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (14, N'Tiểu thuyết');
INSERT INTO [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (15, N'Tiểu sử');
INSERT INTO [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (16, N'Tự truyện');
INSERT INTO [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (17, N'Truyện ngắn');
    GO
INSERT [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham]) VALUES (1, N'0963852741', CAST(N'2002-05-16' AS Date), N'230 Lê Lợi, phường 8, quận 5, TP HCM', N'Nguyễn Minh Quân', N'080705963456', CAST(N'2025-05-04' AS Date), 20, 0)
INSERT [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham]) VALUES (2, N'0987456253', CAST(N'2001-05-07' AS Date), N'05 Lê Lai, phường 7, quận 8', N'Lý Gia Hân', N'040302789654', CAST(N'2025-05-06' AS Date), 19, 0)
INSERT [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham]) VALUES (3, N'0396547336', CAST(N'2005-05-01' AS Date), N'172/6 Tôn Đức Thắng, phường 5, quận 6, TP HCM', N'Lê Minh Quân', N'060504321785', CAST(N'2025-05-06' AS Date), 20, 0)
-- Inserting 10 new readers with proper Vietnamese names into NGUOI_DOC table
INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (4, N'0987654321', CAST(N'1995-01-15' AS Date), N'123 Nguyễn Văn Cừ, Quận 5, TP HCM', N'Nguyễn Thị Thu Hà', N'123456789', CAST(N'2025-12-31' AS Date), 10, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (5, N'0978654321', CAST(N'1993-04-20' AS Date), N'456 Võ Thị Sáu, Quận 3, TP HCM', N'Trần Minh Hoàng', N'987654321', CAST(N'2024-08-15' AS Date), 15, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (6, N'0908123456', CAST(N'1989-12-02' AS Date), N'789 Trường Chinh, Quận Tân Bình, TP HCM', N'Lê Hồng Phúc', N'654321987', CAST(N'2026-02-01' AS Date), 12, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (7, N'0912123456', CAST(N'2000-05-10' AS Date), N'101 Lý Thường Kiệt, Quận Tân Phú, TP HCM', N'Phạm Văn Bình', N'321654987', CAST(N'2024-11-30' AS Date), 20, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (8, N'0933123456', CAST(N'1997-07-21' AS Date), N'202 Lý Tự Trọng, Quận 1, TP HCM', N'Hoàng Thị Lan', N'951753456', CAST(N'2025-09-25' AS Date), 18, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (9, N'0942123456', CAST(N'1996-08-15' AS Date), N'303 Phan Đăng Lưu, Quận Phú Nhuận, TP HCM', N'Nguyễn Văn Tuấn', N'753159456', CAST(N'2026-06-30' AS Date), 16, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (10, N'0953123456', CAST(N'1992-11-25' AS Date), N'404 Điện Biên Phủ, Quận Bình Thạnh, TP HCM', N'Vũ Thị Hương', N'456789123', CAST(N'2025-05-05' AS Date), 12, 1);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (11, N'0964123456', CAST(N'1998-03-08' AS Date), N'505 Nguyễn Đình Chiểu, Quận 3, TP HCM', N'Lý Thị Mai', N'951753852', CAST(N'2026-01-15' AS Date), 14, 0);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (12, N'0975123456', CAST(N'1994-02-22' AS Date), N'606 Cách Mạng Tháng 8, Quận 10, TP HCM', N'Ngô Đức Minh', N'654852357', CAST(N'2024-12-01' AS Date), 17, 1);

INSERT INTO [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham])
VALUES (13, N'0986123456', CAST(N'1991-06-16' AS Date), N'707 Lê Hồng Phong, Quận 5, TP HCM', N'Trịnh Văn Nam', N'456852147', CAST(N'2025-10-20' AS Date), 19, 0);
    GO
INSERT [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (1, N'Nhã Nam', N'Số 81 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', N'024 3822 0801  ', N'veph@nxbgd.vn')
INSERT [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (2, N'Kim Đồng', N'55 Quang Trung, Hai Bà Trưng, Hà Nội', N'1900571595     ', N'info@nxbkimdong.com.vn')
INSERT [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (3, N'Trẻ', N'161B Lý Chính Thắng, Phường Võ Thị Sáu, Quận 3 , TP. Hồ Chí Minh', N'028 3931 6289  ', N'hopthubandoc@nxbtre.com.vn')
INSERT INTO [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (7, N'Nhà Xuất Bản Đinh Tị', N'NV22, Lĩnh Nam, Hoàng Mai, Hà Nội', N'0247 309 3388', N'contact@dinhtibooks.com.vn');
INSERT INTO [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (8, N'Nhà Xuất Bản Đông A', N'34 Hàng Bài, Hoàn Kiếm, Hà Nội', N'024 3942 4567', N'info@donga.com.vn');
INSERT INTO [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (9, N'Nhà Xuất Bản Văn Học', N'Hà Nội', N'024 3942 4567', N'info@nxbvanhoc.vn');
INSERT INTO [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (10, N'Nhà Xuất Bản Hội Nhà Văn', N'Hà Nội', N'024 3943 4567', N'contact@hoinhavan.com');
    GO
INSERT [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau]) VALUES (1, N'Thuỳ Trang :)', N'2002-12-16', N'273 An Dương Vương, phường 10, quận 5, TP HCM', N'060504789258', 1, N'123456')
INSERT [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau]) VALUES (2, N'Minh Quang', N'2003-04-23', N'4 Tôn Đức Thắng, phường 5, quận 1, TP HCM', N'090807963258', 0, N'654321')
INSERT [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau]) VALUES (3, N'sd', N'2024-09-12', N'ẻ', N'123456789012', 0, N'hehe')
INSERT INTO [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau])
VALUES (4, N'Nguyễn Văn An', N'1985-02-14', N'123 Lê Lợi, Quận 1, TP HCM', N'123456789', 1, N'matkhau123');

INSERT INTO [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau])
VALUES (5, N'Lê Thị Hồng', N'1990-06-25', N'456 Trần Hưng Đạo, Quận 5, TP HCM', N'987654321', 0, N'lethihong90');

INSERT INTO [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau])
VALUES (6, N'Trần Quang Minh', N'1995-08-10', N'789 Nguyễn Đình Chiểu, Quận 3, TP HCM', N'456789123', 1, N'minhtrannguyen');

INSERT INTO [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau])
VALUES (7, N'Hoàng Thu Trang', N'1988-11-22', N'101 Cách Mạng Tháng 8, Quận 10, TP HCM', N'321654987', 0, N'tranghoang88');

INSERT INTO [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau])
VALUES (8, N'Phạm Văn Bảo', N'1993-03-18', N'202 Phan Xích Long, Quận Phú Nhuận, TP HCM', N'654852357', 1, N'baopham93');
    GO
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (1, 1, 1, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-22' AS Date))
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (2, 1, 2, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-22' AS Date))
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (3, 2, 3, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-22' AS Date))
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (4, 1, 2, CAST(N'2024-09-11' AS Date), CAST(N'2024-09-26' AS Date))
    GO
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (1, 1, CAST(N'2024-05-07' AS Date), 0.0000)
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (2, 2, CAST(N'2024-05-07' AS Date), 0.0000)
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (3, 2, CAST(N'2024-05-07' AS Date), 6500.0000)
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (4, 2, CAST(N'2024-09-11' AS Date), 62000.0000)
    GO
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (1, N'Cho Tôi Xin Một Vé Đi Tuổi Thơ  ', 62000.0000, 16, 0, 1, 3, 7, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (2, N'Ngồi Khóc Trên Cây', 85000.0000, 6, 0, 1, 3, 7, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (3, N'Thiên Thần Nhỏ Của Tôi  ', 57000.0000, 5, 0, 1, 3, 10, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (6, N'Robin Hood: Hiệp Sĩ Rừng Xanh  ', 69000.0000, 42, 0, 2, 2, 11, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (7, N'Chuyện Con Mèo Dạy Hải Âu Bay', 54000.0000, 58, 0, 3, 2, 12, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (8, N'Clean Code - A Handbook of Agile Software Craftsmanship', 1800000.0000, 3, 0, 3, 1, 5, 0)
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (9, N'Truyện Kiều', 100000, 15, 0, 13, 9, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (10, N'Lục Vân Tiên', 90000, 12, 0, 14, 9, 13, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (11, N'Tắt Đèn', 85000, 10, 0, 15, 10, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (12, N'Chí Phèo', 75000, 8, 0, 16, 10, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (13, N'Số Đỏ', 95000, 20, 0, 17, 12, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (14, N'Nỗi Buồn Chiến Tranh', 120000, 25, 0, 18, 11, 15, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (15, N'Mùa Hoa Cải', 68000, 5, 0, 19, 12, 15, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (29, N'Trên Đường Băng', 95000, 20, 0, 14, 9, 17, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (30, N'Trong Gia Đình', 82000, 18, 0, 17, 10, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (31, N'Tuổi Thơ Dữ Dội', 95000, 12, 0, 15, 11, 10, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (32, N'Những Ngày Thơ Ấu', 68000, 15, 0, 19, 9, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (33, N'Nghìn Lẻ Một Đêm', 78000, 8, 0, 13, 12, 8, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (34, N'Những Người Khốn Khổ', 120000, 5, 0, 18, 10, 15, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (35, N'Không Gia Đình', 86000, 17, 0, 19, 11, 14, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (36, N'Những Ngọn Núi Hát', 99000, 7, 0, 18, 9, 3, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (37, N'Hoa Vàng Trên Cỏ Xanh', 90000, 9, 0, 14, 12, 10, 1);
INSERT INTO [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (38, N'Dế Mèn Phiêu Lưu Ký', 87000, 14, 0, 20, 9, 18, 1);
    GO
INSERT [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (1, N'Nguyễn Nhật Ánh')
INSERT [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (2, N'Alexandre Dumas')
INSERT [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (3, N'Luis Sepúlveda')
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (5, N'Nguyễn Huy Thiệp');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (6, N'Bảo Ninh');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (7, N'Tô Hoài');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (8, N'Trần Đăng Khoa');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (9, N'Nguyễn Khải');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (13, N'Nguyễn Du');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (14, N'Ngô Tất Tố');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (15, N'Nam Cao');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (16, N'Vũ Trọng Phụng');
INSERT INTO [dbo].[TAC_GIA] ([id], [hoTen]) VALUES (19, N'Lê Minh Khuê');
    GO
ALTER TABLE [dbo].[CT_PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idPhieuMuon])
    REFERENCES [dbo].[PHIEU_MUON] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[CT_PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idSach])
    REFERENCES [dbo].[SACH] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[CT_PHIEU_TRA]  WITH CHECK ADD FOREIGN KEY([idPhieuTra])
    REFERENCES [dbo].[PHIEU_TRA] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[CT_PHIEU_TRA]  WITH CHECK ADD FOREIGN KEY([idSach])
    REFERENCES [dbo].[SACH] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idNguoiDoc])
    REFERENCES [dbo].[NGUOI_DOC] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idNhanVien])
    REFERENCES [dbo].[NHAN_VIEN] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[PHIEU_TRA]  WITH CHECK ADD FOREIGN KEY([idNguoiDoc])
    REFERENCES [dbo].[NGUOI_DOC] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idLoaiSach])
    REFERENCES [dbo].[LOAI_SACH] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idNhaXuatBan])
    REFERENCES [dbo].[NHA_XUAT_BAN] ([id])
    ON DELETE CASCADE
           GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idTacGia])
    REFERENCES [dbo].[TAC_GIA] ([id])
    ON DELETE CASCADE
           GO
USE [master]
    GO
ALTER DATABASE [QuanLyThuVien] SET  READ_WRITE
    GO
