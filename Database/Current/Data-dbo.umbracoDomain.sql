SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 2 rows to dbo.umbracoDomain

SET IDENTITY_INSERT [dbo].[umbracoDomain] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (1,1,1056,N'bolide1.staging.fynydd.com');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDomain] ([id],[domainDefaultLanguage],[domainRootStructureID],[domainName]) VALUES (3,1,1085,N'bolide2.staging.fynydd.com');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF

