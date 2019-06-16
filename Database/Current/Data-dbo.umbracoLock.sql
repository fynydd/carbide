SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 10 rows to dbo.umbracoLock

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-340,1,N'Languages');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-339,1,N'KeyValues');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-338,1,N'Domains');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-337,1,N'MemberTypes');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-336,1,N'MediaTypes');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-335,1,N'MemberTree');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-334,1,N'MediaTree');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-333,1,N'ContentTree');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-332,1,N'ContentTypes');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLock] ([id],[value],[name]) VALUES (-331,1,N'Servers');

COMMIT TRANSACTION

