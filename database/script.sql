USE [master]
GO
/****** Object:  Database [babyshop4]    Script Date: 6/19/2017 9:10:12 PM ******/
CREATE DATABASE [babyshop4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'babyshop4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\babyshop4.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'babyshop4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\babyshop4_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [babyshop4] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [babyshop4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [babyshop4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [babyshop4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [babyshop4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [babyshop4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [babyshop4] SET ARITHABORT OFF 
GO
ALTER DATABASE [babyshop4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [babyshop4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [babyshop4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [babyshop4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [babyshop4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [babyshop4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [babyshop4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [babyshop4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [babyshop4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [babyshop4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [babyshop4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [babyshop4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [babyshop4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [babyshop4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [babyshop4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [babyshop4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [babyshop4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [babyshop4] SET RECOVERY FULL 
GO
ALTER DATABASE [babyshop4] SET  MULTI_USER 
GO
ALTER DATABASE [babyshop4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [babyshop4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [babyshop4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [babyshop4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [babyshop4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'babyshop4', N'ON'
GO
USE [babyshop4]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/19/2017 9:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Gender] [bit] NULL,
	[NgaySinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenTaiKhoan] [nvarchar](1024) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[NoiDung] [nvarchar](2048) NOT NULL,
	[TinhTrang] [int] NULL,
	[Ngay] [datetime] NOT NULL CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()),
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chitietdondathang]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdondathang](
	[MaChiTietDDH] [nvarchar](11) NOT NULL,
	[MaDonDatHang] [nvarchar](11) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[GiaBan] [int] NULL DEFAULT (NULL),
	[SoLuong] [int] NULL DEFAULT (NULL),
 CONSTRAINT [pk_chitietdondathang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dondathang]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dondathang](
	[MaDonDatHang] [nvarchar](11) NOT NULL,
	[NgayLap] [datetime] NULL CONSTRAINT [DF__dondathan__NgayL__145C0A3F]  DEFAULT (NULL),
	[TongThanhTien] [int] NULL CONSTRAINT [DF__dondathan__TongT__15502E78]  DEFAULT (NULL),
	[MaTaiKhoan] [nvarchar](128) NULL,
	[MaTinhTrang] [int] NOT NULL,
 CONSTRAINT [pk_dondathang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL CONSTRAINT [DF_GioHang_SoLuong]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[MaLoaiSanPham] [int] NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL DEFAULT (NULL),
	[BiXoa] [int] NULL DEFAULT ('0'),
 CONSTRAINT [pk_loaisanpham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaitaikhoan]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaitaikhoan](
	[MaLoaiTaiKhoan] [int] NOT NULL,
	[LoaiTaiKhoan] [nvarchar](50) NULL DEFAULT (NULL),
 CONSTRAINT [pk_loaitaikhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhasanxuat]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhasanxuat](
	[MaNhaSanXuat] [int] NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL DEFAULT (NULL),
	[LoGoURL] [nvarchar](50) NULL DEFAULT (NULL),
	[BiXoa] [int] NULL DEFAULT ('0'),
 CONSTRAINT [pk_nhasanxuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL CONSTRAINT [DF__sanpham__TenSanP__239E4DCF]  DEFAULT (NULL),
	[MoTa] [nvarchar](max) NULL,
	[XuatXu] [nvarchar](100) NULL CONSTRAINT [DF__sanpham__XuatXu__24927208]  DEFAULT (NULL),
	[MaNhaSanXuat] [int] NOT NULL,
	[GiaBan] [int] NULL CONSTRAINT [DF__sanpham__GiaBan__25869641]  DEFAULT (NULL),
	[NgayNhap] [datetime] NULL CONSTRAINT [DF__sanpham__NgayNha__267ABA7A]  DEFAULT (getdate()),
	[SoLuongBan] [int] NULL CONSTRAINT [DF__sanpham__SoLuong__276EDEB3]  DEFAULT (NULL),
	[SoLuongTon] [int] NULL CONSTRAINT [DF__sanpham__SoLuong__286302EC]  DEFAULT (NULL),
	[MaLoaiSanPham] [int] NOT NULL,
	[SoLuongXem] [int] NULL CONSTRAINT [DF__sanpham__SoLuong__29572725]  DEFAULT (NULL),
	[HinhAnh] [nvarchar](100) NULL CONSTRAINT [DF__sanpham__HinhAnh__2A4B4B5E]  DEFAULT (NULL),
	[BiXoa] [int] NULL CONSTRAINT [DF__sanpham__BiXoa__2B3F6F97]  DEFAULT ('0'),
 CONSTRAINT [pk_sanpham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[MaTaiKhoan] [int] NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL DEFAULT (NULL),
	[MatKhau] [nvarchar](50) NULL DEFAULT (NULL),
	[TenHienThi] [nvarchar](100) NULL DEFAULT (NULL),
	[NgaySinh] [date] NULL DEFAULT (NULL),
	[BiXoa] [int] NULL DEFAULT ('0'),
	[MaLoaiTaiKhoan] [int] NOT NULL,
	[NoiSong] [nvarchar](100) NULL DEFAULT (NULL),
 CONSTRAINT [pk_taikhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trangthai]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trangthai](
	[MaTinhTrang] [int] NOT NULL,
	[TenTinhTrang] [varchar](50) NULL DEFAULT (NULL),
 CONSTRAINT [pk_trangthai] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_GioHang]    Script Date: 6/19/2017 9:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GioHang]
AS
SELECT        dbo.GioHang.*, dbo.sanpham.TenSanPham
FROM            dbo.GioHang INNER JOIN
                         dbo.sanpham ON dbo.GioHang.MaSanPham = dbo.sanpham.MaSanPham

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705011030414_InitialCreate', N'Demo_DAGK.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416EECA9726488DDD16CEDA4E8DC417649DA26F0657E2AE8548942A518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E020416393C331C0EC9E170B8FFFDF3EFF8D747DF331E7014BB01999807A37DD3C0C40E1C972C276642173FBE317FFDE5DB6FC6678EFF68FC9ED31D313A6849E289794F69786C59B17D8F7D148F7CD78E823858D0911DF8167202EB707FFF67EBE0C0C200610296618C3F2684BA3E4E3FE0731A101B873441DE65E0602FE6E550334B518D2BE4E33844369E98A7D80FEE4E4FDEBD1F65B4A671E2B908E498616F611A889080220A521E7F8AF18C460159CE422840DEED5388816E81BC1873E98F4BF2AE1DD93F641DB1CA8639949DC434F07B021E1C71CD5862F395F46B169A03DD9D818EE913EB75AABF8979E1E0B4E863E081024486C7532F62C413F3B26071128757988EF286A30CF23C02B82F41F4795445DC333AB7DB2B2CE970B4CFFEED19D3C4A349842704273442DE9E7193CC3DD77E8F9F6E83CF984C8E0EE68BA337AF5E23E7E8F54FF8E855B5A7D057A0AB1540D14D14843802D9F0A2E8BF6958F57696D8B06856699369056C092685695CA2C70F982CE93D4C97C337A671EE3E62272FE1C6F589B83087A0118D12F8BC4A3C0FCD3D5CD45B8D3CD9FF0D5C0F5FBD1E84EB157A7097E9D00BFC61E24430AF3E622FAD8DEFDD309B5EB5F1BEE364E751E0B3EFBA7D65B577B320896CD699404B728BA225A675E9C65669BC9D4C9A410D6FD639EAEE9B369354366F2529EBD02A332167B1E9D990CBFBBC7C3B5BDC4918C2E0A5A6C534D26470E2563512DAEE1905456936075DCD864077BEE655F0CC47AE37C032D8810BF81F0B37F271D1CBB701181D22BD65BE41710CAB80F31B8AEF1B44873F07107D86ED2402E39C51E487CFCEEDE63E20F82AF1E7CCE637C76BB0A1B9FD129C239B06D11961ADD6C6FB10D89F83849E11E71451FC89DA3920FBBC75FDEE0083887362DB388ECFC198B1330DC0BDCE012F083D3AEC0DC796A76DBB21530FB9BEDA0F1116D2BB9CB4F445D414923FA22153F9244DA27E08962EE9266A4EAA1735A368159593F515958175939453EA054D095AE5CCA806F3F2D2111ADECD4B6177DFCF5B6FF3D6AD051535CE6085C4EF30C1112C63CE0DA21447A41C812EEBC6369C8574F818D367DF9B524EBF232F199AD54AB3215D04869F0D29ECEECF86544C287E701DE6957438FCE4C400DF895E7DAE6A9F7382649B9E0EB56E6E9AF966D600DD743989E3C076D359A0087BF1A0455D7EF0E18CF60846D61B310A021D034377D9960725D0375334AA6B728A3D4CB171626761C1298A6DE4C86A840E393D04CB775485606534A42EDC0F124FB0741CB146881D826298A92EA1F2B47089ED86C86BD592D0B2E316C6FA5EF0106B4E71880963D8AA892ECCD5C10F2640C1471894360D8DAD8AC5351BA2C66BD58D799B0B5B8EBB1493D8884DB6F8CE1ABBE4FEDBB31866B3C636609CCD2AE922803690B70D03E56795AE06201E5C76CD40851393C640B94BB51103AD6B6C0B065A57C98B33D0EC88DA75FC85F3EAAE9967FDA0BCF96DBD515D5BB0CD9A3E76CC3433DF13DA50688123D93C4FE7AC123F52C5E10CE4E4E7B398BBBAA28930F019A6F5904DE9EF2AFD50AB194434A226C0D2D05A40F915A004244DA81EC2E5B1BC46E9B817D103368FBB35C2F2B55F80ADD8808C5DBD0AAD10EA2F4C45E3EC74FA287A56588364E49D0E0B151C8541888B57BDE31D94A28BCBCA8AE9E20BF7F1862B1DE383D1A0A016CF55A3A4BC33836B2937CD762DA91CB23E2ED95A5A12DC278D96F2CE0CAE256EA3ED4A5238053DDC82B55454DFC2079A6C79A4A3D86D8ABAB195E547F182B1A549A41A5FA23074C9B29258C54B8C59965535FD71D63FE1C8CF302C3B56E41D15D2169C6810A125166A8135487AEE46313D4514CD118BF34C1D5F2253EEAD9AE53F6759DD3EE541CCF7819C9AFD9DB5902EEE6B3BADEC8A708473E89FCFFC993488AE187D757383A5B9210F458AB8FD34F0129FE8DD2B7DEBECF6AEDA3E2B9111C69620BFE43E49BA929CDCBAE23B0D8B3C250619A2C277597D98F4103A65E79E6755DD3A6F548F9207A7AA28BA80D5D6864DE7C4F4182AD13BEC3F52AD08CF33A7784A4A158017F5C4A86435486095BAEEA8F5C4932A66BDA63BA2905D528514AA7A4859CD21A90959AD58094FA3513545770E72D648155DAEED8EACC81FA9422BAA57C056C82CD6754755A498548115D5DDB1CB7C137109DDE15D4B7B665971DBCA0EB5EBED5B1A8CE7590F87D9F62A77F755A04A714F2C7E3B2F81F1F29DB425EDC96E455BCA2219EBD9920643BFEAD4EEBCEB8B4EE345BD1EB376915D5BD89B2EF2F578FD2CF659ED423AD6892405F7E278271CE3C6FC48D5FE68463A636524A691AB1136F5A798627FC40846B33FBDA9E762B684E7049788B80B1CD32C79C33CDC3F38145EDEECCE2B182B8E1D4F7124D53D85A98FD906F2B0C8038AEC7B14C959116BBC142941A580F30571F0E3C4FC2B6D759CC62ED85F69F19E71117F22EE9F0954DC460936FE96B33C87C99C6F3E5EEDE83B87EE5ABDF8E32E6BBA675C4730638E8D7D4197AB8C70FDF5432F69B2A66B48B3F29B88973BA16A8F0E94A8C28458FD8DC1DCA583BC2FC8A5FCCE478FDFF7154DF986602D44C53B81A1F00651A1EE1DC02A58DA37000E7CD2F40D40BFCEAADF04AC229AF63D804BFA8389AF01BA2F4379CB2D6E358A13D12696A454CFADD9D46BA5566E7B6F9292AED79AE87262750FB83592A757B08C1796773CD8EEA8482B1E0C7B9BA6FDECB9C4BB923E5C26766C376B789389C20D17425F557EF00E64B4293274B69F05BC695BD34571773C95B25FAEEF8E191BCFDBDA7E46EFA68D4D17E6DD7163EB95B7BB63B6B6ADFD73CB96D6790BDD7A16AE9C50A4B98D51C582DBB26CB3C0399CF0E7011841E651668F23D5695D4D29A92D0C4B123D537D3E99C8589A38125F89A2996DBFBEF20DBFB1B39CA699AD260BB389375FFF1B79739A66DE9ADCC66DE4072BB30B5539DB2DEB5853FAD34BCA07AEF5A425FDBCCD676DBC5A7F49E9BF8328A5367B3477C42F27DB7710950C39757A64F7CAD7BDB077567E4911F6EFD85D9610EC771509B66BBB664173411641BE790B12E5244284E61253E4C0967A125177816C0AD52CC69CBEEE4EE376ECA6638E9D0B729DD030A1D065ECCFBD5AC08B39014DFCD314E6BACCE3EB30FDA19221BA0062BA2C367F4DDE26AEE714729F2B62421A08E65DF0882E1B4BCA22BBCBA702E92A201D81B8FA0AA7E816FBA10760F13599A107BC8A6C607E1FF012D94F65045007D23E1075B58F4F5DB48C901F738CB23D7C820D3BFEE32FFF03242A50DB50540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f57ad846-0f60-4dd6-a036-21c9a20734d7', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'475e0138-5165-49c2-9d10-f51574e4292e', N'f57ad846-0f60-4dd6-a036-21c9a20734d7')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Gender], [NgaySinh]) VALUES (N'44594a58-f330-4ccd-bfff-55c310466da0', N'thamvo@gmail.com', 0, N'AJkFLW3u1TkFi7BBB++R9pnSZee9eUqL4CnUCD1e9mmBcvPmjAHvXiERI+GAfwFMBA==', N'b86ed0fe-3443-4dfc-84c5-fb5ec8bd2cf9', NULL, 0, 0, NULL, 1, 0, N'thamvo@gmail.com', N'Thắm Võ', 0, N'1996-09-23')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Gender], [NgaySinh]) VALUES (N'475e0138-5165-49c2-9d10-f51574e4292e', N'HoangNhu@gmail.com', 0, N'AAhrwIQTXJnkpHK1cpdlE/YqgSN8PBOnTgR98utJV9iexBJwkZHJPIGm7Tc0lVDiww==', N'e8676f15-9756-4fbd-9766-016a1306f485', NULL, 0, 0, NULL, 0, 0, N'HoangNhu@gmail.com', N'Hoàng Nhu', 1, N'1996-12-02')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Gender], [NgaySinh]) VALUES (N'4fa010d1-6477-4976-8a21-a7002c4d8770', N'LangTieu@gmail.com', 0, N'ADO9zuvmfa6RbTPIaIBZkzhMrUfqy0NFEow5Uqm6GOSCBS9ibTae/088hXwz7Y1bxA==', N'12a8caf2-d3e1-4711-bee7-9de7d0fda492', NULL, 0, 0, NULL, 1, 0, N'LangTieu@gmail.com', N'Lăng Tiêu', 1, N'1996-12-02')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Gender], [NgaySinh]) VALUES (N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', N'nhu@gmail.com', 0, N'AHJ0OUf8GeAKoDDAsAfs5v6YAPoT+8GCZHB8z6YfkFC5cWqzopAfgbUscg9gF0qLlQ==', N'd72f9ebf-cbda-465e-b665-90596f885f13', NULL, 0, 0, NULL, 1, 0, N'nhu@gmail.com', N'Hoàng Nhu', 1, N'1996-12-02')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Gender], [NgaySinh]) VALUES (N'd6bcc1b1-f44b-4e3f-b881-ae17c729e5aa', N'HoangHoang@gmail.com', 0, N'AHK82Omi0dKVw3QPvXuyNB5rT39LOU6ulwzJxGlcC6yiXSdPfNXSBp64cWutCn6xng==', N'ff64bfdf-d6de-4a6b-8ef2-41057f20e9c4', NULL, 0, 0, NULL, 1, 0, N'HoangHoang@gmail.com', N'Hồ Hoàng Nhu', 1, N'2-12-1996')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Gender], [NgaySinh]) VALUES (N'dae30562-c376-4b79-99a4-e80c79c40d6d', N'HuongPham@gmail.com', 0, N'AMP13/v0BRCzwxVh47TAyFN4R4I/Uz1Vn3GxTfkGsFz5l6GbZc6AWDGcm77MH/T7GA==', N'5b222608-0376-4f6d-8ccd-647d6452bf1c', NULL, 0, 0, NULL, 1, 0, N'HuongPham@gmail.com', N'Hương Phạm', 0, N'1996-03-26')
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [TenTaiKhoan], [MaTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (2, 1, N'nhu@gmail.com', N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', N'đẹp quá', NULL, CAST(N'2017-05-09 21:10:44.770' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [TenTaiKhoan], [MaTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1002, 1, N'nhu@gmail.com', N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', N'quao', NULL, CAST(N'2017-05-16 15:53:14.420' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [TenTaiKhoan], [MaTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1003, 8, N'nhu@gmail.com', N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', N'Đẹp quá', NULL, CAST(N'2017-06-17 19:59:21.233' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [TenTaiKhoan], [MaTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1004, 8, N'HoangHoang@gmail.com', N'd6bcc1b1-f44b-4e3f-b881-ae17c729e5aa', N'Thích Thật ', NULL, CAST(N'2017-06-18 10:04:51.860' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [TenTaiKhoan], [MaTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1005, 8, N'nhu@gmail.com', N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', N'hhaa', NULL, CAST(N'2017-06-19 18:38:57.957' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
INSERT [dbo].[chitietdondathang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'12011700300', N'120117003', 3, 50000, 1)
INSERT [dbo].[chitietdondathang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'300001', N'400001', 1, 22290000, 3)
INSERT [dbo].[chitietdondathang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'300002', N'400003', 3, 10990000, 1)
INSERT [dbo].[chitietdondathang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'300003', N'400004', 9, 12490000, 1)
INSERT [dbo].[chitietdondathang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'300004', N'400002', 2, 27990000, 2)
INSERT [dbo].[chitietdondathang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'300005', N'2147483647', 10, 140000, 1)
INSERT [dbo].[dondathang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'120117003', CAST(N'2017-01-12 17:58:50.000' AS DateTime), 50000, N'44594a58-f330-4ccd-bfff-55c310466da0', 1)
INSERT [dbo].[dondathang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'2147483647', CAST(N'2017-01-11 17:05:01.000' AS DateTime), 140000, N'4fa010d1-6477-4976-8a21-a7002c4d8770', 2)
INSERT [dbo].[dondathang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'400001', CAST(N'2016-01-20 00:00:00.000' AS DateTime), 22290000, N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', 2)
INSERT [dbo].[dondathang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'400002', CAST(N'2016-02-13 00:00:00.000' AS DateTime), 27990000, N'd6bcc1b1-f44b-4e3f-b881-ae17c729e5aa', 1)
INSERT [dbo].[dondathang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'400003', CAST(N'2016-05-26 00:00:00.000' AS DateTime), 10990000, N'dae30562-c376-4b79-99a4-e80c79c40d6d', 3)
INSERT [dbo].[dondathang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'400004', CAST(N'2016-12-10 00:00:00.000' AS DateTime), 12490000, N'4fa010d1-6477-4976-8a21-a7002c4d8770', 2)
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (1, N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', 1, 9)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (2, N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', 1, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (3, N'662291f4-6bde-42a9-9b95-e5ca69ef4cf3', 2, 10)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (0, N'Hóa Mĩ Nhu', 0)
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (1, N'Áo', 0)
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (2, N'Quần', 0)
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (3, N'Áo Khoác', 0)
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (4, N'Mũ', 0)
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (5, N'Phụ Kiện', 0)
INSERT [dbo].[loaisanpham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (7, N'Giày dép', 0)
INSERT [dbo].[loaitaikhoan] ([MaLoaiTaiKhoan], [LoaiTaiKhoan]) VALUES (1, N'user')
INSERT [dbo].[loaitaikhoan] ([MaLoaiTaiKhoan], [LoaiTaiKhoan]) VALUES (2, N'admin')
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (0, N'Hương', N'logo9', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (1, N'Yellow', N'logo1', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (2, N'Gấu Xinh', N'logo2', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (3, N'Bé Xinh', N'logo3', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (4, N'Mẹ Ben', N'logo4', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (5, N'Hug n kiss', N'logo5', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (6, N'Chip Chip', N'logo6', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (7, N'Yumi', N'logo7', 0)
INSERT [dbo].[nhasanxuat] ([MaNhaSanXuat], [TenNhaSanXuat], [LoGoURL], [BiXoa]) VALUES (8, N'nhu', N'logo8', 0)
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (1, N'Giày búp bê hồng công chúa', N'<p><span style="color:#16a085"><strong>- Sản phẩm c&oacute; độ bền cao\n- Chất liệu cao cấp.\n- Kiểu d&aacute;ng đơn giản nhưng kh&ocirc;ng k&eacute;m phầm sang trọng.\n- Đường may tỉ mỉ.</strong></span></p>
', N'Quảng Châu - TQ', 2, 90000, CAST(N'2016-12-08 00:00:00.000' AS DateTime), NULL, NULL, 7, 30, N'1.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (2, N'Đầm hoha trắng nơ xanh', N'<p><span style="color:#e74c3c"><strong>- Chất liệu thun cotton 4 chiều mềm mịn\n- Đường may sắc sảo\n- M&agrave;u sắc tươi s&aacute;ng như h&igrave;nh rất dễ phối &aacute;o\nSize cho b&eacute; từ 8-25kg\nsize 1 cho b&eacute; 8-10kg, moi size cach nhau 2kg \n</strong></span></p>
', N'Quảng Châu - TQ', 2, 190000, CAST(N'2016-12-08 00:00:00.000' AS DateTime), NULL, NULL, 1, 36, N'hola.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (3, N'Vòng tay', N'Vòng tay 2 chuông dành cho bé, được làm từ chất liệu bạc ta 925 có tác dụng tránh gió rất tốt cho các bé, bạn có thể đeo vào chân hoặc tay cho bé đều được.', N'Thái Lan', 3, 50000, CAST(N'2016-12-13 00:00:00.000' AS DateTime), 7, 14, 5, 34, N'vongtay.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (4, N'Áo thun màu(hồng,trắng,đen)\n', N'Kiểu dáng thời trang, phù hợp nhiều lứa tuổi.\nChất liệu cotton thoáng mát, phù hợp với làn da trẻ', N'Quảng Châu - TQ', 4, 80000, CAST(N'2016-12-12 00:00:00.000' AS DateTime), 4, 11, 1, 35, N'combo-2-ao-thun-xuat-khau-cho-be-9a2277.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (5, N'Áo thun màu(hồng,trắng,đen)', N'Kiểu dáng thời trang, phù hợp nhiều lứa tuổi.\r\nChất liệu cotton thoáng mát, phù hợp với làn da trẻ', N'Hàn Quốc', 2, 80000, CAST(N'2016-12-11 00:00:00.000' AS DateTime), 3, 10, 1, 27, N'ao-thun-co-tim-cho-be-gai_3105.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (6, N'Quần Jean 0516', N'Quần giả jean.\nCo giản được\nchất liệu cao cấp.\n', N'Quảng Châu - TQ', 1, 290000, CAST(N'2016-12-21 00:00:00.000' AS DateTime), 7, 14, 2, 22, N'quan1.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (7, N'Quần Hoa', N'Vải mềm mỏng \nKhông gây khó chịu cho da bé\nThời Trang\n', N'Quảng Châu - TQ', 6, 119000, CAST(N'2016-12-27 00:00:00.000' AS DateTime), 3, 4, 2, 33, N'quanhoa.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (8, N'Xe đỏ', N'Nhóc quậy nhà bạn đã có đồ chơi này chưa ? Mẫu điều khiển đơn giản với chỉ 2 thao tác tiến và lùi giúp bé làm quen với trò chơi điều khiển trước khi được bố mẹ mua cho các mẫu đắt tiền hơn.\nTha hồ nghịch thoải mái, phá thoải mái nhé.... Vì sản phẩm giá quá rẻ :D', N'Viet Nam', 5, 69000, CAST(N'2016-12-29 00:00:00.000' AS DateTime), 8, 14, 1, 44, N'xe1.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (9, N'Nón Dâu', N'Nón mềm mại nhiều màu sắc phù hợp cho các bé đi chơi .', N'Quảng Châu - TQ', 7, 49000, CAST(N'2016-12-12 00:00:00.000' AS DateTime), 4, 16, 1, 40, N'nondau1.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (10, N'Nón Gấu', N'Mau sắc tươi tắn \nMềm mại khi mang', N'Viet Nam', 1, 140000, CAST(N'2016-12-27 00:00:00.000' AS DateTime), 4, 16, 1, 40, N'ao-thun-co-tim-cho-be-gai_3105.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (11, N'Búp bê', N'Búp bê cảm ứng biết bay là đồ chơi vô cùng tiện dụng, giúp bé phát huy hết tư duy sáng tạo của mình, biến những điều bé nhìn thấy trong cổ tích thành hiện thực', N'Viet Nam', 5, 290000, CAST(N'2016-12-18 00:00:00.000' AS DateTime), 8, 8, 1, 27, N'bupbe1.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (12, N'Áo Thun Tay Dài', N'Cho mùa mưa ấm êm, xin giới thiệu mọi người những mẫu đồ bộ dài tay cực xinh. Chất cotton thun cực mịn, 1 số mẫu hình đắp nổi cực xinh, màu tươi lắm nhé=)', N'Thai Lan', 3, 300000, CAST(N'2016-12-26 00:00:00.000' AS DateTime), 1, 9, 1, 32, N'ao3.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (13, N'Áo khoác em bé nón gấu ', N'Áo khoác em bé nón hàng nhập! \nChất liệu: chất đẹp\nMàu sắc:0  màu y hình\nFree size', N'Viet Nam', 4, 420000, CAST(N'2016-12-24 00:00:00.000' AS DateTime), 3, 12, 1, 23, N'aokhac9.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (14, N'Áo Khoác GAP', N'Chất liệu nỉ \nSize bé từ 2 đế 4 tuổi\náo khoác em bé', N'Quảng Châu - TQ', 3, 199000, CAST(N'2016-12-26 00:00:00.000' AS DateTime), 3, 16, 3, 37, N'ao3.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (15, N'Áo khoác người nhện', N'Ch?t thun da cá m?m m?i, in chuy?n nhi?t không tróc, ch?t d?p.', N'Quảng Châu - TQ', 2, 232000, CAST(N'2016-12-25 00:00:00.000' AS DateTime), 3, 19, 3, 38, N'aokhoac6.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (16, N'Áo dài đỏ', N'Size 1: 8 - 10kg\r\nSize 2: 9 - 12kg\r\nSize 3: 11 - 14kg\r\nSize 4: 13 - 16kg\r\nSize 5: 16 - 19kg\r\nSize 6: 18 - 22kg\r\n', N'Quảng Châu - TQ', 6, 179000, CAST(N'2016-12-14 00:00:00.000' AS DateTime), 1, 9, 3, 26, N'aokhoac1.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (17, N'ecfr', N'qắdfrefg', N'vn', 2, 1234566, CAST(N'2017-01-11 12:12:41.000' AS DateTime), 0, 12, 3, 0, N'aokhoac2.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (1026, N'Aaaaaaa', N'<p><span style="color:#2ecc71">aaaaaaaaaaaaaa</span></p>
', N'aaaa', 1, NULL, NULL, NULL, NULL, 1, NULL, N'dd4bbe9b-21f3-40a2-ae9e-05fb9ca868c3.jpg', NULL)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (1027, N'jjjj', N'<p><span style="font-size:26px"><strong><span style="color:#2ecc71">khkhkh</span></strong></span></p>
', N'111', 1, 44, NULL, NULL, NULL, 1, NULL, N'8c49803c-1f28-4c7a-9257-5f70cb47a999.jpg', NULL)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (2021, N'hh', N'<p><span style="color:#9b59b6">hhhh<strong>ggggggbvbvvvv &nbsp;&nbsp;<span style="font-size:24px">nnnnnn</span></strong></span></p>
', N'5', 1, 1555555, NULL, NULL, NULL, 1, NULL, N'7838c8e4-4c5b-4a1b-af3c-8d067dad94e3.jpg', NULL)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (3025, N'aaaa', N'fsd', N'dfsdfs', 0, 54665465, NULL, NULL, NULL, 0, 0, N'e862ed27-1f17-445d-b632-a8bf1ff44d47.jpg', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (4021, N'Áo jka', N'<h3 style="color:#aaaaaa;font-style:italic;"><strong>Đẹp đẽ qu&yacute; ph&aacute;i thanh lịch</strong></h3>

<p><strong>Chu oa chu oa chu oa</strong></p>
', N'Đài Loan', 8, 69000, NULL, 0, NULL, 0, 0, N'1c8306db-e51a-4def-98f9-2ec430e15734.jpg', 0)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (1, N'Nhu', N'123456', N'Hồ Hoàng Nhu', CAST(N'1996-12-02' AS Date), 0, 2, N'H? Chí Minh')
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (2, N'admin', N'123456', N'Lê Thị Đi', CAST(N'1996-05-03' AS Date), 0, 2, N'H? Chí Minh')
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (3, N'HuongPham', N'123456', N'Phô Mai Que', CAST(N'1996-03-26' AS Date), 0, 1, N'C?n Gi?')
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (4, N'ThamVo', N'123456', N'Thắm Khổ Qua', CAST(N'1996-09-23' AS Date), 0, 1, N'Hooc Môn')
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (5, N'LoLo', N'123456', N'Lộ Lộ', CAST(N'1996-01-06' AS Date), 0, 1, N'H? Chí Minh')
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (6, N'Cam', N'123456', N'Thị Cám', CAST(N'1994-03-05' AS Date), 0, 1, N'H? Chí Minh')
INSERT [dbo].[trangthai] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Ð?t hàng')
INSERT [dbo].[trangthai] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Ðang giao hàng')
INSERT [dbo].[trangthai] ([MaTinhTrang], [TenTinhTrang]) VALUES (3, N'Thanh toán')
INSERT [dbo].[trangthai] ([MaTinhTrang], [TenTinhTrang]) VALUES (4, N'H?y')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/19/2017 9:10:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/19/2017 9:10:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/19/2017 9:10:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/19/2017 9:10:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/19/2017 9:10:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/19/2017 9:10:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[sanpham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_sanpham]
GO
ALTER TABLE [dbo].[chitietdondathang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdondathang_dondathang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[dondathang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[chitietdondathang] CHECK CONSTRAINT [FK_chitietdondathang_dondathang]
GO
ALTER TABLE [dbo].[chitietdondathang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdondathang_sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[sanpham] ([MaSanPham])
GO
ALTER TABLE [dbo].[chitietdondathang] CHECK CONSTRAINT [FK_chitietdondathang_sanpham]
GO
ALTER TABLE [dbo].[dondathang]  WITH CHECK ADD  CONSTRAINT [FK_dondathang_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[dondathang] CHECK CONSTRAINT [FK_dondathang_AspNetUsers]
GO
ALTER TABLE [dbo].[dondathang]  WITH CHECK ADD  CONSTRAINT [FK_dondathang_trangthai] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[trangthai] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[dondathang] CHECK CONSTRAINT [FK_dondathang_trangthai]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisanpham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[loaisanpham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisanpham]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_nhasanxuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[nhasanxuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_nhasanxuat]
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD  CONSTRAINT [FK_taikhoan_loaitaikhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[loaitaikhoan] ([MaLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[taikhoan] CHECK CONSTRAINT [FK_taikhoan_loaitaikhoan]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GioHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sanpham"
            Begin Extent = 
               Top = 39
               Left = 519
               Bottom = 169
               Right = 697
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
USE [master]
GO
ALTER DATABASE [babyshop4] SET  READ_WRITE 
GO
