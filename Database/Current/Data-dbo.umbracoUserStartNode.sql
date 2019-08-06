﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 1 row to dbo.umbracoUserStartNode

SET IDENTITY_INSERT [dbo].[umbracoUserStartNode] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoUserStartNode] ([id],[userId],[startNode],[startNodeType]) VALUES (2,1,1124,2);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoUserStartNode] OFF

