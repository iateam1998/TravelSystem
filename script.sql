USE [master]
GO
/****** Object:  Database [TravelDB]    Script Date: 4/6/2019 3:57:50 PM ******/
CREATE DATABASE [TravelDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TravelDB.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TravelDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TravelDB_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TravelDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TravelDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TravelDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TravelDB] SET  MULTI_USER 
GO
ALTER DATABASE [TravelDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TravelDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TravelDB]
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[AdminID] [nvarchar](50) NOT NULL,
	[AdminPassword] [varchar](500) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](13) NOT NULL,
	[Sex] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Birthday] [date] NULL,
 CONSTRAINT [PK_tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Booking]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[TotalMoney] [float] NULL,
	[DateCreate] [datetime] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[isDelete] [bit] NOT NULL,
	[NumOfKid] [int] NULL,
	[NumOfAdult] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,
	[Phone] [varchar](13) NULL,
	[Address] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[TourID] [varchar](50) NOT NULL,
	[NumOfBaby] [int] NULL,
	[Birthday] [datetime] NULL,
	[Email] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_City]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_City](
	[CityID] [int] NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[CityLocation] [nvarchar](50) NULL,
	[OtherDetails] [nvarchar](50) NULL,
	[isDelete] [bit] NOT NULL,
	[RegionID] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Convenient]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Convenient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Convenient] [nvarchar](100) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Convenient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ConvenientHotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ConvenientHotel](
	[HotelID] [int] NOT NULL,
	[ConvenientID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ConvenientHotel] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC,
	[ConvenientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Country]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Country](
	[CountryID] [char](3) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[Population] [int] NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[MainReligion] [nvarchar](50) NULL,
	[OtherDetails] [nvarchar](500) NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FeedBack]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FeedBack](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeedBackContent] [nvarchar](max) NOT NULL,
	[isDelete] [bit] NOT NULL,
	[ReplyTo] [int] NULL,
	[Username] [varchar](50) NULL,
	[TourID] [varchar](50) NOT NULL,
	[AdminID] [nvarchar](50) NULL,
	[DateCreate] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_FeedBack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Flight]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Flight](
	[ID] [varchar](100) NOT NULL,
	[DateGo] [datetime] NOT NULL,
	[DateBack] [datetime] NOT NULL,
	[CodeGo] [varchar](100) NOT NULL,
	[CodeBack] [varchar](100) NOT NULL,
	[DateGoArrival] [datetime] NOT NULL,
	[DateBackArrival] [datetime] NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Flight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Hotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Hotel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[RoomNumber] [int] NULL,
	[isHot] [bit] NULL,
	[Price] [float] NULL,
	[Rating] [int] NULL,
	[isDelete] [bit] NOT NULL,
	[CityID] [int] NOT NULL,
	[isParking] [bit] NULL,
	[isCredit] [bit] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Hotel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Image]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TourID] [varchar](50) NOT NULL,
	[Path] [varchar](100) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Image] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ImageHotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ImageHotel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HotelID] [int] NOT NULL,
	[Path] [varchar](50) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_ImageHotel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Metadata]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Metadata](
	[ID] [int] NOT NULL,
	[WebName] [nvarchar](100) NOT NULL,
	[Count] [int] NOT NULL,
	[Copyright] [nvarchar](max) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Metadata] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Office]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Office](
	[ID] [int] NOT NULL,
	[IsOfficeMain] [bit] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Fax] [varchar](50) NOT NULL,
	[Tel] [varchar](13) NOT NULL,
	[isDelete] [bit] NOT NULL,
	[CityID] [int] NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_Office] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Passenger]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Passenger](
	[PassengerID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Phone] [varchar](50) NULL,
	[isDelete] [bit] NOT NULL,
	[BookingID] [int] NOT NULL,
	[Type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_Passenger] PRIMARY KEY CLUSTERED 
(
	[PassengerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Region]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Region](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[isDelete] [bit] NOT NULL,
	[note] [nvarchar](max) NULL,
	[CountryID] [char](3) NOT NULL,
 CONSTRAINT [PK_tbl_Region] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Tour]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Tour](
	[ID] [varchar](50) NOT NULL,
	[TimeBegin] [datetime] NOT NULL,
	[TimeEnd] [datetime] NOT NULL,
	[PriceForKid] [float] NOT NULL,
	[PriceForBaby] [float] NOT NULL,
	[PriceForAdult] [float] NOT NULL,
	[Vehicle] [nvarchar](50) NULL,
	[TourGuideID] [int] NOT NULL,
	[SeatsRemaining] [int] NOT NULL,
	[TotalSeats] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsSale] [int] NULL,
	[TravelTypeID] [int] NOT NULL,
	[fromPlace] [int] NOT NULL,
	[isDelete] [bit] NOT NULL,
	[isHot] [bit] NULL,
	[rating] [int] NULL,
	[FlightID] [varchar](100) NULL,
	[GroupUpPlace] [nvarchar](100) NOT NULL,
	[GroupUpTime] [datetime] NOT NULL,
	[MeetingPlace] [nvarchar](100) NULL,
	[MeetingTime] [datetime] NULL,
	[Note] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbl_Tour] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TourDetail]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TourDetail](
	[ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[DateContent] [nvarchar](4000) NOT NULL,
	[isDelete] [bit] NOT NULL,
	[TourID] [varchar](50) NOT NULL,
	[CityID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_TourDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TourGuide]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TourGuide](
	[TourGuideID] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [varchar](13) NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_TourGuide] PRIMARY KEY CLUSTERED 
(
	[TourGuideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TourHotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TourHotel](
	[HotelID] [int] NOT NULL,
	[TourID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_TourHotel_1] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC,
	[TourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Travel_Type]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Travel_Type](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_User](
	[Username] [varchar](50) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Sex] [bit] NULL,
	[isDelete] [bit] NOT NULL,
	[Birthday] [date] NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminPassword], [FirstName], [LastName], [PhoneNumber], [Sex], [IsDelete], [Birthday]) VALUES (N'admin', N'$2b$10$TMsGZMLX5i8npWHdKLNT8u5ClEN/K3whXxFWALcbnr/pgVTOjJjqy', N'Linh', N'Nguyen', N'123', 1, 0, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminPassword], [FirstName], [LastName], [PhoneNumber], [Sex], [IsDelete], [Birthday]) VALUES (N'khanh', N'$2b$10$xxoVQmIiHQ/QzIFQdvPLFuNntWNnMlWZX41rLOBB8dCknYaLm.2me', N'Cho', N'Khanh', N'213', 1, 1, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminPassword], [FirstName], [LastName], [PhoneNumber], [Sex], [IsDelete], [Birthday]) VALUES (N'khoi', N'$2b$10$TMsGZMLX5i8npWHdKLNT8u5ClEN/K3whXxFWALcbnr/pgVTOjJjqy', N'Khoi', N'Truong', N'1221212112', 1, 0, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminPassword], [FirstName], [LastName], [PhoneNumber], [Sex], [IsDelete], [Birthday]) VALUES (N'mailinh', N'$2b$10$TMsGZMLX5i8npWHdKLNT8u5ClEN/K3whXxFWALcbnr/pgVTOjJjqy', N'Linh', N'Nguyen', N'672351163', 1, 0, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminPassword], [FirstName], [LastName], [PhoneNumber], [Sex], [IsDelete], [Birthday]) VALUES (N'thien', N'$2b$10$TMsGZMLX5i8npWHdKLNT8u5ClEN/K3whXxFWALcbnr/pgVTOjJjqy', N'Thien', N'Nguyen', N'3123221123', 1, 0, CAST(N'1998-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_Booking] ON 

INSERT [dbo].[tbl_Booking] ([BookingID], [TotalMoney], [DateCreate], [Username], [isDelete], [NumOfKid], [NumOfAdult], [Note], [Phone], [Address], [Name], [TourID], [NumOfBaby], [Birthday], [Email]) VALUES (1, 12450000, CAST(N'2013-12-12 00:00:00.000' AS DateTime), N'asd', 0, 2000000, 2500000, N'asd', N'0987352222', N'Hoa Binh', N'Nguyen Ha', N'1', 1500000, NULL, N'a')
SET IDENTITY_INSERT [dbo].[tbl_Booking] OFF
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (1, N'Thành Phố Hà Nội', NULL, NULL, 0, 1)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (2, N'Thành phố Hồ Chí Minh', NULL, NULL, 0, 3)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (3, N'Tỉnh An Giang', NULL, NULL, 0, 3)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (4, N'Tỉnh Bà Rịa – Vũng Tàu', NULL, NULL, 0, 3)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (5, N'São Paulo', NULL, NULL, 0, 4)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (6, N'Bắc Kinh', NULL, NULL, 0, 5)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (7, N'Moskva', NULL, NULL, 0, 6)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (8, N'Toronto', NULL, NULL, 0, 7)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (9, N'New York', NULL, NULL, 0, 8)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (10, N'Paris', NULL, NULL, 0, 9)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (11, N'Dublin', NULL, NULL, 0, 10)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (12, N'Quezon', NULL, NULL, 0, 11)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (13, N'Seoul', NULL, NULL, 0, 12)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (14, N'Kuala lampua', NULL, NULL, 0, 13)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (15, N'tokyo', NULL, NULL, 0, 14)
INSERT [dbo].[tbl_City] ([CityID], [CityName], [CityLocation], [OtherDetails], [isDelete], [RegionID]) VALUES (16, N'Đà Lạt', NULL, NULL, 0, 2)
SET IDENTITY_INSERT [dbo].[tbl_Convenient] ON 

INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (1, N'Wifi', 0)
INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (2, N'Khu vui chơi trẻ em', 0)
INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (3, N'Xe đưa đón sân bay', 0)
INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (4, N'Giáp biển', 0)
INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (5, N'Phòng gia đình', 0)
INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (6, N'Hồ bơi ngoài trời', 0)
INSERT [dbo].[tbl_Convenient] ([ID], [Convenient], [isDelete]) VALUES (7, N'Quầy bar', 0)
SET IDENTITY_INSERT [dbo].[tbl_Convenient] OFF
INSERT [dbo].[tbl_ConvenientHotel] ([HotelID], [ConvenientID]) VALUES (1, 1)
INSERT [dbo].[tbl_ConvenientHotel] ([HotelID], [ConvenientID]) VALUES (1, 2)
INSERT [dbo].[tbl_ConvenientHotel] ([HotelID], [ConvenientID]) VALUES (2, 1)
INSERT [dbo].[tbl_ConvenientHotel] ([HotelID], [ConvenientID]) VALUES (9, 1)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'1  ', N'Viet Nam', 12345, N'VietNamese', N'Phật Giáo', N'Dân số khá đông', 1)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'2  ', N'asd', 342, N'asddsa', N'asdsdasdasadasd', N'sad', 1)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'3  ', N'asd', 23143, N'aw', N'as', N'as', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'4  ', N'asdasd', 2134, N'sad', N'sad', N'asd', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'BRA', N'Brazil', 345000000, N'Portuguese', N'Catholic Church', N'indigenous peoples', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'CAN', N'Canada', 980000000, N'English and French', N'religiously diverse', N'no official church, and the government', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'CHN', N'China', 1404000000, N' Sino-Tibetan ', N'state atheism', N' personal belief', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'FRA', N'
France', 424000000, N'Frence', N'Freedom', N'organized religion', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'IRL', N'Ireland', 41200000, N' Irish and English', N'Freedon', N'including farmland', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'JPN', N'Japan', 1450000, N'Japanese', N'holding a tertiary ', N'influential music industry', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'KOR', N'Korea', 4450000, N' Not religious', N'rule ended in 1987', N'primarily focuses', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'MYS', N'Malaysia', 2347500, N' Islam', N'UN Development ', N'citizens are entitled ', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'PHL', N'Philippines', 1240000, N'Filipino and English', N' temperate climate terrestrial habitat ', N'agriculture to one ', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'RUS', N'Russia', 146770000, N'Russian', N'Orthodox Christianity ', N'traditionally referred to as the "baptism of Rus''"', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'USA', N'United States', 342000000, N'English', N'free exercise of religion', N'very important role in their lives', 0)
INSERT [dbo].[tbl_Country] ([CountryID], [CountryName], [Population], [Language], [MainReligion], [OtherDetails], [isDelete]) VALUES (N'VNM', N'Viet Nam', 89571130, N'Vietnamese', N'Phật Giáo', N'Dân số khá đông', 1)
SET IDENTITY_INSERT [dbo].[tbl_FeedBack] ON 

INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (1, N'Đã đi tour xong. Nói chung là tuyệt vời HDV chu đáo nhiệt tình tận tâm Tài xế và phụ xe chuyên nghiệp Đoàn thì thân thiện, vui vẻ dễ hoà đồng Tuy nhiên TV trong xe và đầu nhạc hay bị vấp nên thay đổi tv khác Nếu đi luyên tuyến thì nên ở khách sạn 3* mặc dù chênh lệch vài trăm. Bổ sung do hôm nọ chưa ghi xong', 0, NULL, N'luona', N'1', NULL, CAST(N'1997-02-08 00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (2, N'Kính chào Anh Phát! Rất cảm ơn Anh đã luôn quan tâm và tin tưởng sử dụng dịch vụ của Vietravel ạ. Vietravel sẽ ghi nhận ý kiến của cải thiện chất lượng dịch vụ để Quý khách ngày càng hài lòng hơn ạ. Cảm ơn Quý khách!', 0, 1, NULL, N'1', N'admin', CAST(N'1997-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (3, N'Minh vua di chuyen Nha Trang Phu Yen bang xe .minh thay Viettravel to chuc tot .minh mong co nhung chuyen du lich bang xe nhu vay de nhung nguoi thich ngam canh duong di co dip di .', 0, NULL, N'han', N'1', NULL, CAST(N'2019-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (4, N'Tour nhu cac', 0, NULL, N'thien', N'2', NULL, CAST(N'2019-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (5, N'Tour Vip', 0, NULL, N'thien', N'2', NULL, CAST(N'2019-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (6, N'Tour LOL', 0, NULL, N'thien', N'2', NULL, CAST(N'2019-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_FeedBack] ([ID], [FeedBackContent], [isDelete], [ReplyTo], [Username], [TourID], [AdminID], [DateCreate]) VALUES (7, N'Tour Cac', 0, 1, N'luona', N'1', NULL, CAST(N'2019-03-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_FeedBack] OFF
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'01', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'VN605

', N'VN606', CAST(N'2019-05-03 13:10:00.000' AS DateTime), CAST(N'2019-09-03 16:05:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'02', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'asd', N'dsa', CAST(N'2019-03-10 04:30:00.000' AS DateTime), CAST(N'2019-03-11 05:30:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'03', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'qwe', N'eewq', CAST(N'2019-03-03 04:30:00.000' AS DateTime), CAST(N'2019-03-10 04:30:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'04', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'uyt', N'tyu', CAST(N'2019-03-03 04:30:00.000' AS DateTime), CAST(N'2019-03-10 04:30:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'05', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'HJK', N'KHJ', CAST(N'2019-03-03 04:30:00.000' AS DateTime), CAST(N'2019-03-10 04:30:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'06', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'HJK', N'KHJ', CAST(N'2019-03-03 04:30:00.000' AS DateTime), CAST(N'2019-03-10 04:30:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'07', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'fgh', N'hfg', CAST(N'2019-03-03 04:40:00.000' AS DateTime), CAST(N'2019-03-10 04:40:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Flight] ([ID], [DateGo], [DateBack], [CodeGo], [CodeBack], [DateGoArrival], [DateBackArrival], [isDelete]) VALUES (N'8', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), N'asd', N'das', CAST(N'2019-03-03 04:30:00.000' AS DateTime), CAST(N'2019-03-10 04:30:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tbl_Hotel] ON 

INSERT [dbo].[tbl_Hotel] ([ID], [Name], [PhoneNumber], [Address], [Email], [Description], [RoomNumber], [isHot], [Price], [Rating], [isDelete], [CityID], [isParking], [isCredit], [Type]) VALUES (1, N'Mường Thanh', N'324786846', N'123 Quang Trung', N'asd@ad.asd', N'Normal Hotel', 123, 1, 500, 7, 0, 4, 0, 1, N'Premium')
INSERT [dbo].[tbl_Hotel] ([ID], [Name], [PhoneNumber], [Address], [Email], [Description], [RoomNumber], [isHot], [Price], [Rating], [isDelete], [CityID], [isParking], [isCredit], [Type]) VALUES (2, N'Diamond', N'0969668834', N'146 Nguyễn Huệ', N'diamond@gmail.com', N'Luxury Hotel', 12, 1, 600, 8, 0, 4, 0, 1, N'Diamon')
INSERT [dbo].[tbl_Hotel] ([ID], [Name], [PhoneNumber], [Address], [Email], [Description], [RoomNumber], [isHot], [Price], [Rating], [isDelete], [CityID], [isParking], [isCredit], [Type]) VALUES (3, N'Little Hoi An . A Boutique Hotel & Spa', N'0969668834', N'147 Đường 3/2', N'asd@ad.asd', N'Luxyry Hotel', 123, 1, 750, 5, 0, 4, 1, 1, N'Nomal')
INSERT [dbo].[tbl_Hotel] ([ID], [Name], [PhoneNumber], [Address], [Email], [Description], [RoomNumber], [isHot], [Price], [Rating], [isDelete], [CityID], [isParking], [isCredit], [Type]) VALUES (4, N'
Aira Boutique ', N'0969668834', N'779 Tô Ký', N'asd@ad.asd', N'Normal Hotel', 123, 1, 800, 8, 0, 4, 1, 1, N'luxury')
INSERT [dbo].[tbl_Hotel] ([ID], [Name], [PhoneNumber], [Address], [Email], [Description], [RoomNumber], [isHot], [Price], [Rating], [isDelete], [CityID], [isParking], [isCredit], [Type]) VALUES (9, N'
Victoria ', N'0969668834', N'457 Xô Viết Nghệ Tỉnh', N'diamond@gmail.com', N'Luxury Hotel', 12, 1, 900, 9, 0, 4, 1, 1, N'Nomal')
INSERT [dbo].[tbl_Hotel] ([ID], [Name], [PhoneNumber], [Address], [Email], [Description], [RoomNumber], [isHot], [Price], [Rating], [isDelete], [CityID], [isParking], [isCredit], [Type]) VALUES (11, N'
Victoria ', N'0969555834', N'457 Xô Viết Nghệ Tỉnh', N'
Victoria@asd.á', N'
Victoria Hotel', 234, 1, 10000, 1, 0, 4, 1, NULL, N'Diamon')
SET IDENTITY_INSERT [dbo].[tbl_Hotel] OFF
SET IDENTITY_INSERT [dbo].[tbl_Image] ON 

INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (1, N'1', N'dalat.jpg', 1)
INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (2, N'1', N'lamdong.jpg', 0)
INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (3, N'2', N'vinhhy.jpg', 0)
INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (4, N'3', N'hanoi.jpg', 0)
INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (5, N'4', N'danang.jpg', 0)
INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (6, N'5', N'vungtau2.jpg', 0)
INSERT [dbo].[tbl_Image] ([ID], [TourID], [Path], [isDelete]) VALUES (7, N'6', N'daklak.jpg', 0)
SET IDENTITY_INSERT [dbo].[tbl_Image] OFF
SET IDENTITY_INSERT [dbo].[tbl_ImageHotel] ON 

INSERT [dbo].[tbl_ImageHotel] ([ID], [HotelID], [Path], [isDelete]) VALUES (1, 1, N'hotel01.jpg', 0)
INSERT [dbo].[tbl_ImageHotel] ([ID], [HotelID], [Path], [isDelete]) VALUES (2, 2, N'hotel02.jpg', 0)
INSERT [dbo].[tbl_ImageHotel] ([ID], [HotelID], [Path], [isDelete]) VALUES (3, 3, N'hotel03.jpg', 0)
INSERT [dbo].[tbl_ImageHotel] ([ID], [HotelID], [Path], [isDelete]) VALUES (4, 4, N'hotel04.jpg', 0)
INSERT [dbo].[tbl_ImageHotel] ([ID], [HotelID], [Path], [isDelete]) VALUES (5, 9, N'hotel05.jpg', 0)
INSERT [dbo].[tbl_ImageHotel] ([ID], [HotelID], [Path], [isDelete]) VALUES (6, 11, N'hotel05.jpg', 0)
SET IDENTITY_INSERT [dbo].[tbl_ImageHotel] OFF
INSERT [dbo].[tbl_Metadata] ([ID], [WebName], [Count], [Copyright], [isDelete]) VALUES (1, N'Luona Travel', 100, N'2019 - Bao Thien', 0)
INSERT [dbo].[tbl_Metadata] ([ID], [WebName], [Count], [Copyright], [isDelete]) VALUES (2, N'Admin ', 1, N'2019 - Mai Linh', 0)
INSERT [dbo].[tbl_Office] ([ID], [IsOfficeMain], [Name], [Address], [Fax], [Tel], [isDelete], [CityID], [Email]) VALUES (1, 1, N'Văn phòng chính', N'Phường Thanh Xuân', N'0802', N'0983454334', 0, 2, N'benfica@gmail.com')
INSERT [dbo].[tbl_Office] ([ID], [IsOfficeMain], [Name], [Address], [Fax], [Tel], [isDelete], [CityID], [Email]) VALUES (2, 1, N'Trụ sở 2', N'195/2 Hòa hưng', N'1608', N'0986756534', 0, 2, N'louna@gmail.com')
INSERT [dbo].[tbl_Office] ([ID], [IsOfficeMain], [Name], [Address], [Fax], [Tel], [isDelete], [CityID], [Email]) VALUES (3, 0, N'Văn phòng Q12', N'Công viên phần mêm Quang Trung', N'1605', N'0986754334', 0, 2, N'travel@gmail.com')
INSERT [dbo].[tbl_Office] ([ID], [IsOfficeMain], [Name], [Address], [Fax], [Tel], [isDelete], [CityID], [Email]) VALUES (4, 0, N'Văn Phòng Đà Lạt', N'Nhà Thằng Thắng', N'3234', N'0981234333', 0, 2, N'support@gmail.com')
INSERT [dbo].[tbl_Office] ([ID], [IsOfficeMain], [Name], [Address], [Fax], [Tel], [isDelete], [CityID], [Email]) VALUES (5, 0, N'Văn Phòng Hà Nội', N'Kế Quán Bún Đậu Trump ăn', N'2342', N'0986754365', 0, 1, N'support@gmail.com')
INSERT [dbo].[tbl_Office] ([ID], [IsOfficeMain], [Name], [Address], [Fax], [Tel], [isDelete], [CityID], [Email]) VALUES (6, 1, N'Trụ sở 3', N'Phần mềm Quang Trung', N'1231', N'0967345422', 0, 2, N'support@gmail.com')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (1, N'Miền Bắc', 0, N'ád', N'VNM')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (2, N'Miền Trung', 0, NULL, N'VNM')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (3, N'Miền Nam', 0, NULL, N'VNM')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (4, N'South', 0, NULL, N'BRA')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (5, N'South', 0, NULL, N'CHN')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (6, N'South', 0, NULL, N'RUS')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (7, N'South', 0, NULL, N'CAN')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (8, N'South', 0, NULL, N'USA')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (9, N'South', 0, NULL, N'FRA')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (10, N'South', 0, NULL, N'IRL')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (11, N'South', 0, NULL, N'PHL')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (12, N'South', 0, NULL, N'KOR')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (13, N'South', 0, NULL, N'MYS')
INSERT [dbo].[tbl_Region] ([ID], [Name], [isDelete], [note], [CountryID]) VALUES (14, N'South', 0, NULL, N'JPN')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'1', CAST(N'2000-03-03 00:00:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 7000000, 2000000, 9000000, NULL, 1, 10, 30, N'Tham quan thung lũng tình yêu , ngọn hải đăng', 0, 1, 2, 0, 1, 9, N'01', N'Sân Bay', CAST(N'2000-03-03 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-01 03:03:00.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'10', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 32, 342, 234, NULL, 1, 12, 23, N'Tham quan', 1, 1, 5, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:00.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-KH')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'11', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 32, 23, 23, NULL, 1, 23, 32, N'Tham quan', 1, 1, 5, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:00.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-KJ')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'12', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 32000, 1200, 12000, NULL, 1, 45, 45, N'54', 1, 1, 6, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:00.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-GG')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'13', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1, 1, 1, NULL, 1, 1, 1, N'1', 1, 1, 6, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:00.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-JI')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'14', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1, 1, 1, NULL, 1, 1, 1, N'1', 1, 1, 7, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:00.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-YU')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'15', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 34, 54, N'Tham quan vĩnh hy , hang rái', 1, 1, 7, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-TY')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'16', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 23, 45, N'Tham quan vĩnh hy , hang rái', 1, 1, 8, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-RE')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'17', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 3, 54, N'Tham quan', 1, 4, 8, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-EW')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'18', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 2, 23, 54, N'Tham quan', 1, 1, 9, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-JH')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'19', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 3, 32, 43, N'Tham quan', 1, 3, 9, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DS')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'2', CAST(N'2019-03-03 00:00:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, N'Bus', 3, 23, 34, N'Tham quan vĩnh hy , hang rái', 0, 1, 1, 0, 1, 9, NULL, N'LuonaTravel', CAST(N'2000-03-01 00:00:00.000' AS DateTime), NULL, NULL, N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'20', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 3, 32, 43, N'Tham quan Lăng Bác', 1, 2, 10, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-JH')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'21', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 1, 43, N'Tham quan', 1, 1, 10, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-OK')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'22', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 3, 2, 54, N'Tham quan', 1, 2, 11, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-0U')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'23', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 3, 67, N'Tham quan Lăng Bác', 1, 1, 11, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-KJ')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'24', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 3, 23, 76, N'Tham quan', 1, 3, 12, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-OI')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'25', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 23, 54, N'Tham quan', 1, 1, 12, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-UY')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'26', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 2, 1, 65, N'Tham quan Lăng Bác', 1, 3, 13, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-HD')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'27', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 1, 54, N'Tham quan', 1, 5, 14, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-FR')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'28', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 23, 54, N'Tham quan', 1, 3, 15, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-YT')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'29', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 2, 23, 54, N'Tham quan', 1, 4, 6, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-HG')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'3', CAST(N'2019-03-03 00:00:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 9000000, NULL, 4, 2, 30, N'Tham quan Lăng Bác', 0, 1, 2, 0, 1, 9, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'30', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 23, 45, N'Tham quan', 1, 5, 6, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), NULL, N'TP-YT')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'4', CAST(N'2019-03-03 00:00:00.000' AS DateTime), CAST(N'2000-03-13 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 2, 30, N'Tham quan Đà Nẵng', 0, 3, 2, 0, 1, 9, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'5', CAST(N'2019-03-03 00:00:00.000' AS DateTime), CAST(N'2019-05-03 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 5, 23, 30, N'Tham quan Vũng Tàu', 0, 5, 2, 0, 0, 4, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'6', CAST(N'2019-08-03 00:00:00.000' AS DateTime), CAST(N'2019-08-03 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 4, 2, 45, N'Daklak', 0, 1, 2, 0, 0, 3, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'7', CAST(N'2019-03-05 00:00:00.000' AS DateTime), CAST(N'2019-03-09 00:00:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 1, 23, 45, N'Tham quan', 0, 5, 2, 0, 0, 1, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_Tour] ([ID], [TimeBegin], [TimeEnd], [PriceForKid], [PriceForBaby], [PriceForAdult], [Vehicle], [TourGuideID], [SeatsRemaining], [TotalSeats], [Description], [IsSale], [TravelTypeID], [fromPlace], [isDelete], [isHot], [rating], [FlightID], [GroupUpPlace], [GroupUpTime], [MeetingPlace], [MeetingTime], [Note], [Name]) VALUES (N'9', CAST(N'2000-03-03 03:03:00.000' AS DateTime), CAST(N'2000-03-03 03:03:00.000' AS DateTime), 1200000, 1000000, 1500000, NULL, 4, 12, 54, N'Tham quan', 2, 1, 1, 0, 0, 12, N'01', N'Sân Bay', CAST(N'2000-03-01 00:00:00.000' AS DateTime), N'LuonaTravel', CAST(N'2000-03-03 03:03:12.000' AS DateTime), N'Tổng đài tư vấn, đặt chỗ (08h đến 23h) : 1900 1839', N'TP-DL')
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (1, CAST(N'2019-05-03' AS Date), N'TP. HỒ CHÍ MINH - BANGKOK (Ăn tối)

', N'<div>Hướng dẫn viên <a href="https://media.vietravel.net" target="_blank">Vietravel</a> đón Quý khách tại cổng hẹn ở sân bay Tân Sơn Nhất, đón chuyến bay đi <a href="https://travel.com.vn/chau-a/tour-bangkok.aspx" target="_blank">Bangkok</a>. Đến sân bay Suvarnabhumi (nếu bay Vietnam Airlines,&nbsp;VietJet, Jet Star) hoặc sân bay Don Muong (nếu bay Nok Air), xe và hướng dẫn viên địa phương đón và đưa Quý khách về khách sạn nghỉ ngơi. Sau khi dùng bữa tối, Quý khách sẽ thưởng thức <em><strong>chương trình biểu diễn nghệ thuật Nanta Show</strong></em> - Trong vở diễn, các diễn viên trẻ sử dụng các dụng cụ nấu bếp kết hợp với cốt truyện sinh động để giới thiệu sự khéo léo của các nghệ sĩ, cũng như các món ăn tiêu biểu của Hàn Quốc, đây là Show diễn nổi tiếng tại Hàn Quốc nay đã có mặt tại <a href="https://travel.com.vn/chau-a/tour-thai-lan.aspx" target="_blank">Thái Lan</a>. Sau buổi diễn, Quý khách tự do khám phá Bangkok về đêm hoặc trở về khách sạn nghỉ ngơi.</div>
<div>&nbsp;</div><div><em>Chương trình Nanta show được trình diễn vào các tối thứ 2 – chủ nhật. Riêng tối thứ hai đầu tháng sẽ không trình diễn, chương trình sẽ được thay thế bằng một điểm tham quan khác.', 0, N'1', 2)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (2, CAST(N'2019-06-03' AS Date), N'BANGKOK - PATTAYA (Ăn ba bữa)', N'Ăn sáng tại khách sạn. Làm thủ tục trả phòng. Quý khách khởi hành đến <a href="https://travel.com.vn/chau-a/tour-pattaya.aspx" target="_blank">Pattaya</a> - thành phố <a href="https://travel.com.vn/" target="_blank">du lịch</a> nổi tiếng của <a href="https://travel.com.vn/chau-a/tour-thai-lan.aspx" target="_blank">Thái Lan</a>, trên đường Quý khách dừng chân tham quan<em><strong> Trung tâm Yến Huyết</strong></em> để tìm hiểu về quá trình sản xuất ra tổ yến, cũng như các chủng loại yến có mặt tại Thái Lan. Tiếp tục, tham quan<em><strong> Làng văn hóa Dân Tộc Nong Nooch</strong></em> với các chương trình biểu diễn văn hoá, đấu võ Thái và các trò biểu diễn đặc sắc của các chú voi. Quý khách dùng bữa tối tại nhà hàng địa phương. Nhận phòng khách sạn nghỉ ngơi thư giãn hoặc tự do khám phá thành phố biển Pattaya về đêm với rất nhiều hoạt động thú vị và hấp dẫn.', 0, N'1', 4)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (3, CAST(N'2019-07-03' AS Date), N'PATTAYA								           (Ăn ba bữa)', N'<div>Hướng dẫn viên <a href="https://media.vietravel.net" target="_blank">Vietravel</a> đón Quý khách tại cổng hẹn ở sân bay Tân Sơn Nhất, đón chuyến bay đi <a href="https://travel.com.vn/chau-a/tour-bangkok.aspx" target="_blank">Bangkok</a>. Đến sân bay Suvarnabhumi (nếu bay Vietnam Airlines,&nbsp;VietJet, Jet Star) hoặc sân bay Don Muong (nếu bay Nok Air), xe và hướng dẫn viên địa phương đón và đưa Quý khách về khách sạn nghỉ ngơi. Sau khi dùng bữa tối, Quý khách sẽ thưởng thức <em><strong>chương trình biểu diễn nghệ thuật Nanta Show</strong></em> - Trong vở diễn, các diễn viên trẻ sử dụng các dụng cụ nấu bếp kết hợp với cốt truyện sinh động để giới thiệu sự khéo léo của các nghệ sĩ, cũng như các món ăn tiêu biểu của Hàn Quốc, đây là Show diễn nổi tiếng tại Hàn Quốc nay đã có mặt tại <a href="https://travel.com.vn/chau-a/tour-thai-lan.aspx" target="_blank">Thái Lan</a>. Sau buổi diễn, Quý khách tự do khám phá Bangkok về đêm hoặc trở về khách sạn nghỉ ngơi.</div>
<div>&nbsp;</div><div><em>Chương trình Nanta show được trình diễn vào các tối thứ 2 – chủ nhật. Riêng tối thứ hai đầu tháng sẽ không trình diễn, chương trình sẽ được thay thế bằng một điểm tham quan khác.', 0, N'1', 4)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (4, CAST(N'2019-08-03' AS Date), N'PATTAYA - BANGKOK						           (Ăn ba bữa)', N'
                                        <div style="text-align: justify;">
                                            Ăn sáng tại khách sạn và làm thủ tục trả phòng. Tạm biệt <a href="https://travel.com.vn/chau-a/tour-pattaya.aspx" target="_blank">Pattaya</a>, Đoàn khởi hành về <a href="https://travel.com.vn/chau-a/tour-bangkok.aspx" target="_blank">Bangkok</a>, trên đường Quý khách tham quan và chiêm bái <em><strong>Trân Bảo Phật Sơn (Khao Chee Chan) </strong></em>- được khắc bằng tia laze lên vách núi sau đó khắc bằng vàng 24k. Tượng Phật cao 130 mét, chiều rộng 70 mét, được xây dựng vào năm 1996, tổng chí phí xây dựng 161,7 triệu Baht (tiền <a href="https://travel.com.vn/chau-a/tour-thai-lan.aspx" target="_blank">Thái Lan</a>), được sự chăm sóc và bảo quản của quân đội Hoàng Gia, Quý khách sẽ không khỏi bị vẻ đẹp giản đơn nơi đây cuốn hút, một khung cảnh yên tịnh, thanh bình, khác xa trung tâm Pattaya ồn ào, tấp nập. Quý khách tham quan <em><strong>Trại Rắn</strong></em> xem màn trình diễn với các loài rắn độc và cách lấy nọc rắn. Đến Bangkok, Quý khách thưởng thức <em><strong>Buffet trưa tại Baiyoke Sky (tòa nhà 84 tầng)</strong></em>. Tiếp tục, Quý khách tham quan <em><strong>Bảo tàng sáp Madame Tussauds Bangkok </strong></em>là bảo tàng sáp đầu tiên của Đông Nam Á, và là bảo tàng thứ 10 thuộc hệ thống Madame Tussauds trên toàn thế giới, bên cạnh London (Anh), Amsterdam (Hà Lan), Berlin (Đức), Washington DC, New York, Las Vegas (Mỹ), Hồng Kông, Thượng Hải (Trung Quốc)...Tọa lạc tại tầng 6 trung tâm thương mại sầm uất nhất thuộc thủ đô Bangkok – Siam Discovery. Đến với Bảo tàng Sáp bạn không những được chiêm ngưỡng những chân dung tượng sáp gần như giống hệt các nhân vật nổi tiếng trên khắp thế giới, mà còn được tự do tạo dáng chụp ảnh với những nhân vật bạn yêu thích. Buổi chiều, Quý khách tự do tham quan mua sắm tại trung tâm thương mại lớn. <strong>Ăn tối bằng coupon tại trung tâm Siam Paragon</strong>. Trở về khách sạn nghỉ ngơi.



                                        </div>', 0, N'1', 16)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (5, CAST(N'2019-09-03' AS Date), N'BANGKOK - TP.HỒ CHÍ MINH 					              (Ăn sáng)', N'   <div style="text-align: justify;">
                                            Sau khi ăn sáng tại khách sạn và làm thủ tục trả phòng, Quý khách khởi hành đi tham quan <em><strong>Chùa Phật Vàng</strong></em> với tượng Phật ngồi bằng vàng lớn nhất thế giới cao 5 mét và nặng 5,5 tấn, được tin là đã 700 đến 800 tuổi. Quý khách&nbsp;tự do mua sắm tại Big C Bangna cho đến giờ ra phi trường đáp chuyến bay về nước (chỉ áp dụng cho các chuyến bay về sau 18h00). Về đến sân bay Tân Sơn Nhất, kết thúc chuyến tham quan. Trưởng đoàn chia tay và tạm biệt Quý khách.
                                        </div><div style="text-align: justify;">
                                            <strong><em>Hàng không Vietjet, Air Asia, Jet Star,&nbsp;Nok Air, Air Asia&nbsp;không bao gồm bữa ăn nhẹ trên chuyến bay khứ hồi</em></strong>
                                        </div><div style="text-align: justify;">
                                            &nbsp;*** Từ 15/01/2019, với các chuyến bay về tối sau 18:00, xe sẽ đưa Quý khách đi mua sắm tại <strong>Trung Tâm Mua sắm Icon Siam </strong>- trung tâm thương mại lớn nhất và là niềm tự hào mới nhất của <a href="https://travel.com.vn/chau-a/tour-thai-lan.aspx" target="_blank">Thái Lan</a> nằm bên dòng sông Chao Phraya. Công trình rộng 750.000m2, gồm các cửa hàng bán lẻ, khu giải trí, nhà hàng và căn hộ cao cấp lớn nhất Thái Lan hiện nay.



                                        </div>', 0, N'16', 3)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (6, CAST(N'2019-03-02' AS Date), N'Game', N'aa', 0, N'4', 2)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (7, CAST(N'2019-03-04' AS Date), N'aa', N'aa', 0, N'4', 3)
INSERT [dbo].[tbl_TourDetail] ([ID], [Date], [Title], [DateContent], [isDelete], [TourID], [CityID]) VALUES (8, CAST(N'2019-03-05' AS Date), N'vv', N'vv', 0, N'4', 1)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (1, N'Nguyen', N'Linh', N'Hà Nội', N'0978465323', 0)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (2, N'Nguyen', N'Thien', N'HCM', N'0978465323', 0)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (3, N'Nguyen', N'Quan', N'HCM', N'0978465323', 0)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (4, N'Nguyen', N'Thanh', N'Hà Nội', N'0978465323', 0)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (5, N'Nguyen', N'Nhan', N'HCM', N'0978465323', 0)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (9, N'Nguyen', N'Hau', N'HCM', N'0978465323', 0)
INSERT [dbo].[tbl_TourGuide] ([TourGuideID], [LastName], [FirstName], [Address], [Phone], [isDelete]) VALUES (21, N'Nguyen', N'Khanh', N'HCM', N'0978465323', 0)
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (1, N'1')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (1, N'10')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (1, N'2')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (2, N'1')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (2, N'2')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (3, N'1')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (3, N'2')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (4, N'1')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (4, N'10')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (4, N'2')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (9, N'1')
INSERT [dbo].[tbl_TourHotel] ([HotelID], [TourID]) VALUES (11, N'1')
INSERT [dbo].[tbl_Travel_Type] ([ID], [Name], [isDelete]) VALUES (1, N'Giá tốt', 0)
INSERT [dbo].[tbl_Travel_Type] ([ID], [Name], [isDelete]) VALUES (2, N'Tiết Kiệm', 0)
INSERT [dbo].[tbl_Travel_Type] ([ID], [Name], [isDelete]) VALUES (3, N'Cao Cấp', 0)
INSERT [dbo].[tbl_Travel_Type] ([ID], [Name], [isDelete]) VALUES (4, N'Tiêu chuẩn', 0)
INSERT [dbo].[tbl_Travel_Type] ([ID], [Name], [isDelete]) VALUES (5, N'Tổng thống', 0)
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'asd', N'123', N'Khanh', N'Kieu', N'0333577999', N'Thủ thừa', N'asdasd@adsa', 1, 0, CAST(N'1996-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'dsa', N'12', N'Kiem', N'Trong', N'0333577999', N'Thủ thừa', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1996-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'han', N'123', N'Bảo Hân', N'Lê Ngọc', N'01233737178', N'Thủ thừa', N'hana_misu_sad@yahoo.com', 1, 0, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'hg', N'qgh', N'Bao', N'Ha', N'0333577999', N'Thủ thừa', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1964-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'huahua', N'142', N'Hau', N'ngrhuye', N'0333577999', N'Thủ thừa', N'asdasd-adsd', 1, 0, CAST(N'1997-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'huhuj', N'123', N'Khanh', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1995-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'jh', N'qhjk', N'Khanh', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1920-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'jhu', N'123', N'Thanh', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1996-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'kj', N'asas', N'Thanh', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1960-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'kjhu', N'123123', N'Huy', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1996-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'luona', N'123', N'Bảo Thiện', N'Nguyễn', N'0902665078', N'Võ Tánh', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1998-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'qwe', N'21', N'Thanh', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'2003-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'thien', N'123', N'Anh', N'Nguyễn', N'0333577999', N'Võ tánh', N'benficacronaldo@gmail.com', 1, 0, CAST(N'1997-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'thienprovip', N'0502', N'Thien', N'Nguyen', N'0333577999', N'HCM', NULL, 1, 0, CAST(N'2005-12-12' AS Date))
INSERT [dbo].[tbl_User] ([Username], [Password], [FirstName], [LastName], [PhoneNumber], [Address], [Email], [Sex], [isDelete], [Birthday]) VALUES (N'uty', N'21', N'Ha', N'Nguyễn', N'0333577999', N'HCM', N'benficacronaldo@gmail.com', 1, 0, CAST(N'2004-12-12' AS Date))
ALTER TABLE [dbo].[tbl_Booking]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Booking_tbl_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[tbl_Tour] ([ID])
GO
ALTER TABLE [dbo].[tbl_Booking] CHECK CONSTRAINT [FK_tbl_Booking_tbl_Tour]
GO
ALTER TABLE [dbo].[tbl_Booking]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_User] FOREIGN KEY([Username])
REFERENCES [dbo].[tbl_User] ([Username])
GO
ALTER TABLE [dbo].[tbl_Booking] CHECK CONSTRAINT [FK_tbl_Order_tbl_User]
GO
ALTER TABLE [dbo].[tbl_City]  WITH CHECK ADD  CONSTRAINT [FK_tbl_City_tbl_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[tbl_Region] ([ID])
GO
ALTER TABLE [dbo].[tbl_City] CHECK CONSTRAINT [FK_tbl_City_tbl_Region]
GO
ALTER TABLE [dbo].[tbl_ConvenientHotel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ConvenientHotel_tbl_Convenient] FOREIGN KEY([ConvenientID])
REFERENCES [dbo].[tbl_Convenient] ([ID])
GO
ALTER TABLE [dbo].[tbl_ConvenientHotel] CHECK CONSTRAINT [FK_tbl_ConvenientHotel_tbl_Convenient]
GO
ALTER TABLE [dbo].[tbl_ConvenientHotel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ConvenientHotel_tbl_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[tbl_Hotel] ([ID])
GO
ALTER TABLE [dbo].[tbl_ConvenientHotel] CHECK CONSTRAINT [FK_tbl_ConvenientHotel_tbl_Hotel]
GO
ALTER TABLE [dbo].[tbl_FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FeedBack_tbl_Admin] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Admin] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_FeedBack] CHECK CONSTRAINT [FK_tbl_FeedBack_tbl_Admin]
GO
ALTER TABLE [dbo].[tbl_FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FeedBack_tbl_FeedBack1] FOREIGN KEY([ReplyTo])
REFERENCES [dbo].[tbl_FeedBack] ([ID])
GO
ALTER TABLE [dbo].[tbl_FeedBack] CHECK CONSTRAINT [FK_tbl_FeedBack_tbl_FeedBack1]
GO
ALTER TABLE [dbo].[tbl_FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FeedBack_tbl_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[tbl_Tour] ([ID])
GO
ALTER TABLE [dbo].[tbl_FeedBack] CHECK CONSTRAINT [FK_tbl_FeedBack_tbl_Tour]
GO
ALTER TABLE [dbo].[tbl_FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FeedBack_tbl_User] FOREIGN KEY([Username])
REFERENCES [dbo].[tbl_User] ([Username])
GO
ALTER TABLE [dbo].[tbl_FeedBack] CHECK CONSTRAINT [FK_tbl_FeedBack_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hotel_tbl_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[tbl_City] ([CityID])
GO
ALTER TABLE [dbo].[tbl_Hotel] CHECK CONSTRAINT [FK_tbl_Hotel_tbl_City]
GO
ALTER TABLE [dbo].[tbl_Image]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Image_tbl_Tour1] FOREIGN KEY([TourID])
REFERENCES [dbo].[tbl_Tour] ([ID])
GO
ALTER TABLE [dbo].[tbl_Image] CHECK CONSTRAINT [FK_tbl_Image_tbl_Tour1]
GO
ALTER TABLE [dbo].[tbl_ImageHotel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ImageHotel_tbl_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[tbl_Hotel] ([ID])
GO
ALTER TABLE [dbo].[tbl_ImageHotel] CHECK CONSTRAINT [FK_tbl_ImageHotel_tbl_Hotel]
GO
ALTER TABLE [dbo].[tbl_Office]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Office_tbl_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[tbl_City] ([CityID])
GO
ALTER TABLE [dbo].[tbl_Office] CHECK CONSTRAINT [FK_tbl_Office_tbl_City]
GO
ALTER TABLE [dbo].[tbl_Passenger]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Passenger_tbl_Booking] FOREIGN KEY([BookingID])
REFERENCES [dbo].[tbl_Booking] ([BookingID])
GO
ALTER TABLE [dbo].[tbl_Passenger] CHECK CONSTRAINT [FK_tbl_Passenger_tbl_Booking]
GO
ALTER TABLE [dbo].[tbl_Region]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Region_tbl_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tbl_Country] ([CountryID])
GO
ALTER TABLE [dbo].[tbl_Region] CHECK CONSTRAINT [FK_tbl_Region_tbl_Country]
GO
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_Category1] FOREIGN KEY([TravelTypeID])
REFERENCES [dbo].[tbl_Travel_Type] ([ID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_Category1]
GO
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_City] FOREIGN KEY([fromPlace])
REFERENCES [dbo].[tbl_City] ([CityID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_City]
GO
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_Flight] FOREIGN KEY([FlightID])
REFERENCES [dbo].[tbl_Flight] ([ID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_Flight]
GO
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_TourGuide] FOREIGN KEY([TourGuideID])
REFERENCES [dbo].[tbl_TourGuide] ([TourGuideID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_TourGuide]
GO
ALTER TABLE [dbo].[tbl_TourDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TourDetail_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[tbl_City] ([CityID])
GO
ALTER TABLE [dbo].[tbl_TourDetail] CHECK CONSTRAINT [FK_tbl_TourDetail_City]
GO
ALTER TABLE [dbo].[tbl_TourDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TourDetail_tbl_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[tbl_Tour] ([ID])
GO
ALTER TABLE [dbo].[tbl_TourDetail] CHECK CONSTRAINT [FK_tbl_TourDetail_tbl_Tour]
GO
ALTER TABLE [dbo].[tbl_TourHotel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TourHotel_tbl_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[tbl_Hotel] ([ID])
GO
ALTER TABLE [dbo].[tbl_TourHotel] CHECK CONSTRAINT [FK_tbl_TourHotel_tbl_Hotel]
GO
ALTER TABLE [dbo].[tbl_TourHotel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TourHotel_tbl_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[tbl_Tour] ([ID])
GO
ALTER TABLE [dbo].[tbl_TourHotel] CHECK CONSTRAINT [FK_tbl_TourHotel_tbl_Tour]
GO
/****** Object:  StoredProcedure [dbo].[db_Get_All_Hotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_All_Hotel]
as
begin
select * from tbl_Hotel where isDelete=0
end
GO
/****** Object:  StoredProcedure [dbo].[db_Get_City_By_CityID_From_tblHotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[db_Get_City_By_CityID_From_tblHotel](@CityID int)
as
begin
select * from tbl_City where CityID = @CityID
end
GO
/****** Object:  StoredProcedure [dbo].[db_Get_Image_By_HotelID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_Image_By_HotelID](@ID int)
as
begin
select * from tbl_ImageHotel where HotelID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[db_Get_List_ComboBox_ToPlace]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_List_ComboBox_ToPlace]
as
begin
select * from tbl_City where isDelete = 0
end
GO
/****** Object:  StoredProcedure [dbo].[db_Get_List_Convenient]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_List_Convenient] (@ID int)
as
begin
select * from tbl_Convenient where ID = any (select ConvenientID from tbl_ConvenientHotel where HotelID=@ID)
end

GO
/****** Object:  StoredProcedure [dbo].[db_Get_List_Hotel_Hot_Details]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_List_Hotel_Hot_Details](@ID int) 
as
begin
select * from tbl_Hotel where isHot=1 and ID!= @ID and isDelete = 0;
end


GO
/****** Object:  StoredProcedure [dbo].[db_Get_List_Search_Hotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_List_Search_Hotel](@CheckIn date , @CheckOut date,@CityID int)
as
begin
select * from tbl_Hotel where CityID=@CityID and CheckIn=@CheckIn and CheckOut = @CheckOut and isDelete = 0
end


GO
/****** Object:  StoredProcedure [dbo].[db_Get_List_Search_Tour]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[db_Get_List_Search_Tour]
(@fromPlace int,
@toPlace int,
@timeBegin datetime,
@seatsRemaining int)

as
BEGIN
-- get List that user input fromPlace but don't inpur ToPlace
if(@toPlace=0 and @fromPlace >= 1)
Select * from tbl_Tour where fromPlace = @fromPlace  and TimeBegin <= @timeBegin  
and SeatsRemaining > @seatsRemaining and isDelete=0 order by TimeBegin desc


-- get List that user input full field
else 
Select * from tbl_Tour where fromPlace = @fromPlace 
and ID =  any(select TourID from tbl_TourDetail where CityID=@toPlace )
 and TimeBegin <= @timeBegin  
and SeatsRemaining > @seatsRemaining and isDelete=0 order by TimeBegin desc
END

GO
/****** Object:  StoredProcedure [dbo].[get_All_Tour_Current]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_All_Tour_Current]
as
select * from tbl_Tour where isDelete = 0




GO
/****** Object:  StoredProcedure [dbo].[get_List_Tour_Hot]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_List_Tour_Hot]
as
select * from tbl_Tour where isDelete = 0 and isHot = 1




GO
/****** Object:  StoredProcedure [dbo].[getAgeFrom0To18]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAgeFrom0To18]
as
begin 
SELECT 
    *
  From tbl_User
  Where (CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) <18)
  end
GO
/****** Object:  StoredProcedure [dbo].[getAgeFrom18To40]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAgeFrom18To40]
as
begin 
SELECT 
    *
  From tbl_User
  Where (CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) >=18 and CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) <40)
  end
GO
/****** Object:  StoredProcedure [dbo].[getAgeFrom40To60]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAgeFrom40To60]
as
begin 
SELECT 
    *
  From tbl_User
  Where (CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) >40 and CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) <60)
  end
GO
/****** Object:  StoredProcedure [dbo].[getAgeFrom60To100]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAgeFrom60To100]
as
begin 
SELECT 
    *
  From tbl_User
  Where (CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) >60 and CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) <100)
  end
GO
/****** Object:  StoredProcedure [dbo].[getChildrenOfUser]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getChildrenOfUser]
as
begin 
SELECT 
    COUNT(*)
  From tbl_User
  Where (CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) <18)
  end
GO
/****** Object:  StoredProcedure [dbo].[getJuvenileOfUser]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getJuvenileOfUser]
as
begin 
SELECT 
    COUNT(*)
  From tbl_User
  Where (CONVERT(int,ROUND(DATEDIFF(hour,Birthday,GETDATE())/8766.0,0)) <=16)
  end
GO
/****** Object:  StoredProcedure [dbo].[getListHotel]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getListHotel] 
as
select * from tbl_Hotel where isHot=1 and isDelete = 0;

GO
/****** Object:  StoredProcedure [dbo].[getTourByBrazil]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByBrazil]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'BRA') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByCanada]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByCanada]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'CAN') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByChina]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByChina]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'CHN') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByFrance]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByFrance]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'FRA') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByIreland]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByIreland]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'IRL') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByJapan]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByJapan]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'JPN') and isDelete =0)
end 
GO
/****** Object:  StoredProcedure [dbo].[getTourByKorea]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByKorea]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'KOR') and isDelete =0)
end 
GO
/****** Object:  StoredProcedure [dbo].[getTourByMalaysia]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByMalaysia]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'MYS') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByPhilippines]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByPhilippines]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'PHL') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByRussia]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByRussia]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'RUS') and isDelete =0)
end
GO
/****** Object:  StoredProcedure [dbo].[getTourByUnitedStates]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByUnitedStates]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'USA') and isDelete =0)
end 
GO
/****** Object:  StoredProcedure [dbo].[getTourByVietNam]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTourByVietNam]
as
begin 
select * from tbl_Tour where fromPlace = Any(select CityID from tbl_City where RegionID = Any(Select ID from tbl_Region where CountryID = 'VNM') and isDelete =0) and FlightID is Not Null
end 
GO
/****** Object:  StoredProcedure [dbo].[getYearOfUser]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getYearOfUser]
as
begin 
  select YEAR(Birthday)
from tbl_User
  end
GO
/****** Object:  StoredProcedure [dbo].[Load_Image_Tour_Search]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Load_Image_Tour_Search] 
@TourID varchar(50)
as
BEGIN
select * from tbl_Image where TourID=@TourID and isDelete = 0
END


GO
/****** Object:  StoredProcedure [dbo].[load_img_hotel_by_HotelID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[load_img_hotel_by_HotelID](@ID int)
as

select * from tbl_ImageHotel where HotelID =  @ID and isDelete = 0



GO
/****** Object:  StoredProcedure [dbo].[loadImgByTourId]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[loadImgByTourId](@TourID varchar(50))
as
select * from tbl_Image where TourID =  @TourID and isDelete = 0



GO
/****** Object:  StoredProcedure [dbo].[sp_get_City_ByRegionID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_get_City_ByRegionID] @RegionID int
as 
select * from tbl_City where isDelete = 0 and RegionID = @RegionID

GO
/****** Object:  StoredProcedure [dbo].[sp_get_Metadata]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_get_Metadata]
as
select * from tbl_Metadata where isDelete = 0;

GO
/****** Object:  StoredProcedure [dbo].[sp_get_Office_ByCityID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_get_Office_ByCityID] @CityID int
as 
select * from tbl_Office where isDelete = 0 and CityID = @CityID

GO
/****** Object:  StoredProcedure [dbo].[sp_get_Office_ByID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_get_Office_ByID] @ID int
as 
select * from tbl_Office where isDelete = 0 and ID = @ID

GO
/****** Object:  StoredProcedure [dbo].[spGet_All_Main_Office_In_Center_VietNam]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGet_All_Main_Office_In_Center_VietNam]
as
select * from tbl_Office where CityID = Any (Select CityID from tbl_City where RegionID = any(Select ID  from tbl_Region where CountryID = 'VNM' and Name = N'Miền Trung')) and isDelete = 0

GO
/****** Object:  StoredProcedure [dbo].[spGet_All_Main_Office_In_North_VietNam]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGet_All_Main_Office_In_North_VietNam]
as
select * from tbl_Office where CityID = Any (Select CityID from tbl_City where RegionID = any(Select ID  from tbl_Region where CountryID = 'VNM' and Name = N'Miền Bắc')) and isDelete = 0

GO
/****** Object:  StoredProcedure [dbo].[spGet_All_Main_Office_In_South_VietNam]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGet_All_Main_Office_In_South_VietNam]
as
select * from tbl_Office where CityID = Any (Select CityID from tbl_City where RegionID = any(Select ID  from tbl_Region where CountryID = 'VNM' and Name = N'Miền Nam')) and isDelete = 0

GO
/****** Object:  StoredProcedure [dbo].[spGet_All_Main_Office_In_VietNam]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGet_All_Main_Office_In_VietNam]
as
select * from tbl_Office where CityID = Any (Select CityID from tbl_City where RegionID = any(Select ID  from tbl_Region where CountryID = 'VNM')) and isDelete = 0 and IsOfficeMain = 1

GO
/****** Object:  StoredProcedure [dbo].[spGet_All_Office_In_VietNam]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGet_All_Office_In_VietNam]
as
select * from tbl_Office where CityID = Any (Select CityID from tbl_City where RegionID = any(Select ID  from tbl_Region where CountryID = 'VNM')) and isDelete = 0

GO
/****** Object:  StoredProcedure [dbo].[spGet_FeedBack_By_TourID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spGet_FeedBack_By_TourID] ( @tourID varchar(50))
as
Select * from tbl_FeedBack 
Where (TourID = @tourID and isDelete = 0) and (ReplyTo IS NULL)

GO
/****** Object:  StoredProcedure [dbo].[spGet_Hotel_by_Tour_ID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGet_Hotel_by_Tour_ID] @ID varchar(50)
as
Select * from tbl_Hotel where ID = ANY (Select HotelID  from tbl_TourHotel where TourID = @ID) and isDelete = 0

GO
/****** Object:  StoredProcedure [dbo].[spGet_Reply_By_FeedBackID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spGet_Reply_By_FeedBackID] ( @ID varchar(50))
as
Select * from tbl_FeedBack 
Where ReplyTO = @ID and isDelete = 0 Order by DateCreate ASC

GO
/****** Object:  StoredProcedure [dbo].[spGet_Tour_byID]    Script Date: 4/6/2019 3:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGet_Tour_byID] @ID varchar(50)
as
Select * from tbl_Tour where ID = @ID and isDelete = 0

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GroupUpPlace To go' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Tour', @level2type=N'COLUMN',@level2name=N'GroupUpPlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To Planning' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Tour', @level2type=N'COLUMN',@level2name=N'MeetingPlace'
GO
USE [master]
GO
ALTER DATABASE [TravelDB] SET  READ_WRITE 
GO
