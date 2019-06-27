SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 6 rows to dbo.cmsContentType2ContentType

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1052);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1069);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1075,1098);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1101,1052);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1103,1052);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentType2ContentType] ([parentContentTypeId],[childContentTypeId]) VALUES (1110,1052);

COMMIT TRANSACTION

