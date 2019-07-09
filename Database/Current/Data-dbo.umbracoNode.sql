﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 105 rows to dbo.umbracoNode

SET IDENTITY_INSERT [dbo].[umbracoNode] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-99,'8F1EF1E1-9DE4-40D3-A072-6673F631CA64',-1,1,N'-1,-99',39,0,-1,N'Label (decimal)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-98,'A97CEC69-9B71-4C30-8B12-EC398860D7E8',-1,1,N'-1,-98',38,0,-1,N'Label (time)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-97,'AA2C52A0-CE87-4E65-A47C-7DF09358585D',-1,1,N'-1,-97',2,0,-1,N'List View - Members','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-96,'3A0156C4-3B8C-4803-BDC1-6871FAA83FFF',-1,1,N'-1,-96',2,0,-1,N'List View - Media','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-95,'C0808DD3-8133-4E4B-8CE8-E2BEA84A96A4',-1,1,N'-1,-95',2,0,-1,N'List View - Content','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-94,'0E9794EB-F9B5-4F20-A788-93ACD233A7E4',-1,1,N'-1,-94',37,0,-1,N'Label (datetime)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-93,'930861BF-E262-4EAD-A704-F99453565708',-1,1,N'-1,-93',36,0,-1,N'Label (bigint)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-92,'F0BC4BFB-B499-40D6-BA86-058885A5178C',-1,1,N'-1,-92',35,0,-1,N'Label','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.260',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-91,'8E7F995C-BD81-4627-9932-C40E568EC788',-1,1,N'-1,-91',36,0,-1,N'Label (integer)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-90,'84C6B441-31DF-4FFE-B67E-67D5BC3AE65A',-1,1,N'-1,-90',34,0,-1,N'Upload','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-89,'C6BAC0DD-4AB9-45B1-8E30-E4B619EE5DA3',-1,1,N'-1,-89',33,0,-1,N'Textarea','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-88,'0CC0EBA1-9960-42C9-BF9B-60E150B429AE',-1,1,N'-1,-88',32,0,-1,N'Textstring','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-87,'CA90C950-0AFF-4E72-B976-A30B1AC57DAD',-1,1,N'-1,-87',4,0,-1,N'Richtext editor','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-51,'2E6D3631-066E-44B8-AEC4-96F09099B2B5',-1,1,N'-1,-51',2,0,-1,N'Numeric (integer)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-49,'92897BC6-A5F3-4FFE-AE27-F2E7E33DDA49',-1,1,N'-1,-49',2,0,-1,N'Truefalse','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-43,'FBAF13A8-4036-41F2-93A3-974F678C312A',-1,1,N'-1,-43',2,0,-1,N'Checkbox list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-42,'F38F0AC7-1D27-439C-9F3F-089CD8825A53',-1,1,N'-1,-42',2,0,-1,N'Dropdown multiple','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-41,'5046194E-4237-453C-A547-15DB3A07C4E1',-1,1,N'-1,-41',2,0,-1,N'Date Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-40,'BB5F57C9-CE2B-4BB9-B697-4CACA783A805',-1,1,N'-1,-40',2,0,-1,N'Radiobox','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-39,'0B6A45E7-44BA-430D-9DA5-4E46060B9E03',-1,1,N'-1,-39',2,0,-1,N'Dropdown','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-37,'0225AF17-B302-49CB-9176-B9F35CAB9C17',-1,1,N'-1,-37',2,0,-1,N'Approved Color','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-36,'E4D66C0F-B935-4200-81F0-025F7256B89A',-1,1,N'-1,-36',2,0,-1,N'Date Picker with time','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-21,'BF7C7CBC-952F-4518-97A2-69E9C7B33842',-1,0,N'-1,-21',0,0,-1,N'Recycle Bin','CF3D8E34-1C1C-41E9-AE56-878B57B32113',CONVERT(datetime,'2019-05-29 18:29:07.260',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-20,'0F582A79-1E41-4CF0-BFA0-76340651891A',-1,0,N'-1,-20',0,0,-1,N'Recycle Bin','01BB7FF2-24DC-4C0C-95A2-C24EF72BBAC8',CONVERT(datetime,'2019-05-29 18:29:07.260',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-1,'916724A5-173D-4619-B97E-B9DE133DD6F5',-1,0,N'-1',0,0,-1,N'SYSTEM DATA: umbraco master root','EA7D8624-4CFE-4578-A871-24AA946BF34D',CONVERT(datetime,'2019-05-29 18:29:07.253',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1031,'F38BD2D7-65D0-48E6-95DC-87CE06EC2D3D',-1,1,N'-1,1031',2,0,-1,N'Folder','4EA4382B-2F5A-4C2B-9587-AE9B3CF3602E',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1032,'CC07B313-0843-4AA8-BBDA-871C8DA728C8',-1,1,N'-1,1032',2,0,-1,N'Image','4EA4382B-2F5A-4C2B-9587-AE9B3CF3602E',CONVERT(datetime,'2019-05-29 18:29:07.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1033,'4C52D8AB-54E6-40CD-999C-7A5F24903E4D',-1,1,N'-1,1033',2,0,-1,N'File','4EA4382B-2F5A-4C2B-9587-AE9B3CF3602E',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1041,'B6B73142-B9C1-4BF8-A16D-E1C23320B549',-1,1,N'-1,1041',2,0,-1,N'Tags (Pages)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1043,'1DF9F033-E6D4-451F-B8D2-E0CBC50A836F',-1,1,N'-1,1043',2,0,-1,N'Image Cropper - Social Media','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1044,'D59BE02F-1DF9-4228-AA1E-01917D806CDA',-1,1,N'-1,1044',0,0,-1,N'Member','9B5416FB-E72F-45A9-A07B-5A9A2709CE43',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1046,'FD1E0DA5-5606-4862-B679-5D0CF3A52A59',-1,1,N'-1,1046',2,0,-1,N'Content Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1047,'1EA2E01F-EBD8-4CE1-8D71-6B1149E63548',-1,1,N'-1,1047',2,0,-1,N'Member Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.277',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1048,'135D60E0-64D9-49ED-AB08-893C9BA44AE5',-1,1,N'-1,1048',2,0,-1,N'Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.280',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1049,'9DBBCBBB-2327-434A-B355-AF1B84E5010A',-1,1,N'-1,1049',2,0,-1,N'Multiple Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.280',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1050,'B4E3535A-1753-47E2-8568-602CF8CFEE6F',-1,1,N'-1,1050',2,0,-1,N'Multi URL Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.280',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1051,'66897749-CF58-434C-819B-CEBF0784A454',1053,1,N'-1,1053,1051',0,0,NULL,N'Basic Homepage','6FBDE604-4178-42CE-A10B-8A2600A2F07D',CONVERT(datetime,'2019-06-04 15:24:45.010',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1052,'5A5DE72C-7729-42E2-AFFE-DDF5F8B258F8',1059,2,N'-1,1059,1052',1,0,-1,N'Basic Homepage','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-04 15:24:45.140',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1053,'60809C2B-D62D-4800-961B-3A743E8E16AC',-1,1,N'-1,1053',0,0,NULL,N'Master','6FBDE604-4178-42CE-A10B-8A2600A2F07D',CONVERT(datetime,'2019-06-04 15:25:46.727',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1054,'C3770A41-453D-4A7A-865B-1BCAA07F6A66',-1,1,N'-1,1054',0,0,-1,N'Compositions','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-06-04 15:50:05.950',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1056,'7A4E2B57-A6CD-4F7F-9265-5069DE668479',-1,1,N'-1,1056',0,0,-1,N'Carbide Site 1','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-04 16:07:11.413',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1057,'A1B98C26-89E2-495B-84E9-2D137C47A29E',1124,2,N'-1,1124,1057',0,0,-1,N'Sample Images','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 16:08:48.450',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1058,'08D34255-DD9A-4395-8128-21106F4F18FE',-21,1,N'-1,-21,1058',0,1,-1,N'Argentini Street Sign','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 16:12:06.147',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1059,'E32F3408-6DE4-4A77-B63E-898B78CCC273',-1,1,N'-1,1059',0,0,-1,N'Pages','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-06-04 19:30:48.273',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1062,'B3610988-1723-484A-800F-39E1DD5B0D64',-1,1,N'-1,1062',30,0,-1,N'Carbide Simple Hero Frame - Rich Text Editor','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:38:20.993',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1063,'6BF7A4D5-5C66-4DF4-B838-4B98B9A69343',1089,3,N'-1,1076,1089,1063',2,0,-1,N'Carbide Simple Hero Frame','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-04 19:38:29.630',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1064,'CA8DCB84-E14A-40BB-9569-879374EE19F0',-1,1,N'-1,1064',31,0,-1,N'Carbide Simple Hero Frame - Button Link Content Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:41:30.823',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1065,'FA36289A-64B5-4E8E-B811-F0F58A69AF66',-1,1,N'-1,1065',32,0,-1,N'Carbide Simple Hero Frame - Textbox','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:42:06.727',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1066,'B40088B4-85DF-41C4-9042-C0C491096EE4',-1,1,N'-1,1066',33,0,-1,N'Carbide Simple Hero - Hero Frames - Nested Content','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:47:41.110',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1067,'89ECD065-85A6-42F2-8063-3ACF642324C4',-1,1,N'-1,1067',34,0,-1,N'Carbide Simple Hero - Frame Duration - Numeric','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:48:46.137',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1068,'9B45F79D-6232-418F-91D9-144C8710CE62',-1,1,N'-1,1068',35,0,-1,N'Carbide Simple Hero - Transition Time - Numeric','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:50:26.960',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1069,'4DE14525-B8F4-4DAA-8007-5EAEEAC06051',1089,3,N'-1,1076,1089,1069',1,0,-1,N'Carbide Simple Hero Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-04 19:52:37.570',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1070,'D21E6CF2-25AC-47F5-B1C6-0DE9428EC3ED',-1,1,N'-1,1070',36,0,-1,N'Carbide Simple Hero Frame - Background Image - Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:54:20.893',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1071,'EB86BFF8-80C0-4F58-B45B-565CF5229A76',1057,3,N'-1,1124,1057,1071',0,0,-1,N'03756 Mountcooksunset 5120X2880','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 19:55:26.843',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1072,'95149A2B-88ED-462A-A21C-A1812E7FBDE1',1057,3,N'-1,1124,1057,1072',1,0,-1,N'03560 Thetopangagradient 5120X2880','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 19:57:13.040',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1073,'3DD42308-7592-4589-A704-2EE90B8A5A8E',1057,3,N'-1,1124,1057,1073',2,0,-1,N'03588 Morrainelake 5120X2880','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 19:57:54.047',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1075,'191338DA-127C-4395-A6E9-EEAF8B98D3AC',1054,2,N'-1,1054,1075',1,0,-1,N'CSS Custom Properties','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-12 19:11:24.313',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1076,'5E123CB8-9E7D-4EE1-B1EE-CA9F552E8957',-1,1,N'-1,1076',0,0,-1,N'Components','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-06-12 19:25:20.520',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1081,'5297D3FE-E9BD-43E2-BE9D-74B9AAD38525',1056,2,N'-1,1056,1081',2,0,-1,N'Home Hero Unit','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-12 19:40:20.720',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1085,'CDCA7AFE-6C24-43FD-AE45-6A6BDDA0ACE0',-1,1,N'-1,1085',1,0,-1,N'Carbide Site 2','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-16 16:02:22.863',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1088,'61904F3D-F21E-4D73-A653-9CC16EAF4D04',-20,1,N'-1,-20,1088',0,1,-1,N'Site 2 Hero','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-16 17:28:55.403',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1089,'D67E9564-AEC2-4846-96C8-EE6CFE800FA6',1076,2,N'-1,1076,1089',0,0,-1,N'Carbide Simple Hero','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-06-16 17:35:20.750',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1092,'5A0B42DB-CAB7-490D-94B0-E7BE6069893B',-1,1,N'-1,1092',41,0,-1,N'CSS Custom Properties - Intro Text - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-16 22:15:20.790',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1097,'A7154D30-3775-4C17-A8DE-E3754DE08DB8',-1,1,N'-1,1097',42,0,-1,N'Carbide Rich Content - Headline Style - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-24 21:02:52.403',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1098,'91FDEFE9-A664-4597-8C6F-216E6887810E',1076,2,N'-1,1076,1098',4,0,-1,N'Carbide Rich Content Subunit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-24 21:03:09.400',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1100,'2535F525-EE8E-4092-8E03-BED48676586A',-1,1,N'-1,1100',44,0,-1,N'Carbide Rich Content - Button Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-24 23:50:06.517',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1101,'9D859573-2B89-4892-B192-A9F8EB226554',1054,2,N'-1,1054,1101',2,0,-1,N'Company Info and Social','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-25 18:51:52.090',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1103,'40947D7B-D742-4A35-A43C-0860CF6BC31C',1054,2,N'-1,1054,1103',4,0,-1,N'Fonts','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-25 18:53:45.860',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1105,'E7E42A07-98E9-4049-8BA1-7C519C754F58',1130,3,N'-1,1056,1130,1105',0,0,-1,N'Welcome','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-25 19:11:38.533',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1110,'56F32A86-635E-4F21-8921-263F6620AEA5',1054,2,N'-1,1054,1110',6,0,-1,N'Page Properties','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-27 13:57:32.123',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1111,'DEF043AA-BF9D-4DF8-B915-3878A0F11708',-1,1,N'-1,1111',44,0,-1,N'Page Settings - Metadata Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 14:00:43.090',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1114,'9FEC1D06-CC36-4C0A-9D1C-B40EBAD5E52F',-1,1,N'-1,1114',47,0,-1,N'Company Info - Social Sharing Info - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 14:46:22.113',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1115,'73377195-3C5B-4EB4-8332-6DC1F2D65516',-1,1,N'-1,1115',48,0,-1,N'Page Settings - OG Page Type - Dropdown','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 15:14:41.157',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1116,'AE972E9B-D761-4ACE-A622-EB89C391DBF8',-1,1,N'-1,1116',49,0,-1,N'Company Info and Social - Website Avatar - Image Cropper','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 17:10:56.560',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1119,'E1CD5FAE-DCA9-4657-87A5-AF6121CAF909',1059,2,N'-1,1059,1119',1,0,-1,N'Basic Page','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-27 17:54:48.703',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1120,'3C722FA5-7C03-46B4-AB36-6E0312666445',1053,1,N'-1,1053,1120',0,0,NULL,N'Basic Page','6FBDE604-4178-42CE-A10B-8A2600A2F07D',CONVERT(datetime,'2019-06-27 17:57:22.207',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1121,'4A503716-B356-4760-A93D-26BFF89059BE',1056,2,N'-1,1056,1121',4,0,-1,N'About Us','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-27 18:02:39.970',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1122,'ACC9CCFE-8CD3-4DB4-93DF-59A7F18B7D2C',1131,4,N'-1,1056,1121,1131,1122',0,0,-1,N'About Us','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-27 18:47:49.477',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1124,'96F72212-6BD4-4993-83B4-404F007A2D1B',-1,1,N'-1,1124',2,0,-1,N'Site 1','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-28 10:14:07.380',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1125,'60906F04-444A-4807-AEF2-C90D4C49B8E5',-1,1,N'-1,1125',3,0,-1,N'Site 2','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-28 10:14:16.710',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1126,'530D7DC7-8A95-429A-8447-1D4B3BEF7DCB',-1,1,N'-1,1126',49,0,-1,N'Media Picker (single image)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-28 11:48:41.967',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1127,'FC51125F-8E3E-4722-9E21-106117BC794A',1057,3,N'-1,1124,1057,1127',3,0,-1,N'Fynydd Logo (White, Wide)','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-28 11:51:13.810',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1128,'9354EDFB-3EE1-47EB-8DD8-78C4DFB5DF9D',-1,1,N'-1,1128',50,0,-1,N'Carbide Container Unit - Unit Container Help - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-29 17:42:51.007',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1129,'A6834AA8-DE55-422E-B1C0-C1F61A485483',1076,2,N'-1,1076,1129',1,0,-1,N'Carbide Container Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-29 17:43:26.553',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1130,'8CA61E11-8CEF-4D4F-AAEB-FA818F426EF1',1056,2,N'-1,1056,1130',3,0,-1,N'Welcome Unit','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-29 17:44:54.410',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1131,'CA46CA1C-20BE-4035-8943-9747B51F76C7',1121,3,N'-1,1056,1121,1131',1,0,-1,N'About Us Unit','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-29 17:45:59.483',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1132,'C8CAEA10-5911-40C3-B786-440F416AAF35',1085,2,N'-1,1085,1132',0,0,-1,N'Welcome Unit','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-29 19:39:41.397',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1133,'FD92550E-7258-4B3C-B086-DA43DF8F7FE4',1132,3,N'-1,1085,1132,1133',0,0,-1,N'Welcome Content','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-29 19:40:15.557',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1134,'27E7E37C-CA11-4672-A9A8-B4044E8AF3E8',-1,1,N'-1,1134',45,0,-1,N'Carbide Navigation Unit - Position - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-01 11:30:34.597',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1135,'1AFD7E61-9DC8-424A-A13B-32AAE8631F00',1076,2,N'-1,1076,1135',2,0,-1,N'Carbide Basic Navigation Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-01 11:31:10.503',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1136,'4E2F999E-B845-4EBE-AF12-FD61956FD326',1056,2,N'-1,1056,1136',0,0,-1,N'Primary Navigation','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-01 11:33:53.930',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1137,'ACED7444-A146-416D-A8CB-B3794100D5AE',1056,2,N'-1,1056,1137',1,0,-1,N'Footer Navigation','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-01 11:35:20.150',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1138,'6F931C91-ABEB-4974-BD45-1DFBC281CEE5',1076,2,N'-1,1076,1138',0,0,-1,N'Carbide Portfolio','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-07-06 15:47:21.200',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1139,'6C81FBDA-5504-431A-9AE3-D6192BD20A88',-1,1,N'-1,1139',46,0,-1,N'Page Properties - Tags Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-06 18:13:50.803',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1140,'CF580A6E-3A11-43EA-97C2-541DB86A46F1',1138,3,N'-1,1076,1138,1140',0,0,-1,N'Carbide Portfolio View Subunit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-07 19:47:53.987',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1141,'4100A489-B86B-4685-BBF8-C62AECB083B4',1059,2,N'-1,1059,1141',2,0,-1,N'Carbide Page Collection Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-07 22:19:58.457',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1142,'DBB87980-3EC1-4EA6-B021-240714EA2040',1056,2,N'-1,1056,1142',5,0,-1,N'Services','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:21:19.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1144,'C645DA5E-251D-4610-973A-C7F1733D6040',1142,3,N'-1,1056,1142,1144',0,0,-1,N'Sample Service One','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:35:16.293',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1145,'22093737-E4E4-4468-986F-2C76A68FAFB7',1142,3,N'-1,1056,1142,1145',1,0,-1,N'Sample Service Two','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:36:25.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1146,'8EC3DD27-7067-4D8A-86B8-0C1A55A536C9',1142,3,N'-1,1056,1142,1146',2,0,-1,N'Sample Service Three','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:37:13.250',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1147,'D31FE085-A68B-490B-A221-E5BA920B97A7',1145,4,N'-1,1056,1142,1145,1147',0,0,-1,N'Intro Unit','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:43:12.643',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1148,'B1E470A3-810A-410E-8E50-F8F5F1DCE655',1147,5,N'-1,1056,1142,1145,1147,1148',0,0,-1,N'Intro Content','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:43:48.440',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1149,'E42ACA73-90E1-43D9-AE65-FDF842C8CF92',-1,1,N'-1,1149',47,0,-1,N'List View - carbidePageCollectionUnit','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-07 23:35:38.793',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1150,'E8E8420F-C957-4D8B-A8DB-63BD8DC8CA60',1145,4,N'-1,1056,1142,1145,1150',1,0,-1,N'Container Two','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-08 01:46:24.087',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1151,'6BFAAF58-E8C5-418F-B0FA-2CFAA84C0EFC',-1,1,N'-1,1151',48,0,-1,N'Carbide Page Collection Unit - List view','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-08 19:24:03.653',121));

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoNode] OFF

