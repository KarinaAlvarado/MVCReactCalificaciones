USE [master]
GO
/****** Object:  Database [calificaciones]    Script Date: 21/07/2023 05:50:35 p. m. ******/
CREATE DATABASE [calificaciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'calificaciones', FILENAME = N'C:\Users\karin\calificaciones.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'calificaciones_log', FILENAME = N'C:\Users\karin\calificaciones_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [calificaciones] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [calificaciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [calificaciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [calificaciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [calificaciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [calificaciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [calificaciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [calificaciones] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [calificaciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [calificaciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [calificaciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [calificaciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [calificaciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [calificaciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [calificaciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [calificaciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [calificaciones] SET  ENABLE_BROKER 
GO
ALTER DATABASE [calificaciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [calificaciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [calificaciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [calificaciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [calificaciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [calificaciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [calificaciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [calificaciones] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [calificaciones] SET  MULTI_USER 
GO
ALTER DATABASE [calificaciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [calificaciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [calificaciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [calificaciones] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [calificaciones] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [calificaciones] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [calificaciones] SET QUERY_STORE = OFF
GO
USE [calificaciones]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 21/07/2023 05:50:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Calificacion] [int] NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [Apellido], [Calificacion]) VALUES (1, N'Maria Isabel', N'Reyes', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [Apellido], [Calificacion]) VALUES (2, N'Jesus', N'Torres', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [Apellido], [Calificacion]) VALUES (3, N'Carlota', N'Zavala Juarez', 8)
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
USE [master]
GO
ALTER DATABASE [calificaciones] SET  READ_WRITE 
GO
