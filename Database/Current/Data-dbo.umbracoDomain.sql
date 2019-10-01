SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 6 rows to dbo.umbracoDomain

SET IDENTITY_INSERT [dbo].[umbracoDomain] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (15,1,1232,N'carbide.staging.fynydd.com');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (17,1,1243,N'carbide2.staging.fynydd.com');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (19,1,1232,N'carbide.local');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (21,1,1243,N'carbide2.local');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (22,1,1232,N'localhost');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (23,1,1232,N'gms.local');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF

