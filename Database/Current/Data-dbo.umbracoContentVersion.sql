SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 6 rows to dbo.umbracoContentVersion

SET IDENTITY_INSERT [dbo].[umbracoContentVersion] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContentVersion] ([id],[nodeId],[versionDate],[userId],[current],[text]) VALUES (1,1056,CONVERT(datetime,'2019-06-04 16:07:11.413',121),-1,0,N'Home');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContentVersion] ([id],[nodeId],[versionDate],[userId],[current],[text]) VALUES (2,1056,CONVERT(datetime,'2019-06-04 16:12:10.900',121),-1,0,N'Home');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContentVersion] ([id],[nodeId],[versionDate],[userId],[current],[text]) VALUES (3,1057,CONVERT(datetime,'2019-06-04 16:08:48.450',121),NULL,1,N'Sample Images');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContentVersion] ([id],[nodeId],[versionDate],[userId],[current],[text]) VALUES (4,1058,CONVERT(datetime,'2019-06-04 16:18:20.603',121),NULL,1,N'Argentini Street Sign');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContentVersion] ([id],[nodeId],[versionDate],[userId],[current],[text]) VALUES (5,1056,CONVERT(datetime,'2019-06-04 16:18:03.030',121),-1,0,N'Home');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoContentVersion] ([id],[nodeId],[versionDate],[userId],[current],[text]) VALUES (6,1056,CONVERT(datetime,'2019-06-04 16:18:03.030',121),-1,1,N'Home');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoContentVersion] OFF

