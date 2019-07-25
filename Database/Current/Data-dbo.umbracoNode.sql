SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 139 rows to dbo.umbracoNode

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
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (-89,'C6BAC0DD-4AB9-45B1-8E30-E4B619EE5DA3',-1,1,N'-1,-89',33,0,-1,N'Textarea (short)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-05-29 18:29:07.267',121));
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
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1052,'5A5DE72C-7729-42E2-AFFE-DDF5F8B258F8',1059,2,N'-1,1059,1052',1,0,-1,N'Home Page','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-04 15:24:45.140',121));
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
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1063,'6BF7A4D5-5C66-4DF4-B838-4B98B9A69343',1206,3,N'-1,1076,1206,1063',2,0,-1,N'Simple Hero Unit Frame','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-04 19:38:29.630',121));
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
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1069,'4DE14525-B8F4-4DAA-8007-5EAEEAC06051',1206,3,N'-1,1076,1206,1069',3,0,-1,N'Simple Hero Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-04 19:52:37.570',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1070,'D21E6CF2-25AC-47F5-B1C6-0DE9428EC3ED',-1,1,N'-1,1070',36,0,-1,N'Carbide Simple Hero Frame - Background Image - Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-04 19:54:20.893',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1071,'EB86BFF8-80C0-4F58-B45B-565CF5229A76',1057,3,N'-1,1124,1057,1071',0,0,-1,N'03756 Mountcooksunset 5120X2880','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 19:55:26.843',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1072,'95149A2B-88ED-462A-A21C-A1812E7FBDE1',1057,3,N'-1,1124,1057,1072',1,0,-1,N'03560 Thetopangagradient 5120X2880','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 19:57:13.040',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1073,'3DD42308-7592-4589-A704-2EE90B8A5A8E',1057,3,N'-1,1124,1057,1073',2,0,-1,N'03588 Morrainelake 5120X2880','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-04 19:57:54.047',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1075,'191338DA-127C-4395-A6E9-EEAF8B98D3AC',1054,2,N'-1,1054,1075',1,0,-1,N'CSS Properties','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-12 19:11:24.313',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1076,'5E123CB8-9E7D-4EE1-B1EE-CA9F552E8957',-1,1,N'-1,1076',0,0,-1,N'Components','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-06-12 19:25:20.520',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1085,'CDCA7AFE-6C24-43FD-AE45-6A6BDDA0ACE0',-1,1,N'-1,1085',1,0,-1,N'Carbide Site 2','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-06-16 16:02:22.863',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1097,'A7154D30-3775-4C17-A8DE-E3754DE08DB8',-1,1,N'-1,1097',42,0,-1,N'Carbide Rich Content - Headline Style - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-24 21:02:52.403',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1098,'91FDEFE9-A664-4597-8C6F-216E6887810E',1207,3,N'-1,1076,1207,1098',1,0,-1,N'Rich Content Subunit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-24 21:03:09.400',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1100,'2535F525-EE8E-4092-8E03-BED48676586A',-1,1,N'-1,1100',44,0,-1,N'Carbide Rich Content - Button Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-24 23:50:06.517',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1101,'9D859573-2B89-4892-B192-A9F8EB226554',1054,2,N'-1,1054,1101',2,0,-1,N'Company Information','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-25 18:51:52.090',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1103,'40947D7B-D742-4A35-A43C-0860CF6BC31C',1054,2,N'-1,1054,1103',4,0,-1,N'Fonts','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-25 18:53:45.860',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1110,'56F32A86-635E-4F21-8921-263F6620AEA5',1054,2,N'-1,1054,1110',6,0,-1,N'Page Properties','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-27 13:57:32.123',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1111,'DEF043AA-BF9D-4DF8-B915-3878A0F11708',-1,1,N'-1,1111',44,0,-1,N'Page Settings - Metadata Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 14:00:43.090',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1115,'73377195-3C5B-4EB4-8332-6DC1F2D65516',-1,1,N'-1,1115',48,0,-1,N'Page Settings - OG Page Type - Dropdown','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 15:14:41.157',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1116,'AE972E9B-D761-4ACE-A622-EB89C391DBF8',-1,1,N'-1,1116',49,0,-1,N'Company Info and Social - Website Avatar - Image Cropper','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-27 17:10:56.560',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1119,'E1CD5FAE-DCA9-4657-87A5-AF6121CAF909',1059,2,N'-1,1059,1119',1,0,-1,N'Content Page','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-27 17:54:48.703',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1120,'3C722FA5-7C03-46B4-AB36-6E0312666445',1053,1,N'-1,1053,1120',0,0,NULL,N'Basic Page','6FBDE604-4178-42CE-A10B-8A2600A2F07D',CONVERT(datetime,'2019-06-27 17:57:22.207',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1124,'96F72212-6BD4-4993-83B4-404F007A2D1B',-1,1,N'-1,1124',2,0,-1,N'Site 1','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-28 10:14:07.380',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1125,'60906F04-444A-4807-AEF2-C90D4C49B8E5',-1,1,N'-1,1125',3,0,-1,N'Site 2','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-28 10:14:16.710',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1126,'530D7DC7-8A95-429A-8447-1D4B3BEF7DCB',-1,1,N'-1,1126',49,0,-1,N'Media Picker (single image)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-28 11:48:41.967',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1127,'FC51125F-8E3E-4722-9E21-106117BC794A',1057,3,N'-1,1124,1057,1127',3,0,-1,N'Fynydd Logo (White, Wide)','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-06-28 11:51:13.810',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1128,'9354EDFB-3EE1-47EB-8DD8-78C4DFB5DF9D',-1,1,N'-1,1128',50,0,-1,N'Content Container Unit Help - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-06-29 17:42:51.007',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1129,'A6834AA8-DE55-422E-B1C0-C1F61A485483',1206,3,N'-1,1076,1206,1129',1,0,-1,N'Content Container Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-06-29 17:43:26.553',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1134,'27E7E37C-CA11-4672-A9A8-B4044E8AF3E8',-1,1,N'-1,1134',45,0,-1,N'Carbide Navigation Unit - Position - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-01 11:30:34.597',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1139,'6C81FBDA-5504-431A-9AE3-D6192BD20A88',-1,1,N'-1,1139',46,0,-1,N'Page Properties - Tags Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-06 18:13:50.803',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1140,'CF580A6E-3A11-43EA-97C2-541DB86A46F1',1207,3,N'-1,1076,1207,1140',2,0,-1,N'Portfolio View Subunit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-07 19:47:53.987',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1141,'4100A489-B86B-4685-BBF8-C62AECB083B4',1059,2,N'-1,1059,1141',2,0,-1,N'Page Collection','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-07 22:19:58.457',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1142,'DBB87980-3EC1-4EA6-B021-240714EA2040',1056,2,N'-1,1056,1142',4,0,-1,N'Services','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:21:19.270',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1144,'C645DA5E-251D-4610-973A-C7F1733D6040',1142,3,N'-1,1056,1142,1144',0,0,-1,N'Sample Service One','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:35:16.293',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1145,'22093737-E4E4-4468-986F-2C76A68FAFB7',1142,3,N'-1,1056,1142,1145',1,0,-1,N'Sample Service Two','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:36:25.263',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1146,'8EC3DD27-7067-4D8A-86B8-0C1A55A536C9',1142,3,N'-1,1056,1142,1146',2,0,-1,N'Sample Service Three','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-07 22:37:13.250',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1149,'E42ACA73-90E1-43D9-AE65-FDF842C8CF92',-1,1,N'-1,1149',47,0,-1,N'List View - carbidePageCollectionUnit','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-07 23:35:38.793',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1151,'6BFAAF58-E8C5-418F-B0FA-2CFAA84C0EFC',-1,1,N'-1,1151',48,0,-1,N'Carbide Page Collection Unit - List view','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-08 19:24:03.653',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1153,'01A623F9-068C-4D5C-8246-A74D49AA9243',-1,1,N'-1,1153',49,0,-1,N'CSS Custom Properties - Site Level - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-08 23:11:50.933',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1154,'A43F507D-8701-4E2D-ACA8-AEE7DB6F8B52',-1,1,N'-1,1154',50,0,-1,N'Content Units - Nested Content','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-08 23:13:52.247',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1155,'23E4C142-6911-4CB6-97FE-605BC840DE21',1059,2,N'-1,1059,1155',3,0,-1,N'Settings','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-08 23:25:58.410',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1156,'842B6426-938C-423D-BB3A-74F46412AAE2',1056,2,N'-1,1056,1156',0,0,-1,N'Settings','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-08 23:28:47.223',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1157,'7069EB7A-ACF2-421C-91FB-00BB399F5CD9',1056,2,N'-1,1056,1157',1,0,-1,N'About Us','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-08 23:34:12.980',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1159,'9413F871-1F9A-44D7-A1FC-47E094878391',1206,3,N'-1,1076,1206,1159',4,0,-1,N'Navigation Unit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-09 11:10:21.090',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1160,'23A5DCC0-6828-4284-A1D7-656A0B63A785',-1,1,N'-1,1160',51,0,-1,N'Settings - Navigation - Nested Content','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-09 11:14:56.733',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1161,'E9774344-B6D2-446B-ADF1-A98B3C5314A7',-1,1,N'-1,1161',52,0,-1,N'Content Subunits - Nested Content','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-09 22:33:58.003',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1162,'A1AD6508-A42F-4A26-A688-CFB99617E9F7',-1,1,N'-1,1162',53,0,-1,N'Sort Order - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-09 23:06:40.290',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1163,'233EEE97-CFCC-41D2-9E84-C78892C8B117',-1,1,N'-1,1163',54,0,-1,N'Page Sort By - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-09 23:08:04.880',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1165,'97A67AA2-D682-47E1-8C96-BC5E69A72511',-1,1,N'-1,1165',55,0,-1,N'List View - pageCollection','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-11 11:19:10.190',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1166,'63A6D26B-8B77-4AC3-94D4-45460067FC43',-1,1,N'-1,1166',56,0,-1,N'Portfolio View Subunit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 11:49:10.857',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1167,'3121CF7C-1ADC-41B9-AC0D-C55C6810EAD0',-1,1,N'-1,1167',57,0,-1,N'Simple Hero Unit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 12:48:01.743',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1168,'D358A97B-30C6-4419-9C53-79D9D6A29FED',-1,1,N'-1,1168',58,0,-1,N'Navigation Unit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 12:49:34.827',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1169,'8A6C3CAE-11C7-4A55-806F-6EAAEC3296D8',-1,1,N'-1,1169',59,0,-1,N'Content Container Unit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 12:51:08.187',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1170,'F1B887CF-63CA-4DD7-8E5E-AE0074E481F6',-1,1,N'-1,1170',60,0,-1,N'Rich Content Subunit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 12:52:24.250',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1172,'3DDEBCCF-F98A-428D-9146-48BD0BE9B946',-1,1,N'-1,1172',61,0,-1,N'CSS Custom Properties - Page Level - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 13:02:43.947',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1173,'FE6AA217-6B66-4DD3-BD40-944DCAC718BA',1124,2,N'-1,1124,1173',1,0,-1,N'Gallery Images','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:30:15.023',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1174,'9AAE1221-7E93-4314-826E-FDC43B0B770A',1173,3,N'-1,1124,1173,1174',0,0,-1,N'Background Bar Cafeteria 1253184','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:47.850',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1175,'91B47B90-E311-45CA-BB86-580394FE64B5',1173,3,N'-1,1124,1173,1175',1,0,-1,N'Abstract Art Background 2490924','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:48.197',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1176,'22EDCFA9-FAF4-42EA-B1D8-FF30892F90C5',1173,3,N'-1,1124,1173,1176',2,0,-1,N'Abstract Agriculture Background 2342578','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:48.460',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1177,'14CA8E61-61E9-4D70-AF64-8361058185DF',1173,3,N'-1,1124,1173,1177',3,0,-1,N'Ancient Antique Architecture 911999','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:48.743',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1178,'A6395973-1390-43BF-B2C5-D5593FE857C6',1173,3,N'-1,1124,1173,1178',4,0,-1,N'Asian Background Beach 737534','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:49.010',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1179,'D84A0AB0-9CAC-40A7-9968-72F001F95373',1173,3,N'-1,1124,1173,1179',5,0,-1,N'Close Up Focus Nature 863081','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:49.197',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1180,'197AE2EC-D36E-4857-8C5D-6A4C61C928B7',1173,3,N'-1,1124,1173,1180',6,0,-1,N'Beach Footwear Ocean 853188','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:49.460',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1181,'1140A3B9-1CA7-4815-9086-D1C99DECCDA9',1173,3,N'-1,1124,1173,1181',7,0,-1,N'Accessories Accessory Asia 914196','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:49.743',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1182,'9797B33F-B42D-4AE7-8708-715051768CC6',1173,3,N'-1,1124,1173,1182',8,0,-1,N'Action Active Automotive 2578021','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:50.073',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1183,'D9F2F16A-8825-49F3-9D84-758565B648AC',1173,3,N'-1,1124,1173,1183',9,0,-1,N'Botanical Closeup Dark 2490925','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:31:50.320',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1184,'5F3375E5-ACCB-4D1B-BF72-142E37070767',-21,1,N'-1,-21,1184',1,1,-1,N'31180979107 Da6a935c20 O','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 15:43:21.653',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1185,'62659182-1E2C-4CF1-ABE9-88AAAD047A1F',1173,3,N'-1,1124,1173,1185',10,0,-1,N'31180979107 Da6a935c20 O','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',CONVERT(datetime,'2019-07-15 16:43:51.473',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1187,'C3D711A8-A4F9-453F-831B-44F144C2E125',1207,3,N'-1,1076,1207,1187',3,0,-1,N'Gallery View Subunit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-15 16:46:01.420',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1188,'3CE91453-5FF6-4015-9397-8231F475F5E0',-1,1,N'-1,1188',61,0,-1,N'Gallery View Subunit - Media Folder - Media Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 16:47:29.140',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1189,'964A2C2D-8D82-409B-B7D5-2EB0B72CB845',-1,1,N'-1,1189',62,0,-1,N'Gallery View Subunit - Tags Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 16:50:20.783',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1190,'B5F79603-57EE-4A4B-9690-3BB53FA1065D',-1,1,N'-1,1190',63,0,-1,N'Gallery View Subunit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 16:51:57.193',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1191,'713C9A38-5FD0-47B0-B4A2-95D5F131C3B7',-1,1,N'-1,1191',64,0,-1,N'Tags (Images)','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-15 16:53:21.180',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1192,'248D77FA-13BC-494B-AF27-3F74DB920F5B',-1,1,N'-1,1192',65,0,-1,N'Navigation Unit - Navigation Style - Dropdown','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-18 15:33:20.627',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1193,'F1ABCCE5-C44D-4C9F-A1BD-F32087849ED8',-1,1,N'-1,1193',66,0,-1,N'Content Container Unit - Show Sidebar Navigation - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-18 17:31:06.097',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1194,'2AB5CACA-2464-4D12-B968-8F5C172FD84C',1056,2,N'-1,1056,1194',2,0,-1,N'Contact Us','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-18 18:19:19.040',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1195,'43562D27-3476-455C-BC89-F0DDFA769607',-1,1,N'-1,1195',67,0,-1,N'Content Container Unit - Sidebar Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-19 10:07:40.963',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1196,'194B6071-3794-454B-B55E-F6D1EDCAC085',-1,1,N'-1,1196',68,0,-1,N'Navigation Unit - Manual Links Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-19 10:23:25.420',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1197,'0388FEFE-70E0-4CEC-9AE2-757EFFB709CE',1157,3,N'-1,1056,1157,1197',0,0,-1,N'History','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-21 10:32:44.660',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1198,'A6ECAF60-92EA-4E43-8FCB-87BAC81DFD1E',-1,1,N'-1,1198',69,0,-1,N'Content Container Unit - Sidebar Style - Radio button list','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-21 10:40:58.443',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1199,'CEF918A9-2760-4D44-B944-0D7990D9D643',1201,3,N'-1,1054,1201,1199',1,0,-1,N'Merge CSS Properties','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-22 16:05:44.203',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1201,'347517E1-B173-44F5-9569-89468736A903',1054,2,N'-1,1054,1201',0,0,-1,N'Units Merge','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-07-22 16:17:49.850',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1202,'20485EF0-891D-4E64-94F2-C40A220C6A8D',1201,3,N'-1,1054,1201,1202',1,0,-1,N'Merge Unit Properties','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-22 16:18:15.660',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1206,'432F44F1-8C09-44CD-A4D3-AE185BECA172',1076,2,N'-1,1076,1206',0,0,-1,N'Units','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-07-22 16:35:49.520',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1207,'1AC4ABFB-ACCD-4B69-9BBE-AC13123B3172',1076,2,N'-1,1076,1207',0,0,-1,N'Subunits','2F7A2769-6B0B-4468-90DD-AF42D64F7F16',CONVERT(datetime,'2019-07-22 16:35:55.190',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1208,'6A99EE0A-79FB-41A6-9A62-17D558EB0F40',1054,2,N'-1,1054,1208',4,0,-1,N'Social Networks','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-22 16:55:47.480',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1209,'6AE61AAE-AE15-482B-B075-A1E5C2A44459',1056,2,N'-1,1056,1209',3,0,-1,N'Thank You','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-25 11:26:04.900',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1210,'58B5736D-77C0-40BC-B085-489F2A32F389',-1,1,N'-1,1210',69,0,-1,N'Form Subunit - Form Picker','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-25 12:37:10.010',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1211,'DC02AC7A-BC70-4BCD-A448-2B29C75A493D',1207,3,N'-1,1076,1207,1211',3,0,-1,N'Form Subunit','A2CB7800-F571-4787-9638-BC48539A0EFB',CONVERT(datetime,'2019-07-25 12:37:52.290',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1212,'722E0B31-BC40-4A14-BEEC-8111D128F261',-1,1,N'-1,1212',70,0,-1,N'Form Subunit - CSS Separator - Carbide Static Text','30A2A501-1978-4DDB-A57B-F7EFED43BA3C',CONVERT(datetime,'2019-07-25 12:41:49.093',121));
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoNode] ([id],[uniqueId],[parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[nodeObjectType],[createDate]) VALUES (1213,'67904878-55DC-4DD4-91DE-C5DD70CEC068',-20,1,N'-1,-20,1213',0,1,-1,N'History (1)','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',CONVERT(datetime,'2019-07-25 14:37:56.000',121));

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoNode] OFF

