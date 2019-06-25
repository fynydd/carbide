﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 5 rows to dbo.cmsContentTypeAllowedContentType

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1031,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1032,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1031,1033,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1052,1069,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsContentTypeAllowedContentType] ([Id],[AllowedId],[SortOrder]) VALUES (1052,1098,1);

COMMIT TRANSACTION

