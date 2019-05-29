SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 3 rows to dbo.umbracoServer

SET IDENTITY_INSERT [dbo].[umbracoServer] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (1,N'https://10.0.11.3/umbraco',N'DENNETT//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-02-16 14:20:39.573',121),CONVERT(datetime,'2019-03-01 23:09:27.897',121),0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (2,N'https://10.0.11.2/umbraco',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-03-01 22:11:47.737',121),CONVERT(datetime,'2019-05-29 14:18:25.543',121),1,1);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (3,N'https://tolnedra.com/umbraco',N'OBSIDIAN//LM/W3SVC/5/ROOT',CONVERT(datetime,'2019-03-13 21:50:30.250',121),CONVERT(datetime,'2019-03-13 22:30:31.317',121),0,0);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoServer] OFF

