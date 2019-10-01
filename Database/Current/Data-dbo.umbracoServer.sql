﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 6 rows to dbo.umbracoServer

SET IDENTITY_INSERT [dbo].[umbracoServer] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (1,N'https://10.0.11.2/umbraco',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-05-29 18:29:43.447',121),CONVERT(datetime,'2019-06-16 22:57:46.077',121),0,0);
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (2,N'http://carbide.fynydd.com.local/umbraco',N'DESKTOP-9F22GQS//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-06-18 19:21:03.757',121),CONVERT(datetime,'2019-08-08 18:05:55.253',121),0,0);
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (3,N'https://localhost/umbraco',N'DESKTOP-9F22GQS//LM/W3SVC/3/ROOT',CONVERT(datetime,'2019-07-30 17:20:10.287',121),CONVERT(datetime,'2019-07-30 17:21:10.353',121),0,0);
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (4,N'http://10.0.11.2/umbraco',N'DESKTOP-9F22GQS//LM/W3SVC/2/ROOT',CONVERT(datetime,'2019-07-30 18:10:38.930',121),CONVERT(datetime,'2019-07-30 18:12:20.540',121),0,0);
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (5,N'http://carbide.staging.fynydd.com/umbraco',N'TOPAZ//LM/W3SVC/26/ROOT',CONVERT(datetime,'2019-08-08 18:07:27.527',121),CONVERT(datetime,'2019-09-04 18:57:01.653',121),0,0);
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (6,N'http://carbide.local/umbraco',N'DESKTOP-AD7TD84//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-09-25 18:57:00.813',121),CONVERT(datetime,'2019-10-01 19:20:58.470',121),1,1);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoServer] OFF

