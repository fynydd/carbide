SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 9 rows to dbo.umbracoContent

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1056,1052);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1057,1031);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1058,1032);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1071,1032);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1072,1032);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1073,1032);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1078,1077);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1080,1079);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContent] ([nodeId],[contentTypeId]) VALUES (1081,1069);

COMMIT TRANSACTION

