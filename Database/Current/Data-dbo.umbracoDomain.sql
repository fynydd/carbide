SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 2 rows to dbo.umbracoDomain

SET IDENTITY_INSERT [dbo].[umbracoDomain] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (4,1,1056,N'carbideone.staging.fynydd.com');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (5,1,1085,N'carbidetwo.staging.fynydd.com');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF

