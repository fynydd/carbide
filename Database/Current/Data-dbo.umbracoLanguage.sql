﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 1 row to dbo.umbracoLanguage

SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLanguage] ([id],[languageISOCode],[languageCultureName],[isDefaultVariantLang],[mandatory],[fallbackLanguageId]) VALUES (1,N'en-US',N'English (United States)',1,0,NULL);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF

