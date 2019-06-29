SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 9 rows to dbo.umbracoDocument

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1056,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1081,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1085,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1088,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1105,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1121,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1122,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1130,1,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1131,1,0);

COMMIT TRANSACTION

