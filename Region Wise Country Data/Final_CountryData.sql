USE [master]
GO
/****** Object:  Database [CountryData]    Script Date: 5/9/2024 3:19:41 PM ******/
CREATE DATABASE [CountryData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CountryData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CountryData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CountryData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CountryData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CountryData] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CountryData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CountryData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CountryData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CountryData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CountryData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CountryData] SET ARITHABORT OFF 
GO
ALTER DATABASE [CountryData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CountryData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CountryData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CountryData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CountryData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CountryData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CountryData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CountryData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CountryData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CountryData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CountryData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CountryData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CountryData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CountryData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CountryData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CountryData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CountryData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CountryData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CountryData] SET  MULTI_USER 
GO
ALTER DATABASE [CountryData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CountryData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CountryData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CountryData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CountryData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CountryData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CountryData] SET QUERY_STORE = ON
GO
ALTER DATABASE [CountryData] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CountryData]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/9/2024 3:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[CountryName] [varchar](100) NULL,
	[ISOCode] [char](2) NULL,
	[RegionName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (1, N'Antigua and Barbuda', N'AG', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (2, N'Argentina', N'AR', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (3, N'Bahamas', N'BS', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (4, N'Barbados', N'BB', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (5, N'Belize', N'BZ', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (6, N'Bolivia', N'BO', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (7, N'Brazil', N'BR', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (8, N'Canada', N'CA', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (9, N'Chile', N'CL', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (10, N'Colombia', N'CO', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (11, N'Costa Rica', N'CR', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (12, N'Cuba', N'CU', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (13, N'Dominica', N'DM', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (14, N'Dominican Republic', N'DO', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (15, N'Ecuador', N'EC', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (16, N'El Salvador', N'SV', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (17, N'Grenada', N'GD', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (18, N'Guatemala', N'GT', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (19, N'Guyana', N'GY', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (20, N'Haiti', N'HT', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (21, N'Honduras', N'HN', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (22, N'Jamaica', N'JM', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (23, N'Mexico', N'MX', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (24, N'Nicaragua', N'NI', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (25, N'Panama', N'PA', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (26, N'Paraguay', N'PY', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (27, N'Peru', N'PE', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (28, N'Saint Kitts and Nevis', N'KN', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (29, N'Saint Lucia', N'LC', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (30, N'Saint Vincent and the Grenadines', N'VC', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (31, N'Suriname', N'SR', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (32, N'Trinidad and Tobago', N'TT', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (33, N'United States', N'US', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (34, N'Uruguay', N'UY', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (35, N'Venezuela', N'VE', N'Americas')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (36, N'Albania', N'AL', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (37, N'Andorra', N'AD', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (38, N'Austria', N'AT', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (39, N'Belarus', N'BY', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (40, N'Belgium', N'BE', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (41, N'Bosnia and Herzegovina', N'BA', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (42, N'Bulgaria', N'BG', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (43, N'Croatia', N'HR', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (44, N'Cyprus', N'CY', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (45, N'Czech Republic', N'CZ', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (46, N'Denmark', N'DK', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (47, N'Estonia', N'EE', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (48, N'Finland', N'FI', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (49, N'France', N'FR', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (50, N'Germany', N'DE', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (51, N'Greece', N'GR', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (52, N'Hungary', N'HU', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (53, N'Iceland', N'IS', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (54, N'Ireland', N'IE', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (55, N'Italy', N'IT', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (56, N'Kosovo', N'XK', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (57, N'Latvia', N'LV', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (58, N'Liechtenstein', N'LI', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (59, N'Lithuania', N'LT', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (60, N'Luxembourg', N'LU', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (61, N'Malta', N'MT', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (62, N'Moldova', N'MD', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (63, N'Monaco', N'MC', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (64, N'Montenegro', N'ME', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (65, N'Netherlands', N'NL', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (66, N'North Macedonia', N'MK', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (67, N'Norway', N'NO', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (68, N'Poland', N'PL', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (69, N'Portugal', N'PT', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (70, N'Romania', N'RO', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (71, N'Russia', N'RU', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (72, N'San Marino', N'SM', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (73, N'Serbia', N'RS', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (74, N'Slovakia', N'SK', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (75, N'Slovenia', N'SI', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (76, N'Spain', N'ES', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (77, N'Sweden', N'SE', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (78, N'Switzerland', N'CH', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (79, N'Ukraine', N'UA', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (80, N'United Kingdom', N'GB', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (81, N'Vatican City', N'VA', N'Europe')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (82, N'Afghanistan', N'AF', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (83, N'Australia', N'AU', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (84, N'Bangladesh', N'BD', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (85, N'Bhutan', N'BT', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (86, N'Brunei', N'BN', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (87, N'Cambodia', N'KH', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (88, N'China', N'CN', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (89, N'Fiji', N'FJ', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (90, N'India', N'IN', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (91, N'Indonesia', N'ID', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (92, N'Japan', N'JP', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (93, N'Kazakhstan', N'KZ', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (94, N'Kiribati', N'KI', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (95, N'Kyrgyzstan', N'KG', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (96, N'Laos', N'LA', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (97, N'Malaysia', N'MY', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (98, N'Maldives', N'MV', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (99, N'Marshall Islands', N'MH', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (100, N'Micronesia', N'FM', N'Asia Pacific')
GO
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (101, N'Mongolia', N'MN', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (102, N'Myanmar (Burma)', N'MM', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (103, N'Nauru', N'NR', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (104, N'Nepal', N'NP', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (105, N'New Zealand', N'NZ', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (106, N'North Korea', N'KP', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (107, N'Pakistan', N'PK', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (108, N'Palau', N'PW', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (109, N'Papua New Guinea', N'PG', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (110, N'Philippines', N'PH', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (111, N'Samoa', N'WS', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (112, N'Singapore', N'SG', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (113, N'Solomon Islands', N'SB', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (114, N'South Korea', N'KR', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (115, N'Sri Lanka', N'LK', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (116, N'Tajikistan', N'TJ', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (117, N'Thailand', N'TH', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (118, N'Timor-Leste', N'TL', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (119, N'Tonga', N'TO', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (120, N'Turkmenistan', N'TM', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (121, N'Tuvalu', N'TV', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (122, N'Uzbekistan', N'UZ', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (123, N'Vanuatu', N'VU', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (124, N'Vietnam', N'VN', N'Asia Pacific')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (125, N'Algeria', N'DZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (126, N'Angola', N'AO', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (127, N'Bahrain', N'BH', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (128, N'Benin', N'BJ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (129, N'Botswana', N'BW', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (130, N'Burkina Faso', N'BF', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (131, N'Burundi', N'BI', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (132, N'Cameroon', N'CM', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (133, N'Cape Verde', N'CV', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (134, N'Central African Republic', N'CF', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (135, N'Chad', N'TD', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (136, N'Comoros', N'KM', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (137, N'Republic of the Congo', N'CG', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (138, N'Democratic Republic of the Congo', N'CD', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (139, N'Djibouti', N'DJ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (140, N'Egypt', N'EG', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (141, N'Equatorial Guinea', N'GQ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (142, N'Eritrea', N'ER', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (143, N'Eswatini', N'SZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (144, N'Ethiopia', N'ET', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (145, N'Gabon', N'GA', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (146, N'Gambia', N'GM', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (147, N'Ghana', N'GH', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (148, N'Guinea', N'GN', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (149, N'Guinea-Bissau', N'GW', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (150, N'Iran', N'IR', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (151, N'Iraq', N'IQ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (152, N'Israel', N'IL', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (153, N'Ivory Coast', N'CI', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (154, N'Jordan', N'JO', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (155, N'Kenya', N'KE', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (156, N'Kuwait', N'KW', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (157, N'Lebanon', N'LB', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (158, N'Lesotho', N'LS', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (159, N'Liberia', N'LR', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (160, N'Libya', N'LY', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (161, N'Madagascar', N'MG', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (162, N'Malawi', N'MW', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (163, N'Mali', N'ML', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (164, N'Mauritania', N'MR', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (165, N'Mauritius', N'MU', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (166, N'Morocco', N'MA', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (167, N'Mozambique', N'MZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (168, N'Namibia', N'NA', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (169, N'Niger', N'NE', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (170, N'Nigeria', N'NG', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (171, N'Oman', N'OM', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (172, N'Palestine', N'PS', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (173, N'Qatar', N'QA', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (174, N'Rwanda', N'RW', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (175, N'São Tomé and Príncipe', N'ST', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (176, N'Saudi Arabia', N'SA', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (177, N'Senegal', N'SN', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (178, N'Seychelles', N'SC', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (179, N'Sierra Leone', N'SL', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (180, N'Somalia', N'SO', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (181, N'South Africa', N'ZA', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (182, N'South Sudan', N'SS', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (183, N'Sudan', N'SD', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (184, N'Syria', N'SY', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (185, N'Tanzania', N'TZ', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (186, N'Togo', N'TG', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (187, N'Tunisia', N'TN', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (188, N'Turkey', N'TR', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (189, N'Uganda', N'UG', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (190, N'United Arab Emirates', N'AE', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (191, N'Zambia', N'ZM', N'Middle East/Africa')
INSERT [dbo].[Country] ([ID], [CountryName], [ISOCode], [RegionName]) VALUES (192, N'Zimbabwe', N'ZW', N'Middle East/Africa')
GO
USE [master]
GO
ALTER DATABASE [CountryData] SET  READ_WRITE 
GO
