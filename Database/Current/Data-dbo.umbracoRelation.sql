﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 6 rows to dbo.umbracoRelation

SET IDENTITY_INSERT [dbo].[umbracoRelation] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (1,1057,1058,3,CONVERT(datetime,'2019-06-04 16:18:20.697',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (24,1173,1184,3,CONVERT(datetime,'2019-07-15 16:43:47.943',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (43,1258,1259,1,CONVERT(datetime,'2019-08-07 15:17:04.453',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (44,1248,1260,2,CONVERT(datetime,'2019-08-07 15:24:55.530',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (45,1249,1271,2,CONVERT(datetime,'2019-08-07 17:10:56.790',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (46,1248,1272,2,CONVERT(datetime,'2019-08-07 17:11:04.083',121),N'');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoRelation] OFF

