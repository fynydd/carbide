SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 15 rows to dbo.cmsMacroProperty

SET IDENTITY_INSERT [dbo].[cmsMacroProperty] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (14,'115A3B40-F158-4731-8D63-C276D5594E81',N'Umbraco.TextArea',2,0,N'responsiveVideoMarkup',N'Responsive Video Markup');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (15,'8D6B560E-4C0F-4FB4-83E3-BD1FA6EC2064',N'Umbraco.TextBox',2,1,N'caption',N'Optional Caption');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (24,'6964F671-6D50-46B9-90B8-CCE625574986',N'Umbraco.TextBox',3,0,N'youTubeCode',N'YouTube Video ID or URL');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (25,'F975789D-B5A1-455D-B5AE-69DEC1183855',N'Umbraco.TextBox',3,1,N'caption',N'Optional Caption');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (29,'43AD1635-BE16-45F2-8665-CB044F017F23',N'UmbracoForms.FormPicker',4,0,N'FormGuid',N'Choose a form');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (30,'0F28A8A7-6C41-4AC2-AAFA-AFC4AFED7E11',N'UmbracoForms.ThemePicker',4,1,N'FormTheme',N'Theme');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (31,'4AE31B85-6DD5-4C5E-91A9-0680B431E1F7',N'Umbraco.TrueFalse',4,2,N'ExcludeScripts',N'Exclude Scripts');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (36,'B1ED2633-0B37-42C8-B8EE-0308BA3D724E',N'Umbraco.MediaPicker',1,0,N'responsiveImage',N'Responsive Image');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (37,'2F9AC473-1DBD-4C52-893B-760866E1874B',N'Umbraco.TextBox',1,1,N'caption',N'Optional Caption');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (38,'8D0DA5E8-8063-41DE-B0EE-40FFE968385E',N'Umbraco.TrueFalse',1,2,N'enableLightbox',N'Click to Enlarge?');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (39,'64ECBDD8-6FC8-4FCC-B761-20D3BBA601D5',N'Umbraco.Integer',1,3,N'maxWidthPct',N'Maximum Width %');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (40,'ED956ECA-81DD-43FC-9D01-DCA02A1DAEE1',N'Umbraco.TrueFalse',1,4,N'center',N'Center Image?');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (47,'959AA068-5D4F-44F5-AA3F-8FBBA7460DB4',N'Umbraco.TextBox',5,0,N'text',N'Text');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (48,'B85B52D3-959C-47D8-90CB-B1B2C5513BBD',N'Umbraco.ContentPicker',5,1,N'link',N'Link');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsMacroProperty] ([id],[uniquePropertyId],[editorAlias],[macro],[macroPropertySortOrder],[macroPropertyAlias],[macroPropertyName]) VALUES (49,'9068B036-B551-4B6F-B313-17C541C2A3CB',N'Umbraco.TrueFalse',5,2,N'center',N'Center button?');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsMacroProperty] OFF

