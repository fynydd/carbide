﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 4 rows to dbo.cmsMacro

SET IDENTITY_INSERT [dbo].[cmsMacro] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacro] ([id],[uniqueId],[macroUseInEditor],[macroRefreshRate],[macroAlias],[macroName],[macroCacheByPage],[macroCachePersonalized],[macroDontRender],[macroSource],[macroType]) VALUES (1,'80DFDE3E-B082-4120-A14B-76CA3463EB74',1,0,N'ResponsiveImage',N'Responsive Image',0,0,0,N'~/Views/MacroPartials/_Partial_Responsive_Image.cshtml',7);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacro] ([id],[uniqueId],[macroUseInEditor],[macroRefreshRate],[macroAlias],[macroName],[macroCacheByPage],[macroCachePersonalized],[macroDontRender],[macroSource],[macroType]) VALUES (2,'F7F24270-CF64-44FA-BE8D-28773B42E926',1,0,N'ResponsiveVideo',N'Responsive Video',0,0,0,N'~/Views/MacroPartials/_Partial_Responsive_Video.cshtml',7);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacro] ([id],[uniqueId],[macroUseInEditor],[macroRefreshRate],[macroAlias],[macroName],[macroCacheByPage],[macroCachePersonalized],[macroDontRender],[macroSource],[macroType]) VALUES (3,'BD27553F-82AF-40FD-9008-11B92B7EC700',1,0,N'ResponsiveYouTubeVideo',N'Responsive YouTube Video',0,0,0,N'~/Views/MacroPartials/_Partial_Responsive_YouTube_Video.cshtml',7);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacro] ([id],[uniqueId],[macroUseInEditor],[macroRefreshRate],[macroAlias],[macroName],[macroCacheByPage],[macroCachePersonalized],[macroDontRender],[macroSource],[macroType]) VALUES (4,'480075D7-3F9D-4190-9356-11978DDBB8CF',1,0,N'renderUmbracoForm',N'Insert Form with Theme',0,0,0,N'~/Views/MacroPartials/InsertUmbracoFormWithTheme.cshtml',7);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsMacro] OFF

