SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 11 rows to dbo.cmsContentTypeAllowedContentType

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1031,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1032,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1033,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1052,1069,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1052,1119,1);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1052,1129,2);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1052,1135,3);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1119,1069,0);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1119,1119,1);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1119,1129,2);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1129,1098,0);

COMMIT TRANSACTION

