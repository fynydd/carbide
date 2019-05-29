﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 36 rows to dbo.umbracoNode

SET IDENTITY_INSERT [dbo].[umbracoNode] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-99,'8F1EF1E1-9DE4-40D3-A072-6673F631CA64',-1,1,N'-1,-99',39,0,-1,N'Label (decimal)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-98,'A97CEC69-9B71-4C30-8B12-EC398860D7E8',-1,1,N'-1,-98',38,0,-1,N'Label (time)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-97,'AA2C52A0-CE87-4E65-A47C-7DF09358585D',-1,1,N'-1,-97',2,0,-1,N'List View - Members','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-96,'3A0156C4-3B8C-4803-BDC1-6871FAA83FFF',-1,1,N'-1,-96',2,0,-1,N'List View - Media','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-95,'C0808DD3-8133-4E4B-8CE8-E2BEA84A96A4',-1,1,N'-1,-95',2,0,-1,N'List View - Content','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-94,'0E9794EB-F9B5-4F20-A788-93ACD233A7E4',-1,1,N'-1,-94',37,0,-1,N'Label (datetime)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-93,'930861BF-E262-4EAD-A704-F99453565708',-1,1,N'-1,-93',36,0,-1,N'Label (bigint)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-92,'F0BC4BFB-B499-40D6-BA86-058885A5178C',-1,1,N'-1,-92',35,0,-1,N'Label','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.260',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-91,'8E7F995C-BD81-4627-9932-C40E568EC788',-1,1,N'-1,-91',36,0,-1,N'Label (integer)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-90,'84C6B441-31DF-4FFE-B67E-67D5BC3AE65A',-1,1,N'-1,-90',34,0,-1,N'Upload','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-89,'C6BAC0DD-4AB9-45B1-8E30-E4B619EE5DA3',-1,1,N'-1,-89',33,0,-1,N'Textarea','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-88,'0CC0EBA1-9960-42C9-BF9B-60E150B429AE',-1,1,N'-1,-88',32,0,-1,N'Textstring','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-87,'CA90C950-0AFF-4E72-B976-A30B1AC57DAD',-1,1,N'-1,-87',4,0,-1,N'Richtext editor','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-51,'2E6D3631-066E-44B8-AEC4-96F09099B2B5',-1,1,N'-1,-51',2,0,-1,N'Numeric','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-49,'92897BC6-A5F3-4FFE-AE27-F2E7E33DDA49',-1,1,N'-1,-49',2,0,-1,N'True/false','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-43,'FBAF13A8-4036-41F2-93A3-974F678C312A',-1,1,N'-1,-43',2,0,-1,N'Checkbox list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-42,'F38F0AC7-1D27-439C-9F3F-089CD8825A53',-1,1,N'-1,-42',2,0,-1,N'Dropdown multiple','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-41,'5046194E-4237-453C-A547-15DB3A07C4E1',-1,1,N'-1,-41',2,0,-1,N'Date Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-40,'BB5F57C9-CE2B-4BB9-B697-4CACA783A805',-1,1,N'-1,-40',2,0,-1,N'Radiobox','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-39,'0B6A45E7-44BA-430D-9DA5-4E46060B9E03',-1,1,N'-1,-39',2,0,-1,N'Dropdown','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-37,'0225AF17-B302-49CB-9176-B9F35CAB9C17',-1,1,N'-1,-37',2,0,-1,N'Approved Color','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-36,'E4D66C0F-B935-4200-81F0-025F7256B89A',-1,1,N'-1,-36',2,0,-1,N'Date Picker with time','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-21,'BF7C7CBC-952F-4518-97A2-69E9C7B33842',-1,0,N'-1,-21',0,0,-1,N'Recycle Bin','CF3D8E34-1C1C-41E9-AE56-878B57B32113',CONVERT(datetime,'2019-05-29 18:29:07.260',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-20,'0F582A79-1E41-4CF0-BFA0-76340651891A',-1,0,N'-1,-20',0,0,-1,N'Recycle Bin','01BB7FF2-24DC-4C0C-95A2-C24EF72BBAC8',CONVERT(datetime,'2019-05-29 18:29:07.260',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-1,'916724A5-173D-4619-B97E-B9DE133DD6F5',-1,0,N'-1',0,0,-1,N'SYSTEM DATA: umbraco master root','EA7D8624-4CFE-4578-A871-24AA946BF34D',CONVERT(datetime,'2019-05-29 18:29:07.253',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1031,'F38BD2D7-65D0-48E6-95DC-87CE06EC2D3D',-1,1,N'-1,1031',2,0,-1,N'Folder','4EA4382B-2F5A-4C2B-9587-AE9B3CF3602E',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1032,'CC07B313-0843-4AA8-BBDA-871C8DA728C8',-1,1,N'-1,1032',2,0,-1,N'Image','4EA4382B-2F5A-4C2B-9587-AE9B3CF3602E',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1033,'4C52D8AB-54E6-40CD-999C-7A5F24903E4D',-1,1,N'-1,1033',2,0,-1,N'File','4EA4382B-2F5A-4C2B-9587-AE9B3CF3602E',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1041,'B6B73142-B9C1-4BF8-A16D-E1C23320B549',-1,1,N'-1,1041',2,0,-1,N'Tags','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1043,'1DF9F033-E6D4-451F-B8D2-E0CBC50A836F',-1,1,N'-1,1043',2,0,-1,N'Image Cropper','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1044,'D59BE02F-1DF9-4228-AA1E-01917D806CDA',-1,1,N'-1,1044',0,0,-1,N'Member','9B5416FB-E72F-45A9-A07B-5A9A2709CE43',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1046,'FD1E0DA5-5606-4862-B679-5D0CF3A52A59',-1,1,N'-1,1046',2,0,-1,N'Content Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1047,'1EA2E01F-EBD8-4CE1-8D71-6B1149E63548',-1,1,N'-1,1047',2,0,-1,N'Member Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1048,'135D60E0-64D9-49ED-AB08-893C9BA44AE5',-1,1,N'-1,1048',2,0,-1,N'Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.280',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1049,'9DBBCBBB-2327-434A-B355-AF1B84E5010A',-1,1,N'-1,1049',2,0,-1,N'Multiple Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.280',121));
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1050,'B4E3535A-1753-47E2-8568-602CF8CFEE6F',-1,1,N'-1,1050',2,0,-1,N'Multi URL Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.280',121));

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoNode] OFF

