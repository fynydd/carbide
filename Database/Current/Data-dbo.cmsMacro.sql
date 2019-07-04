SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 1 row to dbo.cmsMacro

SET IDENTITY_INSERT [dbo].[cmsMacro] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsMacro] ([id],[uniqueId],[macroUseInEditor],[macroRefreshRate],[macroAlias],[macroName],[macroCacheByPage],[macroCachePersonalized],[macroDontRender],[macroSource],[macroType]) VALUES (1,'80DFDE3E-B082-4120-A14B-76CA3463EB74',1,0,N'ResponsiveImage',N'Responsive Image',0,0,0,N'~/Views/MacroPartials/_Partial_Responsive_Image.cshtml',7);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsMacro] OFF

