SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 4 rows to dbo.cmsContentType

SET IDENTITY_INSERT [dbo].[cmsContentType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (531,1044,N'Member',N'icon-user',N'icon-user',NULL,0,0,0,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (532,1031,N'Folder',N'icon-folder',N'icon-folder',NULL,0,0,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (533,1032,N'Image',N'icon-picture',N'icon-picture',NULL,0,0,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (534,1033,N'File',N'icon-document',N'icon-document',NULL,0,0,1,0);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsContentType] OFF

