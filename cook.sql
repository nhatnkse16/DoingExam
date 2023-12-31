USE [master]
GO
/****** Object:  Database [NhatN]    Script Date: 11/28/2023 4:23:00 PM ******/
CREATE DATABASE [QUESTION ADD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NhatN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\NhatN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NhatN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\NhatN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [NhatN] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NhatN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NhatN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NhatN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NhatN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NhatN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhatN] SET ARITHABORT OFF 
GO
ALTER DATABASE [NhatN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NhatN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NhatN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NhatN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NhatN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NhatN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NhatN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NhatN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NhatN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NhatN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NhatN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NhatN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NhatN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NhatN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NhatN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NhatN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NhatN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NhatN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NhatN] SET  MULTI_USER 
GO
ALTER DATABASE [NhatN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NhatN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NhatN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NhatN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NhatN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NhatN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NhatN] SET QUERY_STORE = ON
GO
ALTER DATABASE [NhatN] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUESTION ADD]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/28/2023 4:23:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](150) NULL,
	[email] [nvarchar](150) NULL,
	[idClass] [int] NULL,
	[idRole] [int] NULL,
	[fullName] [nvarchar](250) NULL,
	[idGender] [int] NULL,
	[idStatus] [int] NULL,
	[dob] [date] NULL,
	[phoneNumber] [nchar](10) NULL,
	[image] [nvarchar](max) NULL,
	[idGoogleLogin] [nchar](100) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 11/28/2023 4:23:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[idAnswer] [int] IDENTITY(1,1) NOT NULL,
	[answerDetail] [nvarchar](max) NULL,
	[idQuestion] [int] NULL,
	[isCorrect] [bit] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[idAnswer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 11/28/2023 4:23:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[idClass] [int] IDENTITY(1,1) NOT NULL,
	[className] [nvarchar](250) NULL,
	[classPassword] [nvarchar](150) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 11/28/2023 4:23:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[idUser] [int] NULL,
	[idExam] [int] NULL,
	[idQuestion] [int] NULL,
	[collection] [nchar](10) NULL,
	[grade] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[idCourse] [int] IDENTITY(1,1) NOT NULL,
	[courseName] [nvarchar](250) NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[idCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[idExam] [int] IDENTITY(1,1) NOT NULL,
	[examName] [nvarchar](250) NULL,
	[password] [nvarchar](150) NULL,
	[createDate] [date] NULL,
	[numberQuestion] [int] NULL,
	[limitTime] [int] NULL,
	[idUser] [int] NULL,
	[vote] [int] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[idExam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamClass]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamClass](
	[idClass] [int] NULL,
	[idExam] [int] NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[idGender] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[idGender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionBanking]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionBanking](
	[idQuestion] [int] IDENTITY(1,1) NOT NULL,
	[questionDetail] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[idCourse] [int] NULL,
	[idUser] [int] NULL,
 CONSTRAINT [PK_QuestionBanking] PRIMARY KEY CLUSTERED 
(
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionChoice]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionChoice](
	[idExam] [int] NULL,
	[idQuestion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[idRole] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[idUser] [int] NULL,
	[idExam] [int] NULL,
	[totalScore] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/28/2023 4:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[idStatus] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[idStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Class] FOREIGN KEY([idClass])
REFERENCES [dbo].[Class] ([idClass])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Class]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Gender] FOREIGN KEY([idGender])
REFERENCES [dbo].[Gender] ([idGender])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Gender]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([idRole])
REFERENCES [dbo].[Role] ([idRole])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Status] FOREIGN KEY([idStatus])
REFERENCES [dbo].[Status] ([idStatus])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Status]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_QuestionBanking] FOREIGN KEY([idQuestion])
REFERENCES [dbo].[QuestionBanking] ([idQuestion])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_QuestionBanking]
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_Account] FOREIGN KEY([idUser])
REFERENCES [dbo].[Account] ([idUser])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_Account]
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_Exam] FOREIGN KEY([idExam])
REFERENCES [dbo].[Exam] ([idExam])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_Exam]
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_QuestionBanking] FOREIGN KEY([idQuestion])
REFERENCES [dbo].[QuestionBanking] ([idQuestion])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_QuestionBanking]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Account] FOREIGN KEY([idUser])
REFERENCES [dbo].[Account] ([idUser])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Account]
GO
ALTER TABLE [dbo].[ExamClass]  WITH CHECK ADD  CONSTRAINT [FK_ExamClass_Class] FOREIGN KEY([idClass])
REFERENCES [dbo].[Class] ([idClass])
GO
ALTER TABLE [dbo].[ExamClass] CHECK CONSTRAINT [FK_ExamClass_Class]
GO
ALTER TABLE [dbo].[ExamClass]  WITH CHECK ADD  CONSTRAINT [FK_ExamClass_Exam] FOREIGN KEY([idExam])
REFERENCES [dbo].[Exam] ([idExam])
GO
ALTER TABLE [dbo].[ExamClass] CHECK CONSTRAINT [FK_ExamClass_Exam]
GO
ALTER TABLE [dbo].[QuestionBanking]  WITH CHECK ADD  CONSTRAINT [FK_QuestionBanking_Account] FOREIGN KEY([idUser])
REFERENCES [dbo].[Account] ([idUser])
GO
ALTER TABLE [dbo].[QuestionBanking] CHECK CONSTRAINT [FK_QuestionBanking_Account]
GO
ALTER TABLE [dbo].[QuestionBanking]  WITH CHECK ADD  CONSTRAINT [FK_QuestionBanking_Course] FOREIGN KEY([idCourse])
REFERENCES [dbo].[Course] ([idCourse])
GO
ALTER TABLE [dbo].[QuestionBanking] CHECK CONSTRAINT [FK_QuestionBanking_Course]
GO
ALTER TABLE [dbo].[QuestionChoice]  WITH CHECK ADD  CONSTRAINT [FK_QuestionChoice_Exam] FOREIGN KEY([idExam])
REFERENCES [dbo].[Exam] ([idExam])
GO
ALTER TABLE [dbo].[QuestionChoice] CHECK CONSTRAINT [FK_QuestionChoice_Exam]
GO
ALTER TABLE [dbo].[QuestionChoice]  WITH CHECK ADD  CONSTRAINT [FK_QuestionChoice_QuestionBanking] FOREIGN KEY([idExam])
REFERENCES [dbo].[QuestionBanking] ([idQuestion])
GO
ALTER TABLE [dbo].[QuestionChoice] CHECK CONSTRAINT [FK_QuestionChoice_QuestionBanking]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Account] FOREIGN KEY([idUser])
REFERENCES [dbo].[Account] ([idUser])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Account]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Exam] FOREIGN KEY([idExam])
REFERENCES [dbo].[Exam] ([idExam])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Exam]
GO
USE [master]
GO
ALTER DATABASE [NhatN] SET  READ_WRITE 
GO
