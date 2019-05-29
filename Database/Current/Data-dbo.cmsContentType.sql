SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 11 rows to dbo.cmsContentType

SET IDENTITY_INSERT [dbo].[cmsContentType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (531,1044,N'Member',N'icon-user',N'icon-user',NULL,0,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (532,1031,N'Folder',N'icon-folder',N'icon-folder',NULL,0,0,1,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (533,1032,N'Image',N'icon-picture',N'icon-picture',NULL,0,0,1,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (534,1033,N'File',N'icon-document',N'icon-document',NULL,0,0,1,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (535,1051,N'quotation',N'icon-quote color-black',N'folder.png',NULL,0,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (536,1052,N'person',N'icon-umb-users color-black',N'folder.png',NULL,0,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (537,1056,N'people',N'icon-users-alt color-black',N'folder.png',NULL,1,0,1,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (538,1060,N'source',N'icon-newspaper-alt color-black',N'folder.png',NULL,0,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (539,1062,N'sources',N'icon-newspaper color-black',N'folder.png',NULL,1,0,1,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (540,1066,N'quotations',N'icon-quote color-black',N'folder.png',NULL,1,0,1,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (541,21640,N'homePage',N'icon-home color-black',N'folder.png',NULL,0,0,1,0);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsContentType] OFF

