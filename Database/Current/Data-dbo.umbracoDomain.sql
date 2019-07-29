SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;820494

-- SQRIBE/TABLE;820494
-- Adding 5 rows to dbo.umbracoDomain

SET IDENTITY_INSERT [dbo].[umbracoDomain] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (4,1,1056,N'carbideone.staging.fynydd.com');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (5,1,1085,N'carbidetwo.staging.fynydd.com');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (7,1,1056,N'carbide.fynydd.com.local');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (8,1,1056,N'carbideone.fynydd.com.local');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (9,1,1085,N'carbidetwo.fynydd.com.local');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF

