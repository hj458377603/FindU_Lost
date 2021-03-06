USE [master]
GO
/****** Object:  Database [FindU_Lost]    Script Date: 2013/9/8 22:33:41 ******/
CREATE DATABASE [FindU_Lost]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FindU_Lost', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\FindU_Lost.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FindU_Lost_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\FindU_Lost_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FindU_Lost] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FindU_Lost].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FindU_Lost] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FindU_Lost] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FindU_Lost] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FindU_Lost] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FindU_Lost] SET ARITHABORT OFF 
GO
ALTER DATABASE [FindU_Lost] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FindU_Lost] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FindU_Lost] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FindU_Lost] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FindU_Lost] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FindU_Lost] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FindU_Lost] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FindU_Lost] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FindU_Lost] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FindU_Lost] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FindU_Lost] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FindU_Lost] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FindU_Lost] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FindU_Lost] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FindU_Lost] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FindU_Lost] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FindU_Lost] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FindU_Lost] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FindU_Lost] SET RECOVERY FULL 
GO
ALTER DATABASE [FindU_Lost] SET  MULTI_USER 
GO
ALTER DATABASE [FindU_Lost] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FindU_Lost] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FindU_Lost] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FindU_Lost] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FindU_Lost', N'ON'
GO
USE [FindU_Lost]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2013/9/8 22:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserId] [int] IDENTITY(20130830,1) NOT NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_UserName_Account] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccountInfo]    Script Date: 2013/9/8 22:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountInfo](
	[UserId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[TimeRegister] [datetime] NOT NULL,
	[TimeLastLogin] [datetime] NULL,
	[LoginErrorCount] [int] NOT NULL,
 CONSTRAINT [PK_AccountInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FindGoods]    Script Date: 2013/9/8 22:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FindGoods](
	[FindGoodsId] [int] IDENTITY(1,1) NOT NULL,
	[FindDescription] [nvarchar](200) NOT NULL,
	[TimeFind] [datetime] NOT NULL,
	[location] [nvarchar](30) NULL,
	[longitude] [nvarchar](20) NULL,
	[latitude] [nvarchar](20) NULL,
	[GoodsId] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_FindGoods] PRIMARY KEY CLUSTERED 
(
	[FindGoodsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Goods]    Script Date: 2013/9/8 22:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[GoodsId] [nvarchar](50) NOT NULL,
	[GoodsTypeId] [int] NOT NULL,
	[GoodsName] [nvarchar](20) NULL,
	[GoodsDescription] [nvarchar](140) NOT NULL,
	[GoodsImgUrl] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[GoodsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2013/9/8 22:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] NOT NULL,
	[RealName] [nvarchar](20) NULL,
	[Tel] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[IsMale] [bit] NULL,
	[Department] [nvarchar](50) NULL,
	[Birthday] [datetime] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Email_UserInfo] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AccountInfo]  WITH CHECK ADD  CONSTRAINT [FK_AccountInfo_Account] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([UserId])
GO
ALTER TABLE [dbo].[AccountInfo] CHECK CONSTRAINT [FK_AccountInfo_Account]
GO
ALTER TABLE [dbo].[FindGoods]  WITH CHECK ADD  CONSTRAINT [FK_FindGoods_Goods] FOREIGN KEY([GoodsId])
REFERENCES [dbo].[Goods] ([GoodsId])
GO
ALTER TABLE [dbo].[FindGoods] CHECK CONSTRAINT [FK_FindGoods_Goods]
GO
ALTER TABLE [dbo].[FindGoods]  WITH CHECK ADD  CONSTRAINT [FK_FindGoods_UserInfo] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserInfo] ([UserId])
GO
ALTER TABLE [dbo].[FindGoods] CHECK CONSTRAINT [FK_FindGoods_UserInfo]
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([UserId])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名（唯一键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID（主键，外键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountInfo', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户状态（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountInfo', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountInfo', @level2type=N'COLUMN',@level2name=N'TimeRegister'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近一次登陆时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountInfo', @level2type=N'COLUMN',@level2name=N'TimeLastLogin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆失败次数（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountInfo', @level2type=N'COLUMN',@level2name=N'LoginErrorCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'捡到物品主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'FindGoodsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'捡到的描述（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'FindDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'捡到的时间（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'TimeFind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'捡到的地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'捡到地点的经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'捡到地点的纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品Id(外键)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'GoodsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id（外键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FindGoods', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品编号（主键，非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品类别编号（枚举，非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品描述（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品的图片地址（非空）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsImgUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID（主键，外键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱(唯一键，可以为空)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是男性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'IsMale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
USE [master]
GO
ALTER DATABASE [FindU_Lost] SET  READ_WRITE 
GO
