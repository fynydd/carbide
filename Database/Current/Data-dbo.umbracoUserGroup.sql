SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 5 rows to dbo.umbracoUserGroup

SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoUserGroup] ([id],[userGroupAlias],[userGroupName],[userGroupDefaultPermissions],[createDate],[updateDate],[icon],[startContentId],[startMediaId]) VALUES (1,N'admin',N'Administrators',N'CADMOSKTPIURZ:5F7ï',CONVERT(datetime,'2019-05-29 18:29:07.720',121),CONVERT(datetime,'2019-05-29 18:29:07.720',121),N'icon-medal',-1,-1);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoUserGroup] ([id],[userGroupAlias],[userGroupName],[userGroupDefaultPermissions],[createDate],[updateDate],[icon],[startContentId],[startMediaId]) VALUES (2,N'writer',N'Writers',N'CAH:F',CONVERT(datetime,'2019-05-29 18:29:07.727',121),CONVERT(datetime,'2019-05-29 18:29:07.727',121),N'icon-edit',-1,-1);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoUserGroup] ([id],[userGroupAlias],[userGroupName],[userGroupDefaultPermissions],[createDate],[updateDate],[icon],[startContentId],[startMediaId]) VALUES (3,N'editor',N'Editors',N'CADMOSKTPUZ:5Fï',CONVERT(datetime,'2019-05-29 18:29:07.727',121),CONVERT(datetime,'2019-05-29 18:29:07.727',121),N'icon-tools',-1,-1);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoUserGroup] ([id],[userGroupAlias],[userGroupName],[userGroupDefaultPermissions],[createDate],[updateDate],[icon],[startContentId],[startMediaId]) VALUES (4,N'translator',N'Translators',N'AF',CONVERT(datetime,'2019-05-29 18:29:07.727',121),CONVERT(datetime,'2019-05-29 18:29:07.727',121),N'icon-globe',-1,-1);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoUserGroup] ([id],[userGroupAlias],[userGroupName],[userGroupDefaultPermissions],[createDate],[updateDate],[icon],[startContentId],[startMediaId]) VALUES (5,N'sensitiveData',N'Sensitive data',N'',CONVERT(datetime,'2019-05-29 18:29:07.727',121),CONVERT(datetime,'2019-05-29 18:29:07.727',121),N'icon-lock',-1,-1);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF

