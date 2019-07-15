SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 184 rows to dbo.cmsPropertyType

SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (6,1043,1032,3,N'umbracoFile',N'Upload image',0,1,NULL,NULL,0,'00000006-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (7,-91,1032,3,N'umbracoWidth',N'Width',1,0,NULL,N'in pixels',0,'00000007-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (8,-91,1032,3,N'umbracoHeight',N'Height',2,0,NULL,N'in pixels',0,'00000008-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (9,-93,1032,3,N'umbracoBytes',N'Size',3,0,NULL,N'in bytes',0,'00000009-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (10,-92,1032,3,N'umbracoExtension',N'Type',4,0,NULL,NULL,0,'0000000A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (24,-90,1033,4,N'umbracoFile',N'Upload file',0,1,NULL,NULL,0,'00000018-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (25,-92,1033,4,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'00000019-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (26,-93,1033,4,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'0000001A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (28,-89,1044,11,N'umbracoMemberComments',N'Comments',0,0,NULL,NULL,0,'0000001C-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (29,-91,1044,11,N'umbracoMemberFailedPasswordAttempts',N'Failed Password Attempts',1,0,NULL,NULL,0,'0000001D-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (30,-49,1044,11,N'umbracoMemberApproved',N'Is Approved',2,0,NULL,NULL,0,'0000001E-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (31,-49,1044,11,N'umbracoMemberLockedOut',N'Is Locked Out',3,0,NULL,NULL,0,'0000001F-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (32,-94,1044,11,N'umbracoMemberLastLockoutDate',N'Last Lockout Date',4,0,NULL,NULL,0,'00000020-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (33,-94,1044,11,N'umbracoMemberLastLogin',N'Last Login Date',5,0,NULL,NULL,0,'00000021-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (34,-94,1044,11,N'umbracoMemberLastPasswordChangeDate',N'Last Password Change Date',6,0,NULL,NULL,0,'00000022-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (35,-94,1044,NULL,N'umbracoMemberPasswordRetrievalQuestion',N'Password Question',7,0,NULL,NULL,0,'00000023-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (36,-94,1044,NULL,N'umbracoMemberPasswordRetrievalAnswer',N'Password Answer',8,0,NULL,NULL,0,'00000024-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (42,1070,1063,14,N'backgroundImage',N'Background Image',1,0,NULL,NULL,0,'3B60A002-7C63-4EB7-AE88-D895C05B4D55');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (43,1065,1063,14,N'title',N'Title',2,1,NULL,NULL,0,'3CA1A54F-E961-4E57-A409-AD2EE16FC910');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (44,1062,1063,14,N'excerpt',N'Excerpt',3,0,NULL,NULL,0,'826DB653-53B5-4BE7-BB7D-CF85752D6BE7');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (45,1065,1063,14,N'buttonText',N'Button Text',4,0,NULL,NULL,0,'4E44466D-803E-4E35-95B9-F867D98540D3');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (46,1064,1063,14,N'buttonLink',N'Button Link',5,0,NULL,NULL,0,'D96C8758-FABC-48A6-84EE-AA275D704BEF');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (47,1065,1063,14,N'buttonUrl',N'Button URL',6,0,NULL,NULL,0,'E0A830DE-B417-407A-9EC1-DAEF188BCCF5');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (48,1066,1069,15,N'frames',N'Hero Frames',2,0,NULL,N'Content frames for the hero',0,'35BB0EB9-9E21-4802-8625-2C8471F06489');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (49,1067,1069,15,N'frameDuration',N'Frame Duration',3,1,NULL,N'Milliseconds to leave each frame on-screen',0,'8EF0F80C-86D8-48F0-B3DF-24EAF6A71E17');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (50,1068,1069,15,N'bgTransitionTime',N'Background Transition Time',4,1,NULL,N'Millisecond time for frame background image transitions',0,'00DA1376-4DEE-45F8-81B3-1BC577598B3E');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (51,-49,1069,15,N'showCountdown',N'Show Countdown',6,1,NULL,NULL,0,'F7DB7C32-EF84-4893-83A1-B348C8D629E9');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (52,-49,1063,14,N'enabled',N'Enabled',0,0,NULL,NULL,0,'3D638670-7411-4B60-89F8-872469B5E506');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (53,1068,1069,15,N'frameTransitionTime',N'Frame Transition Time',5,1,NULL,N'Millisecond time for frame text content transitions',0,'710F29AE-7C0B-41B0-9D9C-66A4149A4247');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (55,-89,1075,16,N'zeroCssProperties',N'Mobile',1,0,NULL,NULL,0,'9E5B5213-A9F0-403F-B207-BA3982704072');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (56,-89,1075,16,N'phabCssProperties',N'Phablet',2,0,NULL,NULL,0,'A5E08986-C9F8-4928-B54A-99F7A73BDBC3');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (57,-89,1075,16,N'tabpCssProperties',N'Tablet (Portrait)',3,0,NULL,NULL,0,'6C4C87D8-72D5-4214-95A5-1609B0FAB8AB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (58,-89,1075,16,N'tablCssProperties',N'Tablet (Landscape)',4,0,NULL,NULL,0,'0A545A57-3B00-449F-9A6C-35EECE59E45C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (59,-89,1075,16,N'noteCssProperties',N'Notebook',5,0,NULL,NULL,0,'11493464-CEAC-49F9-9971-35367BC2C92D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (60,-89,1075,16,N'deskCssProperties',N'Desktop',6,0,NULL,NULL,0,'0F8DD16E-C074-4353-B7F5-E8C24438AF42');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (61,-89,1075,16,N'elasCssProperties',N'Elastic',7,0,NULL,NULL,0,'01FF7146-D719-40F3-BAA0-B2F765DBDE1C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (71,1153,1075,16,N'introText',N'Intro Text',0,0,NULL,NULL,0,'D2367234-E64D-46B1-A2E2-E5A93153BF47');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (91,-88,1098,26,N'headline',N'Headline',2,0,NULL,N'',0,'6BD410BE-C5A2-4840-BC4B-D71FF3DB47EB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (92,1097,1098,26,N'headlineStyle',N'Headline Style',3,0,NULL,NULL,0,'DB450F4F-5C9B-4763-9D9B-DDCC921E7C12');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (93,-87,1098,26,N'richContent',N'Content',4,0,NULL,NULL,0,'B92D3130-BE04-4013-89A3-D20C05E87EFF');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (94,-88,1098,26,N'buttonText',N'Button Text',7,0,NULL,N'',0,'0FCF6BB3-94A2-49FE-B0EB-B6B0E9E895D2');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (95,1064,1098,26,N'buttonLink',N'Button Link',8,0,NULL,N'For linking to pages on this website',0,'D4467A35-D41B-4EA9-A754-BC8713C95203');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (96,-88,1098,26,N'buttonURL',N'Button URL',9,0,NULL,N'For linking to external sites',0,'7E5058B7-E6A2-4BA8-8AE9-0019E4C09567');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (98,1100,1098,26,N'buttonSeparator',N'Button Separator',6,0,NULL,NULL,0,'88FEBB67-4DAE-481E-938C-7DC50BC92FDC');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (99,-49,1098,26,N'enabled',N'Enabled',0,0,NULL,NULL,0,'005E5BC3-8DC4-4021-8765-3298F5575FCA');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (101,-88,1101,27,N'companyName',N'Company Name',1,0,NULL,N'',0,'0D09D634-566F-4D5E-AFE7-22B93609D990');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (102,-88,1101,27,N'companyStreetAddress',N'Street Address',2,0,NULL,NULL,0,'9FA5EAEB-CBB3-47B8-8DEF-E6F6C11835B2');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (103,-88,1101,27,N'companyStreetAddressLine2',N'Street Address Line 2',3,0,NULL,NULL,0,'6640FD5C-9303-4F91-AFAF-06D2F261D974');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (104,-88,1101,27,N'companyCity',N'City',4,0,NULL,NULL,0,'98A95EC1-7523-408D-85D9-7160DC50BEAA');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (105,-88,1101,27,N'companyStateOrProvince',N'State or Province',5,0,NULL,NULL,0,'2E7E2CF3-33CE-4D4A-8A40-CCD34A07972F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (106,-88,1101,27,N'companyPostalCode',N'Postal Code',6,0,NULL,NULL,0,'B87C1851-CEBE-441B-8EED-9D04B8BD64ED');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (107,-88,1101,27,N'companyCountry',N'Country',7,0,NULL,NULL,0,'FD1519C9-7794-4628-A750-8723170D7855');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (108,-88,1101,27,N'companyMainTelephone',N'Main Telephone',8,0,NULL,NULL,0,'AA52690A-E310-42E1-8743-AF1AA3D7C851');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (151,-89,1103,38,N'customFontURLs',N'Custom Font URLs',0,0,NULL,N'Enter CSS @import statements to load remote fonts',0,'2A1BDD8D-1661-4F30-85CF-E11D8BC63090');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (152,-88,1103,38,N'bodyFontStack',N'Body Font Stack',1,0,NULL,N'Enter the CSS font stack to use for the default font',0,'9534F3DE-CF7E-44D2-8FCC-4FF69359EF7A');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (153,-88,1103,38,N'monoFontStack',N'Mono Font Stack',2,0,NULL,N'Enter the CSS font stack to use for monospaced text',0,'CE1E003C-AD55-4281-A164-B32E18FCD73D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (154,-88,1103,38,N'headlineFontStack',N'Headline Font Stack',3,0,NULL,N'Enter the CSS font stack to use for headlines',0,'86742398-D38C-46C0-AAD0-53563E7D12EA');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (173,-49,1069,15,N'enabled',N'Enabled',0,0,NULL,NULL,0,'885E0848-376A-44C8-9613-C45590F1984E');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (176,-87,1098,26,N'richContentColumn2',N'Optional Column 2',5,0,NULL,N'Use this to add a second column of content to device sizes larger than phablet',0,'B66D5201-A024-4ECE-BA76-59C8EF3FDB04');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (177,-49,1110,44,N'showInNavigation',N'Show in Navigation',0,0,NULL,N'If used in navigation, allow this page to be seen',0,'CDF26030-577E-4EC6-9FF9-C6629A76AF1F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (178,-49,1110,44,N'showInSiteMap',N'Show in Site Map',1,0,NULL,N'Show this page in site maps',0,'B9AF9D90-A4AF-4DAE-8410-8BAF00B5C42F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (179,-88,1110,44,N'pageName',N'Page Name',2,0,NULL,N'Page name used in search results lists, portfolio lists, menus, etc.',0,'371F1432-2B58-4DD5-A11C-BFF5E33D22BF');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (180,1111,1110,44,N'metadataSeparator',N'Metadata Separator',6,0,NULL,NULL,0,'764EE97C-A64D-4D51-9A05-C5DA53AAD6BF');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (181,-88,1110,44,N'metaTitle',N'Meta Title',7,0,NULL,N'Used for search results page title and social sharing links; keep to fewer than 60 characters',0,'6CC11253-6FDF-415C-A724-6CFE23554A4A');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (182,-88,1110,44,N'metaKeywords',N'Meta Keywords',8,0,NULL,N'Separate keywords with commas',0,'E7D9F4D7-F1A3-4A04-80AD-5613F637CA47');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (183,-89,1110,44,N'metaDescription',N'Meta Description',9,0,NULL,N'Used for search results excerpts and social sharing links; keep to fewer than 150 characters',0,'30B64A26-0EF2-44C8-B0CF-9EAF4169E270');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (189,1114,1101,27,N'socialSharingInfo',N'Social Sharing Info',9,0,NULL,NULL,0,'29CFDCA9-3F00-436B-940D-94CDF649FFC5');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (190,-88,1101,27,N'socialCompanyName',N'Company Name',10,0,NULL,N'Name of your company used for social sharing metadata',0,'2003807D-8D20-4BCC-AA13-7E3BF00F813D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (191,-88,1101,27,N'twitterUserName',N'Twitter User Name',11,0,NULL,N'Twitter user name (used as twitter:creator); omit leading @ character',0,'4EE220BF-BBE1-4E58-B18E-5A1CBB7F4194');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (192,-88,1101,27,N'twitterSiteName',N'Twitter Site Name',12,0,NULL,N'Twitter user name for a website account (used as twitter:site); omit leading @ character',0,'226AE7BB-4C9F-4910-B55C-EB04D9054AE6');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (193,1043,1110,44,N'shareImage',N'Share Image',10,0,NULL,N'Used as a thumbnail when a page is shared on social networks',0,'4A309D3A-9DFF-44B0-B7C1-8CCF921DEC3F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (195,1115,1110,44,N'ogPageType',N'Page Type',11,0,NULL,N'The type of content on the current page',0,'22A73329-FA60-455B-93EF-E849284F8908');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (196,1116,1101,27,N'websiteAvatarPng',N'Website Avatar PNG',13,0,NULL,N'Square website image used for the favicon and browser bookmarks; MUST BE A 512x512 pixel SQUARE PNG',0,'22F13C06-2A1E-46D4-B4BF-F0A70498D4EA');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (205,1126,1101,27,N'companyLogo',N'Logo',0,0,NULL,N'Best is a PNG with transparency',0,'A430F3A0-2B35-4AD6-8DA5-85EF4C828333');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (207,-49,1129,47,N'enabled',N'Enabled',0,0,NULL,NULL,0,'F0AB30E2-B78E-4852-BFDA-40D60045EA65');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (210,1050,1135,48,N'primaryNavigationLinks',N'Primary Navigation Links',0,0,NULL,NULL,0,'B186E934-3152-45A8-B94A-668DCB6BA41C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (211,1041,1110,44,N'tags',N'Tags',5,0,NULL,NULL,0,'BB1C668B-192A-4073-ADAD-ABBC8C8904F6');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (212,1139,1110,44,N'tagsSeparator',N'Tags Separator',4,0,NULL,NULL,0,'F8C9299B-83A5-43CF-AB6D-B53A1DC55322');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (213,-89,1110,44,N'pageExcerpt',N'Page Excerpt',3,0,NULL,N'Page description used in search results lists, portfolio lists, menus, etc.',0,'3D751835-2D30-47DC-9D20-648D62A1BAE3');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (214,-49,1140,49,N'enabled',N'Enabled',0,0,NULL,NULL,0,'BF279D64-0B09-4619-A963-34EA89B95451');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (215,1046,1140,49,N'parentPage',N'Parent Page',2,0,NULL,N'Choose the parent page whose children will be listed in the portfolio.',0,'92EC1FB4-4751-4EDB-B7B5-C8DF82D51A85');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (216,1139,1140,49,N'tagsSeparator',N'Tags Separator',4,0,NULL,NULL,0,'A3C22CDD-C79A-4B22-8399-CFD9BB732D53');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (217,-88,1140,49,N'filterTags',N'Filter Tags',5,0,NULL,N'Only show content with ALL of these tags. Separate with commas.',0,'00C9A8FF-5C8E-4B75-90EA-9F296D3B35E2');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (218,-88,1140,49,N'excludeTags',N'Exclude Tags',6,0,NULL,N'Never show content with ANY of these tags. Separate with commas.',0,'F261DB9D-C5CA-490C-BCCD-9612390F4C84');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (219,-51,1140,49,N'maximumItemCount',N'Maximum Item Count',3,1,NULL,N'Show no more than this number of items; zero means no limit.',0,'31C7DA6B-D8C7-477D-B52E-3AD21526DD3B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (223,1167,1069,15,N'cSSSeparator',N'CSS Separator',7,0,NULL,NULL,0,'241E5327-E335-4439-A893-879A04D96E5D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (224,-89,1069,15,N'zeroCssProperties',N'Mobile',8,0,NULL,NULL,0,'7D090E1B-9354-4DC3-B7A5-EABC43894474');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (225,-89,1069,15,N'phabCssProperties',N'Phablet',9,0,NULL,NULL,0,'3699C223-1399-42CF-8EAA-778B151E1805');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (226,-89,1069,15,N'tabpCssProperties',N'Tablet (portrait)',10,0,NULL,NULL,0,'E7FE008C-AD90-4F7B-82CD-2196651BCB90');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (227,-89,1069,15,N'tablCssProperties',N'Tablet (landscape)',11,0,NULL,NULL,0,'E49804B7-869D-471E-AB6A-3092B24B76B3');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (228,-89,1069,15,N'noteCssProperties',N'Notebook',12,0,NULL,NULL,0,'BDEB73CC-1874-4D76-BAB9-28159A83A456');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (229,-89,1069,15,N'deskCssProperties',N'Desktop',13,0,NULL,NULL,0,'8802E5B0-B032-4AB7-B923-2834857901AD');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (230,-89,1069,15,N'elasCssProperties',N'Elastic',14,0,NULL,NULL,0,'0E64F591-4C79-428E-ACED-DEC21018B321');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (231,1170,1098,26,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'AFB4AEB7-55F1-48AC-BC44-31B6EBEDE71F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (232,-89,1098,26,N'zeroCssProperties',N'Mobile',11,0,NULL,NULL,0,'95D1A2CF-F040-45C3-B046-1828ED332B9B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (233,-89,1098,26,N'phabCssProperties',N'Phablet',12,0,NULL,NULL,0,'617049EB-7AF6-4A95-A2A2-FE20A729D152');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (234,-89,1098,26,N'tabpCssProperties',N'Tablet (portrait)',13,0,NULL,NULL,0,'1E73A62C-701F-41D5-AE31-74E73FA754C8');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (235,-89,1098,26,N'tablCssProperties',N'Tablet (landscape)',14,0,NULL,NULL,0,'611A8C64-9511-4548-8052-F1F27A8D54B4');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (236,-89,1098,26,N'noteCssProperties',N'Notebook',15,0,NULL,NULL,0,'57BBDD3E-89C2-4116-9A0E-C4F8B08031E2');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (237,-89,1098,26,N'deskCssProperties',N'Desktop',16,0,NULL,NULL,0,'1915C77A-8EBF-4FD6-BAB3-83EEE1709AB2');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (238,-89,1098,26,N'elasCssProperties',N'Elastic',17,0,NULL,NULL,0,'57C542BA-AEDB-4552-9E92-2CE39A75E34F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (239,1169,1129,47,N'cSSSeparator',N'CSS Separator',4,0,NULL,NULL,0,'18DCFAAA-47F2-43C4-9066-45F248EF4C9B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (240,-89,1129,47,N'zeroCssProperties',N'Mobile',5,0,NULL,NULL,0,'796745A0-8FF1-403A-9790-81496075ECC1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (241,-89,1129,47,N'phabCssProperties',N'Phablet',6,0,NULL,NULL,0,'128DDE34-02E6-4D18-94A4-BCB9E2BE7946');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (242,-89,1129,47,N'tabpCssProperties',N'Tablet (portrait)',7,0,NULL,NULL,0,'0FEB830E-33CE-4167-B611-183007DD9A26');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (243,-89,1129,47,N'tablCssProperties',N'Tablet (landscape)',8,0,NULL,NULL,0,'1AB645EC-EF58-46B9-88B8-9B780A184EDB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (244,-89,1129,47,N'noteCssProperties',N'Notebook',9,0,NULL,NULL,0,'572F4DA6-D171-496E-A9C6-8733C5AD6677');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (245,-89,1129,47,N'deskCssProperties',N'Desktop',10,0,NULL,NULL,0,'802DB525-7DFF-44EF-94FE-B4460C45C9C1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (246,-89,1129,47,N'elasCssProperties',N'Elastic',11,0,NULL,NULL,0,'2FE15BF4-936E-469D-85B5-C3CDDB0D8109');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (247,1154,1052,53,N'contentUnits',N'Content Units',0,0,NULL,NULL,0,'0AD72FA5-131D-4971-8686-F58632A7531D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (248,-88,1129,47,N'unitName',N'Name',1,1,NULL,N'Used internally to identify this object.',0,'27BFD984-42B8-40FF-986B-D0678662FF12');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (249,-88,1098,26,N'unitName',N'Name',1,1,NULL,N'Used internally to identify this object.',0,'E0372531-34DB-4D2C-A102-B5546B6EDAA9');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (250,-88,1069,15,N'unitName',N'Name',1,0,NULL,N'Used internally to identify this object.',0,'FCB0ADA3-A47E-4948-B554-4192437CA0A5');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (251,1154,1119,54,N'contentUnits',N'Content Units',0,0,NULL,NULL,0,'5764C4A7-3D19-4377-AA73-194FC65F208E');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (252,1161,1129,47,N'contentUnits',N'Content Units',2,0,NULL,NULL,0,'E90C0F41-9BA3-4F64-A513-246CD7EF628C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (254,-89,1135,48,N'primaryNavigationZeroCssProperties',N'Mobile',2,0,NULL,NULL,0,'7662F5D6-7B7B-484B-838A-D9B2D80E9D7B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (255,-89,1135,48,N'primaryNavigationPhabCssProperties',N'Phablet',3,0,NULL,NULL,0,'CB6AED22-0E74-4956-9F1C-B7723E6D4D47');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (256,-89,1135,48,N'primaryNavigationTabpCssProperties',N'Tablet (portrait)',4,0,NULL,NULL,0,'200CF62E-3148-4CFC-A535-E21002640B61');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (257,-89,1135,48,N'primaryNavigationTablCssProperties',N'Tablet (landscape)',5,0,NULL,NULL,0,'CA21EDD7-47A8-4FD6-AFB6-82953811E009');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (258,-89,1135,48,N'primaryNavigationNoteCssProperties',N'Notebook',6,0,NULL,NULL,0,'4BAE7DC2-94E6-4FAF-9FA1-2DB2699F0361');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (259,-89,1135,48,N'primaryNavigationDeskCssProperties',N'Desktop',7,0,NULL,NULL,0,'5E6A5744-3018-48A6-800F-F34488AF71D1');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (260,-89,1135,48,N'primaryNavigationElasCssProperties',N'Elastic',8,0,NULL,NULL,0,'FE7BEF7D-D5CA-4B8F-A2DA-23721FE0EED9');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (261,1050,1158,55,N'footerNavigationLinks',N'Footer Navigation Links',0,0,NULL,NULL,0,'B33D6D2D-EF4D-4EFE-8C84-B56A3BF91511');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (263,-89,1158,55,N'footerNavigationZeroCssProperties',N'Mobile',2,0,NULL,NULL,0,'0B40D3F9-8603-4D5F-BC28-7D0A63F68E2E');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (264,-89,1158,55,N'footerNavigationPhabCssProperties',N'Phablet',3,0,NULL,NULL,0,'F635EDEB-2646-4A38-8C2F-58905BE8FF2D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (265,-89,1158,55,N'footerNavigationTabpCssProperties',N'Tablet (portrait)',4,0,NULL,NULL,0,'B97EDE60-7DB3-4F92-8550-88A378E1FC0F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (266,-89,1158,55,N'footerNavigationTablCssProperties',N'Tablet (landscape)',5,0,NULL,NULL,0,'CAA3264E-8333-43EA-9435-527694943803');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (267,-89,1158,55,N'footerNavigationNoteCssProperties',N'Notebook',6,0,NULL,NULL,0,'8565AA3B-738B-42D8-9D47-A328F5863C83');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (268,-89,1158,55,N'footerNavigationDeskCssProperties',N'Desktop',7,0,NULL,NULL,0,'2568ACF9-FA7F-4E29-8517-0B4DB1719572');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (269,-89,1158,55,N'footerNavigationElasCssProperties',N'Elastic',8,0,NULL,NULL,0,'F1963C58-E8CB-4A5B-AABA-33BD771A9BEB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (270,-49,1159,56,N'enabled',N'Enabled',0,0,NULL,NULL,0,'BCB1DFE2-BC2B-430F-AF2B-8EE54B264987');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (271,1168,1159,56,N'cSSSeparator',N'CSS Separator',4,0,NULL,NULL,0,'D0463BE0-2A56-4BD1-8199-E9A25FC2FA73');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (272,-89,1159,56,N'zeroCssProperties',N'Mobile',5,0,NULL,NULL,0,'315F117A-1DF2-498D-8BF3-F089DC71AD55');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (273,-89,1159,56,N'phabCssProperties',N'Phablet',6,0,NULL,NULL,0,'154691DE-D3BC-4F2D-8C81-6740FE92273C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (274,-89,1159,56,N'tabpCssProperties',N'Tablet (portrait)',7,0,NULL,NULL,0,'54AD4002-DB46-4BF2-96A1-48BAF0B40746');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (275,-89,1159,56,N'tablCssProperties',N'Tablet (landscape)',8,0,NULL,NULL,0,'4857367D-0220-4F71-A5C6-B2BD03B06521');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (276,-89,1159,56,N'noteCssProperties',N'Notebook',9,0,NULL,NULL,0,'A5BC6332-A3C4-4C49-B4E6-3617015D2BB4');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (277,-89,1159,56,N'deskCssProperties',N'Desktop',10,0,NULL,NULL,0,'F074E6FA-6B7B-46ED-B06D-75D13FB01E2D');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (278,-89,1159,56,N'elasCssProperties',N'Elastic',11,0,NULL,NULL,0,'87C210BB-30D0-4886-8FD1-E2CB6E553CB8');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (279,-88,1159,56,N'unitName',N'Name',1,1,NULL,N'Used internally to identify this object.',0,'B29E8E32-D9BC-4B93-B965-B15265979E3E');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (281,1134,1159,56,N'position',N'Position',2,1,NULL,NULL,0,'6A0C7572-3908-4B04-A4DF-2CBE1443D1AC');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (282,1050,1159,56,N'links',N'Links',3,0,NULL,NULL,0,'18F1EA40-69E4-4E84-AA7E-95CC1A42EFE3');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (283,1160,1155,57,N'navigation',N'Navigation',0,0,NULL,NULL,0,'F6FEF8DE-633A-4BBF-9862-069D22EAFC67');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (284,1166,1140,49,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'3D032D52-969E-4EBA-8C21-D5219A782864');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (285,-89,1140,49,N'zeroCssProperties',N'Mobile',11,0,NULL,NULL,0,'3B1D1090-1A88-4617-8C0E-E4C730719F86');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (286,-89,1140,49,N'phabCssProperties',N'Phablet',12,0,NULL,NULL,0,'166010E2-8165-41F6-AF80-0A8FB0F8DBFB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (287,-89,1140,49,N'tabpCssProperties',N'Tablet (portrait)',13,0,NULL,NULL,0,'752D1E79-B99D-41BD-B6C4-25EC46B28AD7');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (288,-89,1140,49,N'tablCssProperties',N'Tablet (landscape)',14,0,NULL,NULL,0,'D7E16CCB-0202-4D2E-B31E-2C8E0D44579B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (289,-89,1140,49,N'noteCssProperties',N'Notebook',15,0,NULL,NULL,0,'1410AD83-D86A-45AF-B31C-2D4B268DB267');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (290,-89,1140,49,N'deskCssProperties',N'Desktop',16,0,NULL,NULL,0,'E9187CB2-8C74-4114-B0B1-9B4822563446');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (291,-89,1140,49,N'elasCssProperties',N'Elastic',17,0,NULL,NULL,0,'49847365-134B-4212-860B-B0CD201C0FF6');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (292,-88,1140,49,N'unitName',N'Name',1,1,NULL,N'Used internally to identify this object.',0,'3933C88C-927E-4127-A7F1-53CFBA93A79F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (293,1163,1140,49,N'sortBy',N'Sort By',7,0,NULL,NULL,0,'07E51F51-583C-413F-B20E-B1FD72FC734B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (294,-88,1140,49,N'sortTags',N'Prefer Tags',8,0,NULL,N'Content with ANY of these tags should be listed first. Separate with commas.',0,'E69A6FF2-03BC-4F87-A98D-F65FD2C048E6');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (295,1162,1140,49,N'sortDirection',N'Sort Order',9,0,NULL,NULL,0,'43D4D7E3-1A8C-4C8D-BD26-3CB620603148');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (296,1172,1171,58,N'introText',N'Intro Text',0,0,NULL,NULL,0,'4C92AA9F-2789-486A-AB79-EF0EF60D54C4');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (297,-89,1171,58,N'zeroCssProperties',N'Mobile',1,0,NULL,NULL,0,'73F6F9BF-DCC2-4E53-8ADB-E014BA306356');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (298,-89,1171,58,N'phabCssProperties',N'Phablet',2,0,NULL,NULL,0,'8E39A115-1E11-4A0A-B6CB-94E13C829B66');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (299,-89,1171,58,N'tabpCssProperties',N'Tablet (Portrait)',3,0,NULL,NULL,0,'AA26BFEC-1958-4976-9A4A-752CF4721999');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (300,-89,1171,58,N'tablCssProperties',N'Tablet (Landscape)',4,0,NULL,NULL,0,'09C45439-4905-4C9D-A61A-E320F6BCA3F2');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (301,-89,1171,58,N'noteCssProperties',N'Notebook',5,0,NULL,NULL,0,'33DA1D8D-928F-42D3-83BA-76E51E25E16C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (302,-89,1171,58,N'deskCssProperties',N'Desktop',6,0,NULL,NULL,0,'7EAC25D9-BFEB-4720-A198-632FB85AD7BB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (303,-89,1171,58,N'elasCssProperties',N'Elastic',7,0,NULL,NULL,0,'7D8C7D4A-0D28-4235-8464-69ACD58FFF9C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (305,-88,1032,3,N'caption',N'Caption',5,0,NULL,NULL,0,'2CC074E8-B8DE-448D-950E-89F53C7424CE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (306,-49,1187,59,N'enabled',N'Enabled',0,0,NULL,NULL,0,'695B7D6D-69FE-4693-92AF-0852560C4DDC');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (307,-88,1187,59,N'unitName',N'Name',1,1,NULL,N'Used internally to identify this object.',0,'6302D30C-2352-4547-A274-819D96273827');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (308,1188,1187,59,N'mediaFolder',N'Media Folder',2,0,NULL,N'Choose the media folder whose children will be listed in the portfolio.',0,'C7385DF7-9880-4AD9-B4B5-8B930C50D663');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (309,-51,1187,59,N'maximumItemCount',N'Maximum Item Count',3,1,NULL,N'Show no more than this number of items; zero means no limit.',0,'976879BA-8DFC-4FF8-BB42-586BB918BB21');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (310,1189,1187,59,N'tagsSeparator',N'Tags Separator',4,0,NULL,NULL,0,'A856F815-1E86-45A0-98AD-D8B7D89913D9');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (311,-88,1187,59,N'filterTags',N'Filter Tags',5,0,NULL,N'Only show content with ALL of these tags. Separate with commas.',0,'3AFDEBCA-1EDA-4C50-8E6B-BCC6C1704092');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (312,-88,1187,59,N'excludeTags',N'Exclude Tags',6,0,NULL,N'Never show content with ANY of these tags. Separate with commas.',0,'584B79A6-EC18-44FD-8096-B74AC2B2829A');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (313,1163,1187,59,N'sortBy',N'Sort By',7,0,NULL,NULL,0,'6D5C6002-4947-487F-AEB4-20DF436D52DB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (314,-88,1187,59,N'sortTags',N'Prefer Tags',8,0,NULL,N'Content with ANY of these tags should be listed first. Separate with commas.',0,'34B64E92-4C64-4DC3-B19D-0695DD026D4C');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (315,1162,1187,59,N'sortDirection',N'Sort Order',9,0,NULL,NULL,0,'3F5E5812-5603-439D-8994-D344075B2B5B');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (316,1190,1187,59,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'3456FD61-1971-46B4-A378-40D265EF1DA7');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (317,-89,1187,59,N'zeroCssProperties',N'Mobile',11,0,NULL,NULL,0,'2A4FC506-D8DF-449D-BEAA-127F6F5760BE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (318,-89,1187,59,N'phabCssProperties',N'Phablet',12,0,NULL,NULL,0,'FC0E07B2-EAFA-47C0-9C16-A6DE1BA80097');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (319,-89,1187,59,N'tabpCssProperties',N'Tablet (portrait)',13,0,NULL,NULL,0,'6FBC0E0D-D639-4D2E-A8BC-F0305BE783C0');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (320,-89,1187,59,N'tablCssProperties',N'Tablet (landscape)',14,0,NULL,NULL,0,'154A869A-7A35-48DE-B4E2-9EEB980C8E11');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (321,-89,1187,59,N'noteCssProperties',N'Notebook',15,0,NULL,NULL,0,'265D22A6-D40B-4F14-AB01-A9D4348EFCCE');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (322,-89,1187,59,N'deskCssProperties',N'Desktop',16,0,NULL,NULL,0,'70B8BF50-169D-43D2-B0B4-D0E01857ABBB');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (323,-89,1187,59,N'elasCssProperties',N'Elastic',17,0,NULL,NULL,0,'011B9E20-966F-4A30-AEF6-F8C4FC0AC72F');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (325,1191,1032,3,N'tags',N'Tags',7,0,NULL,NULL,0,'288CE004-F61A-463A-B1F5-E777DC364312');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (326,1189,1032,3,N'tagsSeparator',N'Tags Separator',6,0,NULL,NULL,0,'82A71515-CC39-4E77-BECB-6C651CBD7F21');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF

