USE [master]
GO
/****** Object:  Database [EdanLibraryDB]    Script Date: 7/21/2021 6:20:13 PM ******/
CREATE DATABASE [EdanLibraryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EdanLibraryDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EdanLibraryDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EdanLibraryDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EdanLibraryDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EdanLibraryDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EdanLibraryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EdanLibraryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EdanLibraryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EdanLibraryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EdanLibraryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EdanLibraryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EdanLibraryDB] SET  MULTI_USER 
GO
ALTER DATABASE [EdanLibraryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EdanLibraryDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EdanLibraryDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EdanLibraryDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EdanLibraryDB] SET  READ_WRITE 
GO
