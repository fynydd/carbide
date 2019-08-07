SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 8 rows to dbo.UFRecordDataLongString

SET IDENTITY_INSERT [dbo].[UFRecordDataLongString] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (1,'C5250102-BAB8-4FE4-9541-D907E87FB423',N'This is a sample question.');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (2,'610FCDE4-D885-42E0-ACD7-2B5983F05C54',N'Test redirect');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (4,'6CD355F4-70B4-43E6-BCA7-512AE13B8BFF',N'TESTING MESSAGE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (5,'FE376BEE-A179-4DAA-AD5F-E58DEFBABE05',N'TESTING MESSAGE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (6,'F8AA8079-D059-4DE3-AA00-50A0DBCBA22C',N'huhjgjgjg hjg jg jhg jhg jhg hjg jhg jhg jhg jg jh gjhg jh gjg jhg jhg hj gjh ghj ghj ghjg hjg hjghj gjhg hjg hj hj ghjg.');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (7,'7F2CA863-4B08-4C5C-A94F-2C1B8C1F9651',N'huhjgjgjg hjg jg jhg jhg jhg hjg jhg jhg jhg jg jh gjhg jh gjg jhg jhg hj gjh ghj ghj ghjg hjg hjghj gjhg hjg hj hj ghjg.');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (8,'9763D84C-A584-423C-94B3-6972786C4E75',N'Teat question');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[UFRecordDataLongString] ([Id],[Key],[Value]) VALUES (9,'B9D7D28F-D16E-4D32-82CD-312FCFFB3E5C',N'Teat question');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[UFRecordDataLongString] OFF

