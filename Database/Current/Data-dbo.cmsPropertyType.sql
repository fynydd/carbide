SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 71 rows to dbo.cmsPropertyType

SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (6,1043,1032,3,N'umbracoFile',N'Upload image',0,1,NULL,NULL,0,'00000006-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (7,-91,1032,3,N'umbracoWidth',N'Width',0,0,NULL,N'in pixels',0,'00000007-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (8,-91,1032,3,N'umbracoHeight',N'Height',0,0,NULL,N'in pixels',0,'00000008-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (9,-93,1032,3,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'00000009-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (10,-92,1032,3,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'0000000A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (24,-90,1033,4,N'umbracoFile',N'Upload file',0,1,NULL,NULL,0,'00000018-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (25,-92,1033,4,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'00000019-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (26,-93,1033,4,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'0000001A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (28,-89,1044,11,N'umbracoMemberComments',N'Comments',0,0,NULL,NULL,0,'0000001C-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (29,-91,1044,11,N'umbracoMemberFailedPasswordAttempts',N'Failed Password Attempts',1,0,NULL,NULL,0,'0000001D-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (30,-49,1044,11,N'umbracoMemberApproved',N'Is Approved',2,0,NULL,NULL,0,'0000001E-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (31,-49,1044,11,N'umbracoMemberLockedOut',N'Is Locked Out',3,0,NULL,NULL,0,'0000001F-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (32,-94,1044,11,N'umbracoMemberLastLockoutDate',N'Last Lockout Date',4,0,NULL,NULL,0,'00000020-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (33,-94,1044,11,N'umbracoMemberLastLogin',N'Last Login Date',5,0,NULL,NULL,0,'00000021-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (34,-94,1044,11,N'umbracoMemberLastPasswordChangeDate',N'Last Password Change Date',6,0,NULL,NULL,0,'00000022-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (35,-94,1044,NULL,N'umbracoMemberPasswordRetrievalQuestion',N'Password Question',7,0,NULL,NULL,0,'00000023-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (36,-94,1044,NULL,N'umbracoMemberPasswordRetrievalAnswer',N'Password Answer',8,0,NULL,NULL,0,'00000024-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (37,-88,1055,12,N'metaTitle',N'Meta Title',0,0,NULL,NULL,0,'4072EBF0-B42A-42BE-B46D-3D02960CD493');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (38,-88,1055,12,N'metaKeywords',N'Meta Keywords',1,0,NULL,NULL,0,'739B20DA-EAC6-4CB7-AC8A-8192E606BEE5');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (39,-88,1055,12,N'metaDescription',N'Meta Description',2,0,NULL,NULL,0,'332E7216-3C90-45E2-AB9B-B3F7FECFDDE2');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (41,1043,1055,12,N'shareImage',N'Share Image',3,0,NULL,NULL,0,'CA10576E-5D2C-458E-8AF8-00F74D7B9CB8');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (42,1070,1063,14,N'backgroundImage',N'Background Image',1,0,NULL,NULL,0,'3B60A002-7C63-4EB7-AE88-D895C05B4D55');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (43,1065,1063,14,N'title',N'Title',2,1,NULL,NULL,0,'3CA1A54F-E961-4E57-A409-AD2EE16FC910');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (44,1062,1063,14,N'excerpt',N'Excerpt',3,0,NULL,NULL,0,'826DB653-53B5-4BE7-BB7D-CF85752D6BE7');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (45,1065,1063,14,N'buttonText',N'Button Text',4,0,NULL,NULL,0,'4E44466D-803E-4E35-95B9-F867D98540D3');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (46,1064,1063,14,N'buttonLink',N'Button Link',5,0,NULL,NULL,0,'D96C8758-FABC-48A6-84EE-AA275D704BEF');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (47,1065,1063,14,N'buttonUrl',N'Button URL',6,0,NULL,NULL,0,'E0A830DE-B417-407A-9EC1-DAEF188BCCF5');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (48,1066,1069,15,N'frames',N'Hero Frames',1,0,NULL,N'Content frames for the hero',0,'35BB0EB9-9E21-4802-8625-2C8471F06489');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (49,1067,1069,15,N'frameDuration',N'Frame Duration',2,1,NULL,N'Milliseconds to leave each frame on-screen',0,'8EF0F80C-86D8-48F0-B3DF-24EAF6A71E17');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (50,1068,1069,15,N'bgTransitionTime',N'Background Transition Time',3,1,NULL,N'Millisecond time for frame background image transitions',0,'00DA1376-4DEE-45F8-81B3-1BC577598B3E');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (51,-49,1069,15,N'showCountdown',N'Show Countdown',5,1,NULL,NULL,0,'F7DB7C32-EF84-4893-83A1-B348C8D629E9');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (52,-49,1063,14,N'enabled',N'Enabled',0,0,NULL,NULL,0,'3D638670-7411-4B60-89F8-872469B5E506');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (53,1068,1069,15,N'frameTransitionTime',N'Frame Transition Time',4,0,NULL,N'Millisecond time for frame text content transitions',0,'710F29AE-7C0B-41B0-9D9C-66A4149A4247');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (55,-89,1075,16,N'zeroCssProperties',N'Mobile',1,0,NULL,NULL,0,'9E5B5213-A9F0-403F-B207-BA3982704072');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (56,-89,1075,16,N'phabCssProperties',N'Phablet',2,0,NULL,NULL,0,'A5E08986-C9F8-4928-B54A-99F7A73BDBC3');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (57,-89,1075,16,N'tabpCssProperties',N'Tablet (Portrait)',3,0,NULL,NULL,0,'6C4C87D8-72D5-4214-95A5-1609B0FAB8AB');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (58,-89,1075,16,N'tablCssProperties',N'Tablet (Landscape)',4,0,NULL,NULL,0,'0A545A57-3B00-449F-9A6C-35EECE59E45C');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (59,-89,1075,16,N'noteCssProperties',N'Notebook',5,0,NULL,NULL,0,'11493464-CEAC-49F9-9971-35367BC2C92D');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (60,-89,1075,16,N'deskCssProperties',N'Desktop',6,0,NULL,NULL,0,'0F8DD16E-C074-4353-B7F5-E8C24438AF42');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (61,-89,1075,16,N'elasCssProperties',N'Elastic',7,0,NULL,NULL,0,'01FF7146-D719-40F3-BAA0-B2F765DBDE1C');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (70,1091,1069,21,N'cssHelpSimpleHero',N'CSS Help (simple hero)',0,0,NULL,NULL,0,'BA43A30E-31F1-4E36-9148-DC8A43931AFA');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (71,1092,1075,16,N'introText',N'Intro Text',0,0,NULL,NULL,0,'D2367234-E64D-46B1-A2E2-E5A93153BF47');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (91,-88,1098,26,N'headline',N'Headline',1,0,NULL,N'',0,'6BD410BE-C5A2-4840-BC4B-D71FF3DB47EB');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (92,1097,1098,26,N'headlineStyle',N'Headline Style',2,0,NULL,NULL,0,'DB450F4F-5C9B-4763-9D9B-DDCC921E7C12');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (93,1062,1098,26,N'richContent',N'Content',3,0,NULL,NULL,0,'B92D3130-BE04-4013-89A3-D20C05E87EFF');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (94,-88,1098,26,N'buttonText',N'Button Text',5,0,NULL,N'',0,'0FCF6BB3-94A2-49FE-B0EB-B6B0E9E895D2');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (95,1064,1098,26,N'buttonLink',N'Button Link',6,0,NULL,N'For linking to pages on this website',0,'D4467A35-D41B-4EA9-A754-BC8713C95203');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (96,-88,1098,26,N'buttonURL',N'Button URL',7,0,NULL,N'For linking to external sites',0,'7E5058B7-E6A2-4BA8-8AE9-0019E4C09567');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (98,1100,1098,26,N'buttonSeparator',N'Button Separator',4,0,NULL,NULL,0,'88FEBB67-4DAE-481E-938C-7DC50BC92FDC');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (99,-49,1098,26,N'enabled',N'Enabled',0,0,NULL,NULL,0,'005E5BC3-8DC4-4021-8765-3298F5575FCA');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (101,-88,1101,27,N'companyName',N'Name',0,0,NULL,N'',0,'0D09D634-566F-4D5E-AFE7-22B93609D990');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (102,-88,1101,27,N'companyStreetAddress',N'Street Address',1,0,NULL,NULL,0,'9FA5EAEB-CBB3-47B8-8DEF-E6F6C11835B2');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (103,-88,1101,27,N'companyStreetAddressLine2',N'Street Address Line 2',2,0,NULL,NULL,0,'6640FD5C-9303-4F91-AFAF-06D2F261D974');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (104,-88,1101,27,N'companyCity',N'City',3,0,NULL,NULL,0,'98A95EC1-7523-408D-85D9-7160DC50BEAA');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (105,-88,1101,27,N'companyStateOrProvince',N'State or Province',4,0,NULL,NULL,0,'2E7E2CF3-33CE-4D4A-8A40-CCD34A07972F');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (106,-88,1101,27,N'companyPostalCode',N'Postal Code',5,0,NULL,NULL,0,'B87C1851-CEBE-441B-8EED-9D04B8BD64ED');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (107,-88,1101,27,N'companyCountry',N'Country',6,0,NULL,NULL,0,'FD1519C9-7794-4628-A750-8723170D7855');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (108,-88,1101,27,N'companyMainTelephone',N'Main Telephone',7,0,NULL,NULL,0,'AA52690A-E310-42E1-8743-AF1AA3D7C851');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (127,-88,1102,32,N'facebookURL',N'Facebook URL',0,0,NULL,NULL,0,'BF361D6C-7541-48D8-A894-33FC21E4773A');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (128,-88,1102,32,N'twitterURL',N'Twitter URL',3,0,NULL,NULL,0,'85EF0C72-77B9-4DBB-B9F9-A38887237122');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (129,-88,1102,32,N'youTubeURL',N'YouTube URL',4,0,NULL,NULL,0,'8B2BC977-C305-4E69-A25F-F11D38007E8F');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (130,-88,1102,32,N'linkedInURL',N'LinkedIn URL',1,0,NULL,NULL,0,'557AB7F9-1C1B-4E2F-B3B0-C04A89445E46');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (131,-88,1102,32,N'pinterestURL',N'Pinterest URL',2,0,NULL,NULL,0,'997C1A97-921B-44C1-A15A-3A154B6AA41E');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (151,-89,1103,38,N'customFontURLs',N'Custom Font URLs',0,0,NULL,N'Enter CSS @import statements to load remote fonts',0,'2A1BDD8D-1661-4F30-85CF-E11D8BC63090');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (152,-88,1103,38,N'bodyFontStack',N'Body Font Stack',1,0,NULL,N'Enter the CSS font stack to use for the default font',0,'9534F3DE-CF7E-44D2-8FCC-4FF69359EF7A');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (153,-88,1103,38,N'monoFontStack',N'Mono Font Stack',2,0,NULL,N'Enter the CSS font stack to use for monospaced text',0,'CE1E003C-AD55-4281-A164-B32E18FCD73D');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (154,-88,1103,38,N'headlineFontStack',N'Headline Font Stack',3,0,NULL,N'Enter the CSS font stack to use for headlines',0,'86742398-D38C-46C0-AAD0-53563E7D12EA');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (168,1096,1104,41,N'customCssHelp',N'Custom CSS Help',0,0,NULL,NULL,0,'E68F4725-D45C-406E-88FF-5E81CD2EEA14');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (173,-49,1069,15,N'enabled',N'Enabled',0,0,NULL,NULL,0,'885E0848-376A-44C8-9613-C45590F1984E');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (174,1106,1098,43,N'cssHelpRichContent',N'CSS Help (rich content)',0,0,NULL,NULL,0,'E3A6A2F0-1F8C-4F95-80C5-0BBAE889765B');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (175,1109,1101,27,N'shortCodesHelp',N'Short Codes',8,0,NULL,NULL,0,'06612430-AA86-4B70-A8EE-F9C468159738');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF

