SET NUMERIC_ROUNDABORT OFF
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
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (25,1197,1209,1,CONVERT(datetime,'2019-07-25 11:26:05.337',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (26,1197,1213,1,CONVERT(datetime,'2019-07-25 14:37:56.060',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (27,1157,1213,2,CONVERT(datetime,'2019-07-25 14:38:02.780',121),N'');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (28,1056,1214,2,CONVERT(datetime,'2019-07-25 14:39:43.527',121),N'');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoRelation] OFF

