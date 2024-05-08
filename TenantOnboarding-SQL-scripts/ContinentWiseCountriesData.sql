USE [master]
GO
/****** Object:  Database [world]    Script Date: 5/8/2024 6:54:11 PM ******/
CREATE DATABASE [world]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'world', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\world.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'world_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\world_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [world] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [world].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [world] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [world] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [world] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [world] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [world] SET ARITHABORT OFF 
GO
ALTER DATABASE [world] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [world] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [world] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [world] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [world] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [world] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [world] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [world] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [world] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [world] SET  DISABLE_BROKER 
GO
ALTER DATABASE [world] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [world] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [world] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [world] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [world] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [world] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [world] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [world] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [world] SET  MULTI_USER 
GO
ALTER DATABASE [world] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [world] SET DB_CHAINING OFF 
GO
ALTER DATABASE [world] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [world] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [world] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [world] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [world] SET QUERY_STORE = ON
GO
ALTER DATABASE [world] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [world]
GO
/****** Object:  Table [dbo].[Continent]    Script Date: 5/8/2024 6:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continent](
	[Id] [int] NOT NULL,
	[ContinentName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/8/2024 6:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] NOT NULL,
	[CountryName] [varchar](100) NULL,
	[IsoCode] [char](2) NULL,
	[ContinentName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Continent] ([Id], [ContinentName]) VALUES (1, N'Americas')
INSERT [dbo].[Continent] ([Id], [ContinentName]) VALUES (2, N'Asia Pacific')
INSERT [dbo].[Continent] ([Id], [ContinentName]) VALUES (3, N'Europe')
INSERT [dbo].[Continent] ([Id], [ContinentName]) VALUES (4, N'Middle East/Africa')
GO
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (1, N'United States', N'US', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (2, N'Canada', N'CA', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (3, N'Mexico', N'MX', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (4, N'Brazil', N'BR', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (5, N'Argentina', N'AR', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (6, N'Colombia', N'CO', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (7, N'Peru', N'PE', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (8, N'Venezuela', N'VE', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (9, N'Chile', N'CL', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (10, N'Ecuador', N'EC', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (11, N'Guatemala', N'GT', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (12, N'Cuba', N'CU', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (13, N'Haiti', N'HT', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (14, N'Dominican Republic', N'DO', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (15, N'Honduras', N'HN', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (16, N'Paraguay', N'PY', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (17, N'Nicaragua', N'NI', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (18, N'El Salvador', N'SV', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (19, N'Costa Rica', N'CR', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (20, N'Panama', N'PA', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (21, N'Bolivia', N'BO', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (22, N'Uruguay', N'UY', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (23, N'Jamaica', N'JM', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (24, N'Trinidad and Tobago', N'TT', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (25, N'Guyana', N'GY', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (26, N'Suriname', N'SR', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (27, N'Bahamas', N'BS', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (28, N'Belize', N'BZ', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (29, N'Barbados', N'BB', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (30, N'Saint Lucia', N'LC', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (31, N'Saint Vincent and the Grenadines', N'VC', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (32, N'Grenada', N'GD', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (33, N'Antigua and Barbuda', N'AG', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (34, N'Saint Kitts and Nevis', N'KN', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (35, N'Dominica', N'DM', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (36, N'China', N'CN', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (37, N'India', N'IN', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (38, N'Indonesia', N'ID', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (39, N'Pakistan', N'PK', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (40, N'Bangladesh', N'BD', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (41, N'Japan', N'JP', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (42, N'Philippines', N'PH', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (43, N'Vietnam', N'VN', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (44, N'Thailand', N'TH', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (45, N'Myanmar', N'MM', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (46, N'South Korea', N'KR', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (47, N'Sri Lanka', N'LK', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (48, N'Australia', N'AU', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (49, N'Taiwan', N'TW', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (50, N'Malaysia', N'MY', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (51, N'Nepal', N'NP', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (52, N'North Korea', N'KP', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (53, N'Afghanistan', N'AF', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (54, N'Uzbekistan', N'UZ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (55, N'Saudi Arabia', N'SA', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (56, N'Iran', N'IR', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (57, N'United Arab Emirates', N'AE', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (58, N'Iraq', N'IQ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (59, N'Turkey', N'TR', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (60, N'Israel', N'IL', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (61, N'Syria', N'SY', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (62, N'Kazakhstan', N'KZ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (63, N'Yemen', N'YE', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (64, N'Azerbaijan', N'AZ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (65, N'Jordan', N'JO', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (66, N'Lebanon', N'LB', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (67, N'Uzbekistan', N'UZ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (68, N'Singapore', N'SG', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (69, N'Hong Kong', N'HK', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (70, N'Tajikistan', N'TJ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (71, N'Laos', N'LA', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (72, N'Kyrgyzstan', N'KG', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (73, N'Turkmenistan', N'TM', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (74, N'Qatar', N'QA', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (75, N'Cambodia', N'KH', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (76, N'Kuwait', N'KW', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (77, N'Bahrain', N'BH', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (78, N'Timor-Leste', N'TL', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (79, N'Oman', N'OM', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (80, N'Bhutan', N'BT', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (81, N'Mongolia', N'MN', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (82, N'Germany', N'DE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (83, N'United Kingdom', N'GB', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (84, N'France', N'FR', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (85, N'Italy', N'IT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (86, N'Spain', N'ES', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (87, N'Ukraine', N'UA', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (88, N'Poland', N'PL', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (89, N'Romania', N'RO', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (90, N'Netherlands', N'NL', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (91, N'Belgium', N'BE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (92, N'Czech Republic', N'CZ', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (93, N'Greece', N'GR', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (94, N'Portugal', N'PT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (95, N'Sweden', N'SE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (96, N'Hungary', N'HU', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (97, N'Belarus', N'BY', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (98, N'Austria', N'AT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (99, N'Serbia', N'RS', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (100, N'Switzerland', N'CH', N'Europe')
GO
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (101, N'Bulgaria', N'BG', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (102, N'Denmark', N'DK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (103, N'Finland', N'FI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (104, N'Slovakia', N'SK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (105, N'Norway', N'NO', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (106, N'Ireland', N'IE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (107, N'Croatia', N'HR', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (108, N'Bosnia and Herzegovina', N'BA', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (109, N'Moldova', N'MD', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (110, N'Lithuania', N'LT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (111, N'Albania', N'AL', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (112, N'North Macedonia', N'MK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (113, N'Slovenia', N'SI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (114, N'Latvia', N'LV', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (115, N'Estonia', N'EE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (116, N'Montenegro', N'ME', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (117, N'Luxembourg', N'LU', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (118, N'Malta', N'MT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (119, N'Iceland', N'IS', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (120, N'Andorra', N'AD', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (121, N'Liechtenstein', N'LI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (122, N'Monaco', N'MC', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (123, N'San Marino', N'SM', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (124, N'Vatican City', N'VA', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (125, N'South Africa', N'ZA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (126, N'Nigeria', N'NG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (127, N'Egypt', N'EG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (128, N'Algeria', N'DZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (129, N'Sudan', N'SD', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (130, N'Morocco', N'MA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (131, N'Angola', N'AO', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (132, N'Ethiopia', N'ET', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (133, N'Tanzania', N'TZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (134, N'Kenya', N'KE', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (135, N'Uganda', N'UG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (136, N'Ghana', N'GH', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (137, N'Mozambique', N'MZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (138, N'Madagascar', N'MG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (139, N'Cameroon', N'CM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (140, N'Côte d''Ivoire', N'CI', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (141, N'Niger', N'NE', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (142, N'Burkina Faso', N'BF', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (143, N'Mali', N'ML', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (144, N'Malawi', N'MW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (145, N'Zambia', N'ZM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (146, N'Senegal', N'SN', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (147, N'Chad', N'TD', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (148, N'Somalia', N'SO', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (149, N'Zimbabwe', N'ZW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (150, N'Guinea', N'GN', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (151, N'Rwanda', N'RW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (152, N'Benin', N'BJ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (153, N'Burundi', N'BI', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (154, N'Tunisia', N'TN', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (155, N'South Sudan', N'SS', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (156, N'Eritrea', N'ER', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (157, N'Sierra Leone', N'SL', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (158, N'Togo', N'TG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (159, N'Libya', N'LY', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (160, N'Central African Republic', N'CF', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (161, N'Republic of the Congo', N'CG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (162, N'Liberia', N'LR', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (163, N'Mauritania', N'MR', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (164, N'Namibia', N'NA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (165, N'Botswana', N'BW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (166, N'Lesotho', N'LS', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (167, N'The Gambia', N'GM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (168, N'Gabon', N'GA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (169, N'Guinea-Bissau', N'GW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (170, N'Equatorial Guinea', N'GQ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (171, N'Djibouti', N'DJ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (172, N'Comoros', N'KM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (173, N'Cape Verde', N'CV', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (174, N'São Tomé and Príncipe', N'ST', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (175, N'Seychelles', N'SC', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (176, N'Mauritius', N'MU', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (177, N'Fiji', N'FJ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (178, N'Papua New Guinea', N'PG', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (179, N'New Zealand', N'NZ', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (180, N'Solomon Islands', N'SB', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (181, N'Vanuatu', N'VU', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (182, N'Samoa', N'WS', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (183, N'Kiribati', N'KI', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (184, N'Micronesia', N'FM', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (185, N'Tonga', N'TO', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (186, N'Palau', N'PW', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (187, N'Marshall Islands', N'MH', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (188, N'Tuvalu', N'TV', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (189, N'Nauru', N'NR', N'Asia Pacific')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (190, N'Costa Rica', N'CR', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (191, N'El Salvador', N'SV', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (192, N'Guatemala', N'GT', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (193, N'Honduras', N'HN', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (194, N'Nicaragua', N'NI', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (195, N'Panama', N'PA', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (196, N'Antigua and Barbuda', N'AG', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (197, N'Bahamas', N'BS', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (198, N'Barbados', N'BB', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (199, N'Cuba', N'CU', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (200, N'Dominica', N'DM', N'Americas')
GO
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (201, N'Dominican Republic', N'DO', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (202, N'Grenada', N'GD', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (203, N'Haiti', N'HT', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (204, N'Jamaica', N'JM', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (205, N'Saint Kitts and Nevis', N'KN', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (206, N'Saint Lucia', N'LC', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (207, N'Saint Vincent and the Grenadines', N'VC', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (208, N'Trinidad and Tobago', N'TT', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (209, N'Belize', N'BZ', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (210, N'Guyana', N'GY', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (211, N'Suriname', N'SR', N'Americas')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (212, N'Norway', N'NO', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (213, N'Sweden', N'SE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (214, N'Denmark', N'DK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (215, N'Finland', N'FI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (216, N'Iceland', N'IS', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (217, N'Estonia', N'EE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (218, N'Latvia', N'LV', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (219, N'Lithuania', N'LT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (220, N'Portugal', N'PT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (221, N'Spain', N'ES', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (222, N'Italy', N'IT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (223, N'Greece', N'GR', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (224, N'Croatia', N'HR', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (225, N'Bosnia and Herzegovina', N'BA', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (226, N'Albania', N'AL', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (227, N'Montenegro', N'ME', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (228, N'Serbia', N'RS', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (229, N'North Macedonia', N'MK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (230, N'Kosovo', N'XK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (231, N'Slovenia', N'SI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (232, N'Malta', N'MT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (233, N'Cyprus', N'CY', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (234, N'San Marino', N'SM', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (235, N'Vatican City', N'VA', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (236, N'Andorra', N'AD', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (237, N'Gibraltar', N'GI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (238, N'Monaco', N'MC', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (239, N'Liechtenstein', N'LI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (240, N'Russia', N'RU', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (241, N'Poland', N'PL', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (242, N'Ukraine', N'UA', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (243, N'Czech Republic', N'CZ', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (244, N'Slovakia', N'SK', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (245, N'Belarus', N'BY', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (246, N'Hungary', N'HU', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (247, N'Moldova', N'MD', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (248, N'Romania', N'RO', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (249, N'Bulgaria', N'BG', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (250, N'Lithuania', N'LT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (251, N'Latvia', N'LV', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (252, N'Estonia', N'EE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (253, N'United Kingdom', N'GB', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (254, N'France', N'FR', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (255, N'Germany', N'DE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (256, N'Switzerland', N'CH', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (257, N'Netherlands', N'NL', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (258, N'Belgium', N'BE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (259, N'Austria', N'AT', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (260, N'Ireland', N'IE', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (261, N'Luxembourg', N'LU', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (262, N'Monaco', N'MC', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (263, N'Liechtenstein', N'LI', N'Europe')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (264, N'Saudi Arabia', N'SA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (265, N'United Arab Emirates', N'AE', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (266, N'Iran', N'IR', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (267, N'Iraq', N'IQ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (268, N'Israel', N'IL', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (269, N'Kuwait', N'KW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (270, N'Oman', N'OM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (271, N'Qatar', N'QA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (272, N'Bahrain', N'BH', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (273, N'Jordan', N'JO', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (274, N'Lebanon', N'LB', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (275, N'Syria', N'SY', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (276, N'Cyprus', N'CY', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (277, N'Turkey', N'TR', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (278, N'Yemen', N'YE', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (279, N'Egypt', N'EG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (280, N'Algeria', N'DZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (281, N'Sudan', N'SD', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (282, N'Morocco', N'MA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (283, N'Tunisia', N'TN', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (284, N'Libya', N'LY', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (285, N'South Africa', N'ZA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (286, N'Zimbabwe', N'ZW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (287, N'Angola', N'AO', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (288, N'Mozambique', N'MZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (289, N'Namibia', N'NA', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (290, N'Botswana', N'BW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (291, N'Lesotho', N'LS', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (292, N'Eswatini', N'SZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (293, N'Malawi', N'MW', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (294, N'Zambia', N'ZM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (295, N'Madagascar', N'MG', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (296, N'Comoros', N'KM', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (297, N'Mauritius', N'MU', N'Middle East/Africa')
INSERT [dbo].[Country] ([Id], [CountryName], [IsoCode], [ContinentName]) VALUES (298, N'Seychelles', N'SC', N'Middle East/Africa')
GO
USE [master]
GO
ALTER DATABASE [world] SET  READ_WRITE 
GO
