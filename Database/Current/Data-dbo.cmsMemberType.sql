SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 9 rows to dbo.cmsMemberType

SET IDENTITY_INSERT [dbo].[cmsMemberType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (1,1044,35,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (2,1044,36,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (3,1044,28,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (4,1044,29,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (5,1044,30,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (6,1044,31,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (7,1044,32,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (8,1044,33,0,0,0);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsMemberType] ([pk],[NodeId],[propertytypeId],[memberCanEdit],[viewOnProfile],[isSensitive]) VALUES (9,1044,34,0,0,0);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsMemberType] OFF

