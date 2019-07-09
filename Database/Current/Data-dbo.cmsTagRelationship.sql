SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 6 rows to dbo.cmsTagRelationship

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTagRelationship] ([nodeId],[tagId],[propertyTypeId]) VALUES (1144,7,211);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTagRelationship] ([nodeId],[tagId],[propertyTypeId]) VALUES (1144,8,211);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTagRelationship] ([nodeId],[tagId],[propertyTypeId]) VALUES (1145,7,211);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTagRelationship] ([nodeId],[tagId],[propertyTypeId]) VALUES (1145,9,211);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTagRelationship] ([nodeId],[tagId],[propertyTypeId]) VALUES (1146,7,211);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTagRelationship] ([nodeId],[tagId],[propertyTypeId]) VALUES (1146,10,211);

COMMIT TRANSACTION

