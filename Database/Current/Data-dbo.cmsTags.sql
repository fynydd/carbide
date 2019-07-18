SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 18 rows to dbo.cmsTags

SET IDENTITY_INSERT [dbo].[cmsTags] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (1,N'Pages',NULL,N'basic');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (2,N'Pages',NULL,N'home');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (3,N'Pages',NULL,N'one');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (4,N'Pages',NULL,N'two');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (5,N'Pages',NULL,N'page');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (6,N'Pages',NULL,N'about');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (7,N'Pages',NULL,N'service');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (8,N'Pages',NULL,N'food');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (9,N'Pages',NULL,N'clothing');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (10,N'Pages',NULL,N'tech');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (11,N'Pages',NULL,N'info');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (12,N'Images',NULL,N'rocket');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (13,N'Images',NULL,N'nature');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (14,N'Images',NULL,N'store');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (15,N'Images',NULL,N'landscape');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (16,N'Images',NULL,N'food');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (17,N'Images',NULL,N'automotive');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsTags] ([id],[group],[languageId],[tag]) VALUES (18,N'Pages',NULL,N'contact');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsTags] OFF

