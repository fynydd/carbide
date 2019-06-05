SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 8 rows to dbo.umbracoDocumentVersion

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (1,1051,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (2,1051,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (5,1051,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (6,1051,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (8,1051,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (10,1051,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (12,1051,1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocumentVersion] ([id],[templateId],[published]) VALUES (13,1051,0);

COMMIT TRANSACTION

