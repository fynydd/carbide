SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;820494

-- SQRIBE/TABLE;820494
-- Adding 10 rows to dbo.cmsMacroProperty

SET IDENTITY_INSERT [dbo].[cmsMacroProperty] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (14,'115A3B40-F158-4731-8D63-C276D5594E81',N'Umbraco.TextArea',2,0,N'responsiveVideoMarkup',N'Responsive Video Markup');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (15,'8D6B560E-4C0F-4FB4-83E3-BD1FA6EC2064',N'Umbraco.TextBox',2,1,N'caption',N'Optional Caption');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (18,'CFBB6557-331C-4244-B949-10F29C05A20A',N'Umbraco.MediaPicker',1,0,N'responsiveImage',N'Responsive Image');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (19,'2916EB52-4AD7-43F7-B566-9B7E74811E2D',N'Umbraco.TextBox',1,1,N'caption',N'Optional Caption');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (20,'05597595-4F78-4D2E-9C76-4BD664A0B867',N'Umbraco.TrueFalse',1,2,N'enableLightbox',N'Click to Enlarge?');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (24,'6964F671-6D50-46B9-90B8-CCE625574986',N'Umbraco.TextBox',3,0,N'youTubeCode',N'YouTube Video ID or URL');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (25,'F975789D-B5A1-455D-B5AE-69DEC1183855',N'Umbraco.TextBox',3,1,N'caption',N'Optional Caption');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (29,'43AD1635-BE16-45F2-8665-CB044F017F23',N'UmbracoForms.FormPicker',4,0,N'FormGuid',N'Choose a form');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (30,'0F28A8A7-6C41-4AC2-AAFA-AFC4AFED7E11',N'UmbracoForms.ThemePicker',4,1,N'FormTheme',N'Theme');
-- SQRIBE/INSERT;820494
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (31,'4AE31B85-6DD5-4C5E-91A9-0680B431E1F7',N'Umbraco.TrueFalse',4,2,N'ExcludeScripts',N'Exclude Scripts');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsMacroProperty] OFF

