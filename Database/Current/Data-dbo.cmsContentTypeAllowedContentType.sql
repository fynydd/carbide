SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 5 rows to dbo.cmsContentTypeAllowedContentType

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1031,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1032,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1033,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1077,1079,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1079,1069,0);

COMMIT TRANSACTION

