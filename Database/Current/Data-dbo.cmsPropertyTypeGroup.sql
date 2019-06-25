﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 13 rows to dbo.cmsPropertyTypeGroup

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (3,1032,N'Image',1,'79ED4D07-254A-42CF-8FA9-EBE1C116A596');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (4,1033,N'File',1,'50899F9C-023A-4466-B623-ABA9049885FE');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (11,1044,N'Membership',1,'0756729D-D665-46E3-B84A-37ACEAA614F8');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (12,1055,N'SEO',700,'DF5B16F7-FEC2-42FD-A088-F8810C634BF5');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (14,1063,N'Frame Content',0,'093EEEDB-8722-4B86-8033-229D740249E1');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (15,1069,N'Simple Hero Content',0,'F2124F7E-1BB9-42E3-90F6-127B47B6FE1B');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (16,1075,N'CSS Custom Properties',900,'6486EF58-A260-4C15-A9D4-D5CC6ACDF4D1');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (21,1069,N'Advanced CSS Help',901,'2B8089ED-5998-4A70-9749-CA4B6351F703');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (26,1098,N'Content',0,'C93D4373-4EB3-4DCD-8218-550A26FF3E04');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (27,1101,N'Company Info',0,'EB17F4BD-F5A7-4398-B54A-8FBA3C6FE141');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (32,1102,N'Social Networks',1,'6A6A431A-45F7-4163-9908-ABFFEEC81EEF');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (38,1103,N'Fonts',800,'6BB9CC83-514E-43DD-8319-CB91A968BF7B');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (41,1104,N'Custom CSS Help',901,'D5FE22B0-EE0A-4F18-B313-404574C8B221');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF

