SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 10 rows to dbo.umbracoLock

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-340,1,N'Languages');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-339,1,N'KeyValues');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-338,1,N'Domains');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-337,1,N'MemberTypes');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-336,1,N'MediaTypes');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-335,1,N'MemberTree');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-334,-1,N'MediaTree');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-333,1,N'ContentTree');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-332,-1,N'ContentTypes');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-331,-1,N'Servers');

COMMIT TRANSACTION

