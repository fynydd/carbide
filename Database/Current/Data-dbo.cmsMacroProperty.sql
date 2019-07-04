SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 3 rows to dbo.cmsMacroProperty

SET IDENTITY_INSERT [dbo].[cmsMacroProperty] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (1,'985B670F-587A-4490-AB97-D777AC4E5EC3',N'Umbraco.MediaPicker',1,0,N'responsiveImage',N'Responsive Image');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (2,'EE80D9D6-91C2-440E-8CB7-E4065284DCD1',N'Umbraco.TextArea',2,0,N'responsiveVideoMarkup',N'Responsive Video Markup');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (3,'34F34BC2-9F2B-4AED-91D6-07C986334F32',N'Umbraco.TextBox',3,0,N'youTubeCode',N'YouTube Code');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsMacroProperty] OFF

