SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 4 rows to dbo.cmsTemplate

SET IDENTITY_INSERT [dbo].[cmsTemplate] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias]) VALUES (1,1051,N'BasicHomepage');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias]) VALUES (2,1053,N'Master');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias]) VALUES (3,1120,N'BasicPage');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias]) VALUES (4,1216,N'XmlSiteMap');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF

