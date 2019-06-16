﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 8 rows to dbo.umbracoDocument

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1056,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1078,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1080,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1081,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1085,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1086,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1087,1,0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDocument] ([nodeId],[published],[edited]) VALUES (1088,1,0);

COMMIT TRANSACTION

