SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 17 rows to dbo.cmsContentType

SET IDENTITY_INSERT [dbo].[cmsContentType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (531,1044,N'Member',N'icon-user',N'icon-user',NULL,0,0,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (532,1031,N'Folder',N'icon-folder',N'icon-folder',NULL,0,0,1,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (533,1032,N'Image',N'icon-picture',N'icon-picture',NULL,0,0,1,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (534,1033,N'File',N'icon-document',N'icon-document',NULL,0,0,1,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (535,1052,N'basicHomepage',N'icon-home color-black',N'folder.png',N'Uses eyebrow, primary, footer, and ground navigations (if present)',0,0,1,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (537,1063,N'carbideSimpleHeroFrame',N'icon-frame-alt color-black',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (538,1069,N'carbideSimpleHeroUnit',N'icon-slideshow color-black',N'folder.png',N'Full-width image backgrounds with title, text, and button (crossfade animation)',0,0,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (539,1075,N'cSSProperties',N'icon-code color-black',N'folder.png',N'For each breakpoint, enter any CSS custom property variables to override the appearance of the component.',0,1,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (544,1098,N'carbideRichContentSubunit',N'icon-newspaper-alt color-black',N'folder.png',N'One or two column rich text with headline and button',0,0,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (545,1101,N'companyInfo',N'icon-info color-black',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (547,1103,N'fonts',N'icon-font color-black',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (549,1110,N'pageProperties',N'icon-settings color-black',N'folder.png',NULL,0,1,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (551,1119,N'basicPage',N'icon-umb-content color-black',N'folder.png',N'Uses eyebrow, primary, footer, and ground navigations (if present)',0,0,1,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (553,1129,N'carbideContainerUnit',N'icon-checkbox-dotted color-black',N'folder.png',N'Creates a spaced container for subunit content',0,0,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (554,1135,N'carbideBasicNavigationUnit',N'icon-link color-black',N'folder.png',N'Add primary and footer navigation bars to the home page for site-wide navigation',0,0,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (555,1140,N'carbidePortfolioViewSubunit',N'icon-item-arrangement color-black',N'folder.png',N'Display pages as a gallery of items (e.g. services, samples, photos, and more)',0,0,0,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[isElement],[allowAtRoot],[variations]) VALUES (556,1141,N'carbidePageCollectionUnit',N'icon-server-alt color-black',N'folder.png',N'Container for pages that is not, itself, a viewable page; uses a list view',0,0,0,0);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsContentType] OFF

