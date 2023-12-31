USE [master]
GO
/****** Object:  Database [ASM_Nhom4]    Script Date: 9/1/2023 2:08:17 PM ******/
CREATE DATABASE [ASM_Nhom4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASM_Nhom4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASM_Nhom4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASM_Nhom4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASM_Nhom4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASM_Nhom4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM_Nhom4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM_Nhom4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ASM_Nhom4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM_Nhom4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM_Nhom4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASM_Nhom4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM_Nhom4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASM_Nhom4] SET  MULTI_USER 
GO
ALTER DATABASE [ASM_Nhom4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM_Nhom4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM_Nhom4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM_Nhom4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM_Nhom4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM_Nhom4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ASM_Nhom4] SET QUERY_STORE = OFF
GO
USE [ASM_Nhom4]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [nvarchar](30) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetails]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetails](
	[order_details_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [nvarchar](30) NULL,
	[color] [nvarchar](30) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[order_date] [date] NULL,
	[total] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productdetail]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productdetail](
	[Productdetail_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [nvarchar](30) NULL,
	[PD_quantity] [int] NULL,
	[color] [nvarchar](30) NOT NULL,
	[image] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [nvarchar](30) NOT NULL,
	[category_id] [nvarchar](30) NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[price] [bigint] NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[email] [nvarchar](100) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[role] [bit] NULL,
	[activated] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verifyaccounts]    Script Date: 9/1/2023 2:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verifyaccounts](
	[idverify] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[Verifycode] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[idverify] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (N'CT001', N'Ford')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (N'CT002', N'Mercedes')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (N'CT003', N'Kia')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (N'CT004', N'Toyota')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (N'CT005', N'BMW')
GO
SET IDENTITY_INSERT [dbo].[Orderdetails] ON 

INSERT [dbo].[Orderdetails] ([order_details_id], [order_id], [product_id], [color], [quantity]) VALUES (1, 1, N'SC001', N'Đen', 2)
INSERT [dbo].[Orderdetails] ([order_details_id], [order_id], [product_id], [color], [quantity]) VALUES (2, 2, N'SC001', N'Đen', 1)
INSERT [dbo].[Orderdetails] ([order_details_id], [order_id], [product_id], [color], [quantity]) VALUES (3, 3, N'SC001', N'Đỏ Cam', 7)
INSERT [dbo].[Orderdetails] ([order_details_id], [order_id], [product_id], [color], [quantity]) VALUES (4, 3, N'SC001', N'Đen', 1)
INSERT [dbo].[Orderdetails] ([order_details_id], [order_id], [product_id], [color], [quantity]) VALUES (5, 3, N'SC003', N'Vàng', 1)
INSERT [dbo].[Orderdetails] ([order_details_id], [order_id], [product_id], [color], [quantity]) VALUES (6, 4, N'SC002', N'Trắng', 1)
SET IDENTITY_INSERT [dbo].[Orderdetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [email], [order_date], [total]) VALUES (1, N'hothuan20112003@gmail.com', CAST(N'2023-06-14' AS Date), 1338000000)
INSERT [dbo].[Orders] ([order_id], [email], [order_date], [total]) VALUES (2, N'tuan268493@gmail.com', CAST(N'2023-06-14' AS Date), 669000000)
INSERT [dbo].[Orders] ([order_id], [email], [order_date], [total]) VALUES (3, N'hothuan20112003@gmail.com', CAST(N'2023-06-14' AS Date), 6851000000)
INSERT [dbo].[Orders] ([order_id], [email], [order_date], [total]) VALUES (4, N'hothuan20112003@gmail.com', CAST(N'2023-06-14' AS Date), 1468000000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Productdetail] ON 

INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (1, N'SC001', 4, N'Đen', N'https://drive.gianhangvn.com/image/rl9trpm-2202356j31644.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (2, N'SC001', 4, N'Đỏ Cam', N'https://drive.gianhangvn.com/image/281zrpk-2202354j31644.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (3, N'SC002', 4, N'Trắng', N'https://showroomford.vn/wp-content/uploads/2019/09/b-c-yDKuM1r2Pr-711x400.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (4, N'SC002', 4, N'Đen', N'https://showroomford.vn/wp-content/uploads/2019/09/en-6e5lUleBsY-711x400.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (5, N'SC003', 4, N'Vàng', N'https://fordsg.com.vn/wp-content/uploads/au-wildtrak-coloriser-luxe-yellow-1.webp')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (6, N'SC003', 4, N'Xám', N'https://fordsg.com.vn/wp-content/uploads/au-wildtrak-coloriser-aluminium-1.webp')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (7, N'SC004', 4, N'Đỏ Đô', N'https://phumyford.vn/files/800x/ranger-m-u--njzPMat9I6.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (8, N'SC004', 4, N'Xanh Dương', N'https://phumyford.vn/files/800x/ranger-m-u-xanh-rL6IJwRIyl.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (9, N'SC005', 4, N'Đỏ', N'https://thanglongford.com.vn/wp-content/uploads/2020/05/910x590-21_frd_epr_ltd_rprd_ps34_1HC_VN.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (10, N'SC005', 4, N'Đen', N'https://thanglongford.com.vn/wp-content/uploads/2020/05/910x590-21_frd_epr_ltd_agbl_ps34_1HC_VN.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (11, N'SC006', 5, N'Đen', N'https://mercedes-hcm.com/wp-content/uploads/2019/08/Mercedes-Maybach-S560-2019-3.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (12, N'SC006', 5, N'Trắng', N'https://mercedes-hcm.com/wp-content/uploads/2019/08/Mercedes-Maybach-S560-2019-5.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (13, N'SC007', 5, N'Đen', N'https://assets.oneweb.mercedes-benz.com/iris/iris.jpg?COSY-EU-100-1713d0VXqrWFqtyO67PobzIr3eWsrrCsdRRzwQZUZpZbMw3SGtGyMtsdAv3cUf5rcXGE5YrJbXSqxVKnn8wPbIoTnlR4M6ouvrTg9U1n6PDAGoSeWf%25MtsdE1tcUflwfXGE2hEJ0lp%25fOB2u5EbAp3CoI5uE5ZQC3lXFkzN25bm7jpv3hKV0cM%25vqrUdyLRnb6YaxoTWrH1MVtn8wBocoiZCkNM4FzRRTg9itZ6PD4%25DSeWgnRtsdPyDcUfeT6XGEsFmJ0lh4VOB2ZnnbApFrpI5ubvxQC3IAOkzN7mum7jDcfhKVjbQ%25vqYUTyLR3tmYaBEUVmMDZfrEQ5fA3JxXr1RjiiF2MpwQ1pnIu2fzfXRXPq0Agjeq89iph1p&imgt=P27&bkgnd=9&pov=BE140&uni=cs&im=Crop,rect=(0,0,1450,750),gravity=Center;Resize,width=300')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (14, N'SC007', 5, N'Trắng', N'https://www.mercedes-benz.com.vn/vi/passengercars/mercedes-benz-cars/models/g-class/g-class-suv/facts-and-lines/model-comparison/_jcr_content/par/productinfotabnav_2f/tabnav/productinfotabnavite/tabnavitem/productinfotextimage/media2/slides/videoimageslide_434e/image.MQ6.12.20180814152812.jpeg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (15, N'SC008', 5, N'Trắng', N'https://assets.oneweb.mercedes-benz.com/bbd/images/v1/4689/a/89/2ec734cdbf9055c4b20f24121be3454879f7b.png?im=Crop,rect=(70,35,460,260);Resize,width=300')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (16, N'SC008', 5, N'Đen', N'https://choxesaigon.com/wp-content/uploads/2019/04/V-Class-den.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (17, N'SC009', 5, N'Trắng', N'https://www.mercedes-benz.com.vn/vi/passengercars/mercedes-benz-cars/models/gle/coupe-c167/mercedes-amg/special-edition/_jcr_content/par/productinfotextimage/media2/slides/videoimageslide_783091297/image.MQ6.7.20220626054321.jpeg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (18, N'SC009', 5, N'Đen', N'https://www.mercedes-benz.com.vn/vi/passengercars/mercedes-benz-cars/models/gle/coupe-c167/mercedes-amg/special-edition/_jcr_content/par/productinfotextimage/media2/slides/videoimageslide/image.MQ6.7.20220626054321.jpeg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (19, N'SC010', 5, N'Xanh sám', N'https://kiavietnam.com.vn/storage/k5-xanhsam.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (20, N'SC010', 5, N'Đỏ', N'https://kiavietnam.com.vn/storage/k5-do.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (21, N'SC011', 5, N'Xanh nước', N'https://kiavietnam.com.vn/storage/sorento-pngicon.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (22, N'SC011', 5, N'Trắng', N'https://kiavietnam.com.vn/storage/sorento-glacia-white-pearl-7cho.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (23, N'SC012', 5, N'Xanh rêu', N'https://kiavietnam.com.vn/storage/kia-viet-nam/hinh-anh/suv-1.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (24, N'SC012', 5, N'Đen', N'https://kiavietnam.com.vn/storage/360/sportage/den/fsb-62.webp')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (25, N'SC013', 5, N'Cam', N'https://kiavietnam.com.vn/storage/kia-viet-nam/hinh-anh/suv-5.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (26, N'SC013', 5, N'Trắng sám', N'https://kiavietnam.com.vn/storage/360/sonet/vang-cat-noc-den/05-d.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (27, N'SC014', 5, N'Đen', N'https://ssa-api.toyotavn.com.vn//VehicleImgs/alphard/D1FCC90A81CD14798B722C7E61B6397A.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (28, N'SC014', 5, N'Trắng', N'https://ssa-api.toyotavn.com.vn/Resources/Images/25275CF3794F02BE7BBEAC0C29C1EF1C.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (29, N'SC015', 5, N'Đỏ', N'https://hantoyota.com.vn/wp-content/uploads/2021/12/Toyota-camry-2022-2-5-HV-Hybird-mau-do-noi-that-den-dai-ly-toyota-my-dinh.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (30, N'SC015', 5, N'Trắng', N'https://hantoyota.com.vn/wp-content/uploads/2021/12/Toyota-camry-2022-2-5-HV-Hybird-mau-trang-ngoc-trai-noi-that-den-dai-ly-toyota-my-dinh.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (31, N'SC016', 5, N'Xanh', N'https://ssa-api.toyotavn.com.vn//VehicleImgs/867B954C907BEB58F2B5F5A068A36B17.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (32, N'SC016', 5, N'Trắng', N'https://ssa-api.toyotavn.com.vn//VehicleImgs/4D01DEE886B17F3667E047AE0B1508D8.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (33, N'SC017', 5, N'Đen', N'https://ssa-api.toyotavn.com.vn//VehicleImgs/409F2F5BCEE10C1DF302541BC118DC5E.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (34, N'SC017', 5, N'Trắng', N'https://ssa-api.toyotavn.com.vn//VehicleImgs/4311B489533329511F91BB11290B7B39.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (35, N'SC018', 3, N'Xanh dương', N'https://www.bmwnhatrang.vn/wp-content/uploads/2020/04/C1M-Phytonic-Blue-min.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (36, N'SC018', 3, N'Đen', N'https://www.actualidadmotor.com/wp-content/uploads/2021/06/BMW-X3-2021-1-1024x614.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (37, N'SC019', 3, N'Trắng', N'https://thacoauto.vn/storage/bmw/lineup2022/x7-xdrive40i-m-sport.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (38, N'SC019', 3, N'Bạc', N'https://www.bmwnhatrang.vn/wp-content/uploads/2020/08/A96-Mineral-White-min.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (39, N'SC020', 3, N'Đen', N'https://autopro8.mediacdn.vn/2022/3/17/2023-bmw-7-series-renderings-1647529551170712624731.jpg')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (40, N'SC020', 3, N'Xám', N'https://fordsg.com.vn/wp-content/uploads/au-wildtrak-coloriser-aluminium-1.webp')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (41, N'SC021', 3, N'Đỏ Đô', N'https://www.bmwnhatrang.vn/wp-content/uploads/2022/09/4-series2000x1200.png')
INSERT [dbo].[Productdetail] ([Productdetail_id], [product_id], [PD_quantity], [color], [image]) VALUES (42, N'SC021', 3, N'Bạc', N'https://autopro8.mediacdn.vn/2021/12/13/autopro-bmw-4-series-gran-coupe-ve-viet-nam-3-163936598203716055588-crop-1639368181784545750180.jpg')
SET IDENTITY_INSERT [dbo].[Productdetail] OFF
GO
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC001', N'CT001', N'Ford Ranger XL 2.0L 4X4 MT', 669000000, N'https://www.ford.com.vn/content/dam/ecomm/Release-3/vn/models/xl/billbooard1.jpg.renditions.original.png', N' Ford Ranger hoàn toàn mới được biết đến như một chiếc xe đầy sức mạnh cùng với thiết kế mới bắt mắt, thu hút mọi ánh nhìn.Một chiếc xe sản xuất cho toàn cầu phải vận hành tốt ở bất kì điều kiện khu vực nào.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC002', N'CT001', N'Ford Everest Titanium 2.0L AT 4x4', 1468000000, N'https://www.ford.com.vn/content/dam/ecomm/u704/release-3/vn/models/titanium/carousel-banner-1.jpg.renditions.original.png', N' Ford Ranger hoàn toàn mới được biết đến như một chiếc xe đầy sức mạnh cùng với thiết kế mới bắt mắt, thu hút mọi ánh nhìn. Một chiếc xe sản xuất cho toàn cầu phải vận hành tốt ở bất kì điều kiện khu vực nào.Động cơ của Ford Ranger hoàn toàn mới đã được chứng minh về khả năng vận hành trong các điều kiện khắc nghiệt, từ 400 mét dưới mực nước biển lên đến 4.500 mét trên mực nước biển, và chịu nhiệt độ từ -40oC đến + 50oC. Khi nói đến công suất và mức tiêu hao nhiên liệu, Ford Ranger hoàn toàn mới có thể xếp đầu bảng.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC003', N'CT001', N'Ford Everest Wildtrak 2.0L AT 4x4', 1499000000, N'https://www.ford.com.vn/content/dam/ecomm/u704/release-3/vn/models/wildtrak/vn-everest-wildtrak-banner-1.jpg.renditions.original.png', N' Ford Ranger hoàn toàn mới được biết đến như một chiếc xe đầy sức mạnh cùng với thiết kế mới bắt mắt, thu hút mọi ánh nhìn. Một chiếc xe sản xuất cho toàn cầu phải vận hành tốt ở bất kì điều kiện khu vực nào. Động cơ của Ford Ranger hoàn toàn mới đã được chứng minh về khả năng vận hành trong các điều kiện khắc nghiệt, từ 400 mét dưới mực nước biển lên đến 4.500 mét trên mực nước biển, và chịu nhiệt độ từ -40oC đến + 50oC. Khi nói đến công suất và mức tiêu hao nhiên liệu, Ford Ranger hoàn toàn mới có thể xếp đầu bảng.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC004', N'CT001', N'Ford Ranger XLS 2.0L 4X2 AT', 707000000, N'https://www.ford.com.vn/content/dam/ecomm/Release-3/vn/models/xls/vn-xls-billboard-carousel-1.jpg.renditions.original.png', N' Ford Ranger hoàn toàn mới được biết đến như một chiếc xe đầy sức mạnh cùng với thiết kế mới bắt mắt, thu hút mọi ánh nhìn. Một chiếc xe sản xuất cho toàn cầu phải vận hành tốt ở bất kì điều kiện khu vực nào.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC005', N'CT001', N'Ford Limited 2.3 Ecoboost AT 4WD', 2439000000, N'https://www.ford.com.vn/content/ford/vn/vi_vn/site-wide-content/billboard-carousels/limited-carousel/jcr:content/par/billboard/imageComponent/image.imgs.full.high.jpg', N'Ford Ranger hoàn toàn mới được biết đến như một chiếc xe đầy sức mạnh cùng với thiết kế mới bắt mắt, thu hút mọi ánh nhìn. Một chiếc xe sản xuất cho toàn cầu phải vận hành tốt ở bất kì điều kiện khu vực nào.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC006', N'CT002', N'Mercedes-Maybach S-Class Sedan', 8199000000, N'https://assets.oneweb.mercedes-benz.com/iris/iris.jpg?COSY-EU-100-1713d0VXqbSeqtyO67PobzIr3eWsrrCsdRRzwQZhkHZbMw3SGtGyMtsd2vtcUfpLfXGEuiXJ0l34AOB2NQnbApjtwI5uVczQC3qkOkzNRLkm7jxafhKVFSQ%25vq9tayLRDcVYaxWaqrH1dBtn8wfAyoiZLbXM4FaIrTg9HQe6PD8P6SeWiaMtsd4HDcUfg8yXGEPbXJ0leIZOB2sQnbApUTyI5uG6JQC30SQkzNHTnm7j8yZhKViYh%25vq4uTyLRg3mYaxPrhrH1enun8wY8WoiZrMlM4FAIcTg95zp6PDCLNSeWzn3tsd8hTcUfiUkXGE4bjJ0lgolOB2PWEbApetpI5usc2QC3UkrkzNGmbm7j0hShKVBHM%25vqA8jyLRjcHYaxVXprH1qM%25n8wPO2oiZeIQM6oY2ul0kkzNL6Sm%25kFpKhymWBM%25vqBBjyLR0GWYaxv0SrH1LIrn8wiO3oiZ4iZM4FgCuTg9Pv36PKNCZnX2f3SNsQ3BxNDkSW9wUUEVXqdYWqtyRV3H3k9kBF7v0wAFslUqoWq&imgt=P27&bkgnd=9&pov=BE040&uni=cs&im=Crop,rect=(0,0,1450,750),gravity=Center;Resize,width=400', N'Hoàn mỹ trong việc lựa chọn chất liệu đến sự tinh tế của từng đường chỉ may tương phản đầy ấn tượng, Mercedes-Maybach S-Class mới tái thiết chuẩn mực sang trọng. Trợ lý cá nhân MBUX với những công nghệ ưu việt đánh dấu khởi nguyên của một trải nghiệm lái xe bậc nhất.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC007', N'CT002', N'Mercedes G-Class SUV', 11750000000, N'https://assets.oneweb.mercedes-benz.com/iris/iris.jpg?COSY-EU-100-1713d0VXqrWFqtyO67PobzIr3eWsrrCsdRRzwQZUZpZbMw3SGtGyMtsdAv3cUf5rcXGE5YrJbXSqxVKnn8wPbIoTnlR4M6ouvrTg9U1n6PDAGoSeWf%25MtsdE1tcUflwfXGE2hEJ0lp%25fOB2u5EbAp3CoI5uE5ZQC3lXFkzN25bm7jpv3hKV0cM%25vqrUdyLRnb6YaxoTWrH1MVtn8wBocoiZCkNM4FzRRTg9itZ6PD4%25DSeWgnRtsdPyDcUfeT6XGEsFmJ0lh4VOB2ZnnbApFrpI5ubvxQC3IAOkzN7mum7jDcfhKVjbQ%25vqYUTyLR3tmYaBEUVmMDZfrEQ5fA3JxXr1RjiiF2MpwQ1pnIu2fzfXRXPq0Agjeq89iph1p&imgt=P27&bkgnd=9&pov=BE140&uni=cs&im=Crop,rect=(0,0,1450,750),gravity=Center;Resize,width=300', N'Thiết kế ngoại thất ấn tượng khiến ai cũng phải trầm trồ từ cái nhìn đầu tiên. Lưới tản nhiệt đặc trưng AMG, bánh xe 20-inch cũng như hệ thống xả khí hiệu suất AMG nổi bật với hai ống xả kép mạ crôm phía bên hông, tất cả mang đến một vẻ ngoài hướng ngoại đáng ngưỡng mộ. Dù là nham thạch hay nhựa đường, Mercedes-AMG G 63 đều dễ dàng lướt êm. Với hiệu suất chuẩn mực, trên đường địa hình, chiếc xe này không có đối thủ. Với đặc tính vận hành vượt trội, kể cả trong thành phố, gã khổng lồ off-road này cũng dễ dàng ghi dấu ấn. Tất cả tạo nên vị vua của dòng xe địa hình: một biểu tượng trên đường phố nội ô.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC008', N'CT002', N'Mercedes V-Class Van', 3039000000, N'https://assets.oneweb.mercedes-benz.com/bbd/images/v1/4689/a/89/2ec734cdbf9055c4b20f24121be3454879f7b.png?im=Crop,rect=(70,35,460,260);Resize,width=300', N'Thiết kế nội thất rộng rãi và linh hoạt biến Mercedes-Benz V-Class trở thành một chiếc MPV tiện nghi với vô số tùy chọn. Sự thoải mái tuyệt vời mà bạn sẽ cảm nhận bên trong V-class là nhờ vào những tính toán kĩ càng về công thái học, mang đến trải nghiệm thoải mái tối đa.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC009', N'CT002', N'Mercedes GLE Coupé', 4919000000, N'https://assets.oneweb.mercedes-benz.com/iris/iris.jpg?COSY-EU-100-1713d0VXqrEFqtyO67PobzIr3eWsrrCsdRRzwQZg9pZbMw3SGtGyItsd2HVcUfpO6XGEubYJ0l36xOB2sr%25bApUAbI5uGQMQC3aM1kzNHTnm7j8hohKVi%25E%25vqmUjyLRhnmYaxU0drH1Gm%25n8w7OcoiZKiEM4FvSlTg9Lte6PDarsSeWHthtsd8B3cUfD%25kXGE5YrJbXSqxVKnn8wPbIoTnlR4M6oeIlTg9vx96PDK1RSeWgeRtsdPvQcUfeFfXGE1zrJ0lBYrOB2A85bAp5tlI5uCQ2QCPFi2J%25xVZkFPsgGvx3MkNulKKqD%25WjcNWmtdDZGZMuMapgeLlHp7RKWONW&imgt=P27&bkgnd=9&pov=BE140&uni=cs&im=Crop,rect=(0,0,1450,750),gravity=Center;Resize,width=300', N'Nội thất của GLS Coupé đã có nhiều điểm nổi bật từ các trang bị tiêu chuẩn, chẳng hạn như hệ thống đa phương tiện MBUX và tay lái thể thao đa năng. Nhiều loại bọc đệm, các chi tiết trang trí và các dòng trang bị EXCLUSIVE hoặc AMG Line có sẵn để tiện cá nhân hóa.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC010', N'CT003', N'Kia K5', 859000000, N'https://kiavietnam.com.vn/storage/k5-xanhsam.png', N'KIA K5 – là mẫu xe Sedan “Fastback” thể thao thế hệ mới trong nhóm K series, thay đổi toàn diện với đường nét thiết kế của tương lai đậm chất thể thao, sang trọng; trang bị tiện nghi hiện đại và hệ thống an toàn tiên tiến nhất.​')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC011', N'CT003', N'Sorento', 1069000000, N'https://kiavietnam.com.vn/storage/sorento-pngicon.png', N'Kia Sorento Mẫu xe SUV được đổi mới toàn diện về thiết kế và công nghệ thuộc thế hệ sản phẩm mới nhất của thương hiệu KIA.​')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC012', N'CT003', N'Sportage', 859000000, N'https://kiavietnam.com.vn/storage/kia-viet-nam/hinh-anh/suv-1.png', N'Kia Sportage Mẫu xe ứng dụng thành tố Bold for Nature – Đậm Chất Tự Nhiên trong triết lý thiết kế mới. Lấy cảm hứng từ thiên nhiên và cuộc sống đương đại, Kia Sportage được nhấn mạnh bằng những đường nét táo bạo và dứt khoát, tạo nên một diện mạo đầy mạnh mẽ, hiện đại và ấn tượng.​')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC013', N'CT003', N'Sonet', 859000000, N'https://kiavietnam.com.vn/storage/kia-viet-nam/hinh-anh/suv-5.png', N'KIA SONET Sở hữu kích thước tối ưu, không gian bên trong rộng rãi; kiểu dáng cá tính, thể thao; vận hành linh hoạt, an toàn và hiệu quả kinh tế, Kia Sonet “thổi” một làn gió mới cho phân khúc SUV, hứa hẹn mang lại thành công về doanh số, góp phần khẳng định vị thế, khởi đầu kỷ nguyên mới cho thương hiệu KIA.​')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC014', N'CT004', N'Toyota Alphard LUXURY', 4370000000, N'https://ssa-api.toyotavn.com.vn/Resources/Images/25275CF3794F02BE7BBEAC0C29C1EF1C.png', N'Toyota Alphard 2021 nhập khẩu chính hãng với giá hơn 4 tỷ đồng. Mẫu xe MPV Toyota Alphard 2021 vừa chính thức được đặt chân về thị trường Việt Nam sau một thời gian dài bị sức ép của Nghị định 116/2017/NĐ-CP về việc nhập khẩu ô tô nước ngoài vào Việt Nam. Hiện đây là mẫu xe MPV nắm giữ giá bán cao nhất của hãng xe Nhật tính đến thời điểm hiện tại và ghi danh vào hạng mục “chuyên cơ mặt đất” theo giới mê xe đánh giá.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC015', N'CT004', N'Toyota CAMRY 2.5HV', 1495000000, N'https://hantoyota.com.vn/wp-content/uploads/2021/12/Toyota-camry-2022-2-5-HV-Hybird-mau-trang-ngoc-trai-noi-that-den-dai-ly-toyota-my-dinh.png', N'Toyota Camry thế hệ mới nhất, sau đó được giới thiệu tại một số nước Đông Nam Á như tại Singapore, Thái Lan, Malaysia vào thời gian cuối năm ngoái. Có thể thấy phiên bản TOYOTA CAMRY HYBRID 2.5HV khoác lên một diện mạo mới, có sự thay đổi hoàn toàn so với thế hệ cũ. Thiết kế mặt ca-lăng mới, trang bị cụm đèn pha đã được thiết kế lại, sử dụng bóng LED, có đèn LED chạy ban ngày. TOYOTA CAMRY HYBRID 2.5HV được thiết kế bắt mắt với các dải năng lượng xanh. Đặc biệt, xe trang bị hệ thống an toàn Toyota Safety Sence (TTS) với rada đặt trong logo đầu xe.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC016', N'CT004', N'Toyota COROLLA ALTIS ', 765000000, N'https://ssa-api.toyotavn.com.vn//VehicleImgs/867B954C907BEB58F2B5F5A068A36B17.png', N'TOYOTA COROLLA ALTIS ra mắt lần đầu năm 1966 tại Nhật Bản. Qua nhiều lần cải tiến  với chất lượng vượt trội, kiểu dáng thu hút. Khả năng vận hành mạnh mẽ và tiết kiệm nhiên liệu cũng trở thành thương hiệu của dòng xe này. Ngoài ra, bản nâng cấp mới sở hữu ngoại hình hiện đại và khá nhiều nội thất. Toyota Mỹ Đình đang khuyến mại tiền mặt cùng phụ kiện cực khủng. TOYOTA ALTIS hiện được hưởng chính sách giảm 50% thuế trước bạ.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC017', N'CT004', N'Toyota FORTUNER', 1434000000, N'https://ssa-api.toyotavn.com.vn//VehicleImgs/409F2F5BCEE10C1DF302541BC118DC5E.png', N'TOYOTA FORTUNER thế hệ mới thay đổi hoàn toàn diện mạo bắt mắt, thể thao hơn. Tính năng vận hành an toàn và tiện nghi cũng được bổ sung thêm tăng tính cạnh tranh và chiếm trọn tình cảm của người dùng Việt Nam. Toyota Mỹ Đình đang khuyến mại tiền mặt cùng phụ kiện cực khủng. TOYOTA FORTUNER hiện được hưởng chính sách giảm 50% thuế trước bạ.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC018', N'CT005', N'BMW X3', 1659000000, N'https://www.bmwnhatrang.vn/wp-content/uploads/2020/04/C1M-Phytonic-Blue-min.png', N'BMW X3 chính là tuyên ngôn về cuộc sống không giới hạn, là hiện thân của cái tôi và sự tự do tuyệt đối. Ngay từ cái nhìn đầu tiên, chiếc xe đã gây ấn tượng với diện mạo thể thao và gây mê hoặc với trải nghiệm lái đầy phấn khích. Nhờ chế độ lái bán tự động và hệ thống truyền động bốn bánh thông minh BMW xDrive, chiếc xe mang lại cho người điều khiển cảm giác cực kỳ thoải mái trong mọi điều kiện địa hình. Chính vì vậy, chiếc xe đã tái định nghĩa mọi tiêu chuẩn trong phân khúc và khẳng định một điều rõ ràng: đích đến có thể giống nhau nhưng trải nghiệm trên hành trình là cả sự khác biệt.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC019', N'CT005', N'BMW X7', 4189000000, N'https://www.bmwnhatrang.vn/wp-content/uploads/sites/32/2020/05/BMW-X7-2019-1600-0d.jpg', N'BMW X7 mới là sự kết hợp giữa kiểu dáng ấn tượng và cá tính nổi trội. Đối lập với vẻ ngoài hầm hố, BMW X7 mang lại ấn tượng về sự nhẹ nhàng và linh hoạt nhờ thiết kế lịch lãm và kiểu dáng thể thao. Đồng thời, không gian nội thất rộng rãi thoải mái cho phép kết hợp cả ba yếu tố độc đáo, tiện lợi và tự do – kết quả của sự kết hợp này chính là không gian thoải mái cho cả ba hàng ghế. Công năng mạnh mẽ. Phong cách lịch lãm.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC020', N'CT005', N'BMW 7 Series', 3899000000, N'https://www.bmwnhatrang.vn/wp-content/uploads/2020/08/A96-Mineral-White-min.png', N'BMW 7 Series được mệnh danh là chiếc sedan hạng siêu sang đáng để sở hữu nhất hiện nay. Giống như bất kỳ chiếc xe nào cùng phân khúc, 7 Series mới cũng được trang bị mọi mánh khóe từ thương hiệu sản sinh ra nó. Ngoài việc sở hữu nội thất rộng rãi, vật liệu chất lượng hàng đầu, 7 Series còn gây chú ý nhờ một loạt tính năng công nghệ tiên tiến và hệ thống truyền động với sức mạnh to lớn.')
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [price], [image], [description]) VALUES (N'SC021', N'CT005', N'BMW 4 Series Gran Coupes', 2929000000, N'https://www.bmwnhatrang.vn/wp-content/uploads/2022/09/4-series2000x1200.png', N'Thiết kế tinh xảo, khả năng xử lý tối ưu và nhiều không gian để sử dụng hàng ngày: BMW 4 Series Gran Coupé mới truyền cảm hứng suốt đường dài. Với sự thoải mái tối đa khi lái xe và nhiều không gian rộng rãi, năm ghế ngồi đủ cỡ và khoang hành lý, chiếc Gran Coupé năm cửa tinh tế này là bạn đồng hành lý tưởng cho mỗi cuộc hành trình.')
GO
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'antc@gmail.com', N'Antc', N'123456', 1, 1)
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'hieutt@gmail.com', N'hieutt', N'123456', 1, 1)
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'hothuan20112003@gmail.com', N'thuanhm', N'123456', 1, 1)
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'thainq@gmail.com', N'thainq', N'123456', 1, 1)
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'tuan268493@gmail.com', N'tuanlm', N'123456', 0, 1)
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'tuanlm@gmail.com', N'tuanlm', N'123456', 1, 1)
INSERT [dbo].[Users] ([email], [username], [password], [role], [activated]) VALUES (N'vynt@gmail.com', N'vynt', N'123456', 1, 1)
GO
ALTER TABLE [dbo].[Orderdetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Orderdetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[Productdetail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Verifyaccounts]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Users] ([email])
GO
USE [master]
GO
ALTER DATABASE [ASM_Nhom4] SET  READ_WRITE 
GO
