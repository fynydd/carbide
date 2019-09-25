SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 4 rows to dbo.umbracoRelation

SET IDENTITY_INSERT [dbo].[umbracoRelation] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (1,1057,1058,3,CONVERT(datetime,'2019-06-04 16:18:20.697',121),N'');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (24,1173,1184,3,CONVERT(datetime,'2019-07-15 16:43:47.943',121),N'');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (43,1258,1259,1,CONVERT(datetime,'2019-08-07 15:17:04.453',121),N'');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoRelation] ([id],[parentId],[childId],[relType],[datetime],[comment]) VALUES (47,1261,1273,1,CONVERT(datetime,'2019-08-07 17:21:22.020',121),N'');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoRelation] OFF

