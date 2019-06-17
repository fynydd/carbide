﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 10 rows to dbo.cmsPropertyTypeGroup

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (3,1032,N'Image',1,'79ED4D07-254A-42CF-8FA9-EBE1C116A596');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (4,1033,N'File',1,'50899F9C-023A-4466-B623-ABA9049885FE');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (11,1044,N'Membership',1,'0756729D-D665-46E3-B84A-37ACEAA614F8');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (12,1055,N'SEO',800,'DF5B16F7-FEC2-42FD-A088-F8810C634BF5');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (14,1063,N'Frame Content',0,'093EEEDB-8722-4B86-8033-229D740249E1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (15,1069,N'Simple Hero Content',0,'F2124F7E-1BB9-42E3-90F6-127B47B6FE1B');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (16,1075,N'CSS Custom Properties',900,'6486EF58-A260-4C15-A9D4-D5CC6ACDF4D1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (18,1083,N'Content',0,'70CD3F69-A5B9-42F9-A279-676EB6A6A50D');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (19,1052,N'Content',0,'6A51B621-08FB-4485-A9EE-85C884D1AED5');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyTypeGroup] ([id],[contenttypeNodeId],[text],[sortorder],[uniqueID]) VALUES (21,1069,N'Advanced CSS Help',901,'2B8089ED-5998-4A70-9749-CA4B6351F703');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF

