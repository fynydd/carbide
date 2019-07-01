SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 10 rows to dbo.cmsContentType2ContentType

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1052);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1069);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1098);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1119);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1129);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1135);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1101,1052);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1103,1052);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1110,1052);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1110,1119);

COMMIT TRANSACTION

