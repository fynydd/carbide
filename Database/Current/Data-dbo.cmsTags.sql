SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 6 rows to dbo.cmsTags

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

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsTags] OFF

