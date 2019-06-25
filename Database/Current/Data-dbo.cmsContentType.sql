﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 14 rows to dbo.cmsContentType

SET IDENTITY_INSERT [dbo].[cmsContentType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (531,1044,N'Member',N'icon-user',N'icon-user',NULL,0,0,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (532,1031,N'Folder',N'icon-folder',N'icon-folder',NULL,0,0,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (533,1032,N'Image',N'icon-picture',N'icon-picture',NULL,0,0,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (534,1033,N'File',N'icon-document',N'icon-document',NULL,0,0,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (535,1052,N'homepage',N'icon-home color-black',N'folder.png',NULL,0,0,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (536,1055,N'sEO',N'icon-document',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (537,1063,N'bolideSimpleHeroFrame',N'icon-frame-alt color-black',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (538,1069,N'bolideSimpleHero',N'icon-slideshow color-black',N'folder.png',NULL,0,0,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (539,1075,N'cSSProperties',N'icon-document',N'folder.png',N'For each breakpoint, enter any CSS custom property variables to override the appearance of the component.',0,1,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (540,1077,N'components',N'icon-server-alt color-black',N'folder.png',N'Content components you can use on your pages.',0,0,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (541,1079,N'componentGroup',N'icon-brick color-black',N'folder.png',N'Content for a specific component type',1,0,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (542,1083,N'componentPicker',N'icon-server-alt color-black',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (543,1093,N'bolideSettings',N'icon-settings color-black',N'folder.png',NULL,0,0,0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (544,1098,N'bolideRichContent',N'icon-font color-black',N'folder.png',NULL,0,1,0,0);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsContentType] OFF

