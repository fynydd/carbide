SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 4 rows to dbo.umbracoDomain

SET IDENTITY_INSERT [dbo].[umbracoDomain] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (7,1,1056,N'carbide.fynydd.com.local');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (10,1,1056,N'carbide.staging.fynydd.com');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (11,1,1085,N'bst.staging.fynydd.com');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (12,1,1085,N'bst.fynydd.com.local');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF

