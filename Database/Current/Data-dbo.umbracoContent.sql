SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 16 rows to dbo.umbracoContent

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1056,1052);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1057,1031);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1058,1032);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1071,1032);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1072,1032);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1073,1032);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1085,1052);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1124,1031);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1125,1031);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1127,1032);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1142,1141);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1144,1119);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1145,1119);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1146,1119);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1156,1155);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1157,1119);

COMMIT TRANSACTION

