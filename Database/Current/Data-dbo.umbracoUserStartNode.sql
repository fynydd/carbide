﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 2 rows to dbo.umbracoUserStartNode

SET IDENTITY_INSERT [dbo].[umbracoUserStartNode] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoUserStartNode] ([id],[userId],[startNode],[startNodeType]) VALUES (2,1,1124,2);
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoUserStartNode] ([id],[userId],[startNode],[startNodeType]) VALUES (3,1,1232,1);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoUserStartNode] OFF

