SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 14 rows to dbo.cmsPropertyTypeGroup

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (3,1032,N'Image',1,'79ED4D07-254A-42CF-8FA9-EBE1C116A596');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (4,1033,N'File',1,'50899F9C-023A-4466-B623-ABA9049885FE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (11,1044,N'Membership',1,'0756729D-D665-46E3-B84A-37ACEAA614F8');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (14,1063,N'Frame Content',0,'093EEEDB-8722-4B86-8033-229D740249E1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (15,1069,N'Simple Hero Content',0,'F2124F7E-1BB9-42E3-90F6-127B47B6FE1B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (16,1075,N'CSS Custom Properties',999,'6486EF58-A260-4C15-A9D4-D5CC6ACDF4D1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (26,1098,N'Content',0,'C93D4373-4EB3-4DCD-8218-550A26FF3E04');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (27,1101,N'Company Info and Social',0,'EB17F4BD-F5A7-4398-B54A-8FBA3C6FE141');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (38,1103,N'Fonts',800,'6BB9CC83-514E-43DD-8319-CB91A968BF7B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (44,1110,N'Page Properties',998,'5DB9AC0F-5180-4297-83B9-80E3D49DA4CA');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (47,1129,N'Unit Container',0,'EBEA160B-1774-48F6-B701-661375A91518');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (48,1135,N'Navigation',0,'C79C3AB2-2259-4E79-B95C-130206D84CF0');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (49,1140,N'Portfolio Properties',0,'66B480F8-71B2-4CDC-9E8D-7A1D5EA3D49C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (50,1141,N'Pages',0,'D5362C0D-66AB-47B0-BB8B-FA6DB5B2C0F3');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF

