SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;820494

-- SQRIBE/TABLE;820494
-- Adding 16 rows to dbo.umbracoDocument

BEGIN TRANSACTION

-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1056,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1085,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1142,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1144,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1145,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1146,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1156,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1157,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1194,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1197,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1209,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1213,0,1);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1214,0,1);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1217,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1218,1,0);
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1219,1,0);

COMMIT TRANSACTION

