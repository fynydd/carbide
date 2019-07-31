SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 26 rows to dbo.cmsPropertyTypeGroup

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (3,1032,N'Image',1,'79ED4D07-254A-42CF-8FA9-EBE1C116A596');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (4,1033,N'File',1,'50899F9C-023A-4466-B623-ABA9049885FE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (11,1044,N'Membership',1,'0756729D-D665-46E3-B84A-37ACEAA614F8');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (14,1063,N'Content',0,'093EEEDB-8722-4B86-8033-229D740249E1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (15,1069,N'Content',0,'F2124F7E-1BB9-42E3-90F6-127B47B6FE1B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (16,1075,N'CSS Properties',999,'6486EF58-A260-4C15-A9D4-D5CC6ACDF4D1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (26,1098,N'Content',0,'C93D4373-4EB3-4DCD-8218-550A26FF3E04');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (27,1101,N'Company Information',10,'EB17F4BD-F5A7-4398-B54A-8FBA3C6FE141');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (38,1103,N'Fonts',800,'6BB9CC83-514E-43DD-8319-CB91A968BF7B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (44,1110,N'Page Properties',998,'5DB9AC0F-5180-4297-83B9-80E3D49DA4CA');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (47,1129,N'Content',0,'EBEA160B-1774-48F6-B701-661375A91518');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (49,1140,N'Content',0,'66B480F8-71B2-4CDC-9E8D-7A1D5EA3D49C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (53,1052,N'Page Content',0,'AA62127F-25AF-4594-BF0C-A020F8E744DD');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (54,1119,N'Page Content',0,'8E38D466-B7C5-4636-9ACD-8D5307F97289');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (56,1159,N'Content',0,'923F6777-06E0-49A9-BFE2-6115375D5EE3');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (57,1155,N'Navigation',11,'B0E3B737-5F11-449F-BD41-BC0CB9A516BC');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (59,1187,N'Content',0,'8CC01DDC-306E-41C4-B083-5EFDF98EAEA1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (60,1199,N'Content',0,'314B5A14-DFA4-4D8A-9526-DD05336F4304');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (62,1202,N'Content',0,'D12141DB-935D-4B17-83BB-E77999DA395A');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (63,1155,N'CSS Properties',999,'CF91BEC9-21FE-469D-ACCC-994C04D55657');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (64,1052,N'CSS Properties',999,'8D4D4D62-5A3A-44C7-A10E-5BBC7E378AB8');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (65,1119,N'CSS Properties',999,'08FFC77D-769C-4669-B327-A322F974F063');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (66,1208,N'Social Networks',11,'3AAFC104-00E2-492C-841B-76C2FF678887');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (67,1211,N'Content',0,'0B51EFA8-35D7-4128-ACF0-3D6B2B90DA59');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (68,1223,N'Content',0,'A87FEFD8-79E1-4839-A6C1-AE42DE9EBD8B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (69,1222,N'Content',0,'F2700CF3-E5C6-4422-A41B-E0DC2D873A44');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF

