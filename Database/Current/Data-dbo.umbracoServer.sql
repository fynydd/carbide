SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 2 rows to dbo.umbracoServer

SET IDENTITY_INSERT [dbo].[umbracoServer] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (1,N'https://10.0.11.2/umbraco',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-05-29 18:29:43.447',121),CONVERT(datetime,'2019-06-16 22:57:46.077',121),0,0);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (2,N'https://10.0.11.2/umbraco',N'DESKTOP-9F22GQS//LM/W3SVC/1/ROOT',CONVERT(datetime,'2019-06-18 19:21:03.757',121),CONVERT(datetime,'2019-06-28 18:26:05.943',121),1,1);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoServer] OFF

