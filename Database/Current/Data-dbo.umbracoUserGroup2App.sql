SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;820494

-- SQRIBE/TABLE;820494
-- Adding 12 rows to dbo.umbracoUserGroup2App

BEGIN TRANSACTION

-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'content');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'forms');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'media');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'member');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'packages');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'settings');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'users');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (2,N'content');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (3,N'content');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (3,N'forms');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (3,N'media');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (4,N'translation');

COMMIT TRANSACTION

