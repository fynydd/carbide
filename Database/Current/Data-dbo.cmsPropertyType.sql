SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 144 rows to dbo.cmsPropertyType

SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (6,1043,1032,3,N'umbracoFile',N'Upload image',0,1,NULL,NULL,0,'00000006-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (7,-91,1032,3,N'umbracoWidth',N'Width',1,0,NULL,N'in pixels',0,'00000007-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (8,-91,1032,3,N'umbracoHeight',N'Height',2,0,NULL,N'in pixels',0,'00000008-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (9,-93,1032,3,N'umbracoBytes',N'Size',3,0,NULL,N'in bytes',0,'00000009-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (10,-92,1032,3,N'umbracoExtension',N'Type',4,0,NULL,NULL,0,'0000000A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (24,-90,1033,4,N'umbracoFile',N'Upload file',0,1,NULL,NULL,0,'00000018-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (25,-92,1033,4,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'00000019-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (26,-93,1033,4,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'0000001A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (28,-89,1044,11,N'umbracoMemberComments',N'Comments',0,0,NULL,NULL,0,'0000001C-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (29,-91,1044,11,N'umbracoMemberFailedPasswordAttempts',N'Failed Password Attempts',1,0,NULL,NULL,0,'0000001D-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (30,-49,1044,11,N'umbracoMemberApproved',N'Is Approved',2,0,NULL,NULL,0,'0000001E-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (31,-49,1044,11,N'umbracoMemberLockedOut',N'Is Locked Out',3,0,NULL,NULL,0,'0000001F-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (32,-94,1044,11,N'umbracoMemberLastLockoutDate',N'Last Lockout Date',4,0,NULL,NULL,0,'00000020-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (33,-94,1044,11,N'umbracoMemberLastLogin',N'Last Login Date',5,0,NULL,NULL,0,'00000021-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (34,-94,1044,11,N'umbracoMemberLastPasswordChangeDate',N'Last Password Change Date',6,0,NULL,NULL,0,'00000022-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (35,-94,1044,NULL,N'umbracoMemberPasswordRetrievalQuestion',N'Password Question',7,0,NULL,NULL,0,'00000023-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (36,-94,1044,NULL,N'umbracoMemberPasswordRetrievalAnswer',N'Password Answer',8,0,NULL,NULL,0,'00000024-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (42,1070,1063,14,N'backgroundImage',N'Background Image',2,0,NULL,NULL,0,'3B60A002-7C63-4EB7-AE88-D895C05B4D55');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (43,1065,1063,14,N'title',N'Title',3,1,NULL,NULL,0,'3CA1A54F-E961-4E57-A409-AD2EE16FC910');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (44,1062,1063,14,N'excerpt',N'Excerpt',4,0,NULL,NULL,0,'826DB653-53B5-4BE7-BB7D-CF85752D6BE7');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (45,1065,1063,14,N'buttonText',N'Button Text',5,0,NULL,NULL,0,'4E44466D-803E-4E35-95B9-F867D98540D3');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (46,1064,1063,14,N'buttonLink',N'Button Link',6,0,NULL,NULL,0,'D96C8758-FABC-48A6-84EE-AA275D704BEF');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (47,1065,1063,14,N'buttonUrl',N'Button URL',7,0,NULL,NULL,0,'E0A830DE-B417-407A-9EC1-DAEF188BCCF5');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (48,1066,1069,15,N'frames',N'Hero Frames',3,0,NULL,N'Content frames for the hero',0,'35BB0EB9-9E21-4802-8625-2C8471F06489');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (49,1067,1069,15,N'frameDuration',N'Frame Duration',5,1,NULL,N'Milliseconds to leave each frame on-screen',0,'8EF0F80C-86D8-48F0-B3DF-24EAF6A71E17');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (50,1068,1069,15,N'bgTransitionTime',N'Background Transition Time',6,1,NULL,N'Millisecond time for frame background image transitions',0,'00DA1376-4DEE-45F8-81B3-1BC577598B3E');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (51,-49,1069,15,N'showCountdown',N'Show Countdown',8,1,NULL,NULL,0,'F7DB7C32-EF84-4893-83A1-B348C8D629E9');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (53,1068,1069,15,N'frameTransitionTime',N'Frame Transition Time',7,1,NULL,N'Millisecond time for frame text content transitions',0,'710F29AE-7C0B-41B0-9D9C-66A4149A4247');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (55,-89,1075,16,N'zeroCssProperties',N'Mobile',10,0,NULL,NULL,0,'9E5B5213-A9F0-403F-B207-BA3982704072');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (56,-89,1075,16,N'phabCssProperties',N'Phablet',11,0,NULL,NULL,0,'A5E08986-C9F8-4928-B54A-99F7A73BDBC3');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (57,-89,1075,16,N'tabpCssProperties',N'Tablet (Portrait)',12,0,NULL,NULL,0,'6C4C87D8-72D5-4214-95A5-1609B0FAB8AB');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (58,-89,1075,16,N'tablCssProperties',N'Tablet (Landscape)',13,0,NULL,NULL,0,'0A545A57-3B00-449F-9A6C-35EECE59E45C');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (59,-89,1075,16,N'noteCssProperties',N'Notebook',14,0,NULL,NULL,0,'11493464-CEAC-49F9-9971-35367BC2C92D');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (60,-89,1075,16,N'deskCssProperties',N'Desktop',15,0,NULL,NULL,0,'0F8DD16E-C074-4353-B7F5-E8C24438AF42');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (61,-89,1075,16,N'elasCssProperties',N'Elastic',16,0,NULL,NULL,0,'01FF7146-D719-40F3-BAA0-B2F765DBDE1C');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (91,-88,1098,26,N'headline',N'Headline',2,0,NULL,N'',0,'6BD410BE-C5A2-4840-BC4B-D71FF3DB47EB');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (92,1097,1098,26,N'headlineStyle',N'Headline Style',3,0,NULL,NULL,0,'DB450F4F-5C9B-4763-9D9B-DDCC921E7C12');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (93,-87,1098,26,N'richContent',N'Content',4,0,NULL,NULL,0,'B92D3130-BE04-4013-89A3-D20C05E87EFF');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (94,-88,1098,26,N'buttonText',N'Button Text',7,0,NULL,N'',0,'0FCF6BB3-94A2-49FE-B0EB-B6B0E9E895D2');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (95,1064,1098,26,N'buttonLink',N'Button Link',8,0,NULL,N'For linking to pages on this website',0,'D4467A35-D41B-4EA9-A754-BC8713C95203');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (96,-88,1098,26,N'buttonURL',N'Button URL',9,0,NULL,N'For linking to external sites',0,'7E5058B7-E6A2-4BA8-8AE9-0019E4C09567');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (98,1100,1098,26,N'buttonSeparator',N'Button Separator',6,0,NULL,NULL,0,'88FEBB67-4DAE-481E-938C-7DC50BC92FDC');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (101,-88,1101,27,N'companyName',N'Company Name',1,0,NULL,N'The full legal name of the company, used in copyright notices, etc.',0,'0D09D634-566F-4D5E-AFE7-22B93609D990');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (102,-88,1101,27,N'companyStreetAddress',N'Street Address',3,0,NULL,NULL,0,'9FA5EAEB-CBB3-47B8-8DEF-E6F6C11835B2');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (103,-88,1101,27,N'companyStreetAddressLine2',N'Street Address Line 2',4,0,NULL,NULL,0,'6640FD5C-9303-4F91-AFAF-06D2F261D974');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (104,-88,1101,27,N'companyCity',N'City',5,0,NULL,NULL,0,'98A95EC1-7523-408D-85D9-7160DC50BEAA');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (105,-88,1101,27,N'companyStateOrProvince',N'State or Province',6,0,NULL,NULL,0,'2E7E2CF3-33CE-4D4A-8A40-CCD34A07972F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (106,-88,1101,27,N'companyPostalCode',N'Postal Code',7,0,NULL,NULL,0,'B87C1851-CEBE-441B-8EED-9D04B8BD64ED');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (107,-88,1101,27,N'companyCountry',N'Country',8,0,NULL,NULL,0,'FD1519C9-7794-4628-A750-8723170D7855');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (108,-88,1101,27,N'companyMainTelephone',N'Main Telephone',9,0,NULL,NULL,0,'AA52690A-E310-42E1-8743-AF1AA3D7C851');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (151,-89,1103,38,N'customFontURLs',N'Custom Font URLs',0,0,NULL,N'Enter CSS @import statements to load remote fonts',0,'2A1BDD8D-1661-4F30-85CF-E11D8BC63090');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (152,-88,1103,38,N'bodyFontStack',N'Body Font Stack',1,0,NULL,N'Enter the CSS font stack to use for the default font',0,'9534F3DE-CF7E-44D2-8FCC-4FF69359EF7A');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (153,-88,1103,38,N'monoFontStack',N'Mono Font Stack',2,0,NULL,N'Enter the CSS font stack to use for monospaced text',0,'CE1E003C-AD55-4281-A164-B32E18FCD73D');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (154,-88,1103,38,N'headlineFontStack',N'Headline Font Stack',3,0,NULL,N'Enter the CSS font stack to use for headlines',0,'86742398-D38C-46C0-AAD0-53563E7D12EA');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (176,-87,1098,26,N'richContentColumn2',N'Optional Column 2',5,0,NULL,N'Use this to add a second column of content to device sizes larger than phablet',0,'B66D5201-A024-4ECE-BA76-59C8EF3FDB04');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (177,-49,1110,44,N'showInNavigation',N'Show in Navigation',0,0,NULL,N'If used in navigation, allow this page to be seen',0,'CDF26030-577E-4EC6-9FF9-C6629A76AF1F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (178,-49,1110,44,N'showInSiteMap',N'Show in Site Map',1,0,NULL,N'Show this page in site maps',0,'B9AF9D90-A4AF-4DAE-8410-8BAF00B5C42F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (179,-88,1110,44,N'pageName',N'Page Name',2,0,NULL,N'Page name used in search results lists, portfolio lists, menus, etc.',0,'371F1432-2B58-4DD5-A11C-BFF5E33D22BF');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (180,1111,1110,44,N'metadataSeparator',N'Metadata Separator',6,0,NULL,NULL,0,'764EE97C-A64D-4D51-9A05-C5DA53AAD6BF');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (181,-88,1110,44,N'metaTitle',N'Meta Title',7,0,NULL,N'Used for search results page title and social sharing links; keep to fewer than 60 characters',0,'6CC11253-6FDF-415C-A724-6CFE23554A4A');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (182,-88,1110,44,N'metaKeywords',N'Meta Keywords',8,0,NULL,N'Separate keywords with commas',0,'E7D9F4D7-F1A3-4A04-80AD-5613F637CA47');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (183,-89,1110,44,N'metaDescription',N'Meta Description',9,0,NULL,N'Used for search results excerpts and social sharing links; keep to fewer than 150 characters',0,'30B64A26-0EF2-44C8-B0CF-9EAF4169E270');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (193,1043,1110,44,N'shareImage',N'Share Image',10,0,NULL,N'Used as a thumbnail when a page is shared on social networks',0,'4A309D3A-9DFF-44B0-B7C1-8CCF921DEC3F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (195,1115,1110,44,N'ogPageType',N'Page Type',11,0,NULL,N'The type of content on the current page',0,'22A73329-FA60-455B-93EF-E849284F8908');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (196,1116,1101,27,N'websiteAvatarPng',N'Website Avatar PNG',10,0,NULL,N'Square website image used for the favicon and browser bookmarks; MUST BE A 512x512 pixel SQUARE PNG',0,'22F13C06-2A1E-46D4-B4BF-F0A70498D4EA');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (205,1126,1101,27,N'companyLogo',N'Logo',0,0,NULL,N'Best is a PNG with transparency',0,'A430F3A0-2B35-4AD6-8DA5-85EF4C828333');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (211,1041,1110,44,N'tags',N'Tags',5,0,NULL,NULL,0,'BB1C668B-192A-4073-ADAD-ABBC8C8904F6');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (212,1139,1110,44,N'tagsSeparator',N'Tags Separator',4,0,NULL,NULL,0,'F8C9299B-83A5-43CF-AB6D-B53A1DC55322');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (213,-89,1110,44,N'pageExcerpt',N'Page Excerpt',3,0,NULL,N'Page description used in search results lists, portfolio lists, menus, etc.',0,'3D751835-2D30-47DC-9D20-648D62A1BAE3');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (215,1046,1140,49,N'parentPage',N'Parent Page',2,0,NULL,N'Choose the parent page whose children will be listed in the portfolio.',0,'92EC1FB4-4751-4EDB-B7B5-C8DF82D51A85');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (216,1139,1140,49,N'tagsSeparator',N'Tags Separator',4,0,NULL,NULL,0,'A3C22CDD-C79A-4B22-8399-CFD9BB732D53');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (217,-88,1140,49,N'filterTags',N'Filter Tags',5,0,NULL,N'Only show content with ALL of these tags. Separate with commas.',0,'00C9A8FF-5C8E-4B75-90EA-9F296D3B35E2');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (218,-88,1140,49,N'excludeTags',N'Exclude Tags',6,0,NULL,N'Never show content with ANY of these tags. Separate with commas.',0,'F261DB9D-C5CA-490C-BCCD-9612390F4C84');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (219,-51,1140,49,N'maximumItemCount',N'Maximum Item Count',3,1,NULL,N'Show no more than this number of items; zero means no limit.',0,'31C7DA6B-D8C7-477D-B52E-3AD21526DD3B');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (223,1167,1069,15,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'241E5327-E335-4439-A893-879A04D96E5D');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (231,1170,1098,26,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'AFB4AEB7-55F1-48AC-BC44-31B6EBEDE71F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (239,1169,1129,47,N'cSSSeparator',N'CSS Separator',7,0,NULL,NULL,0,'18DCFAAA-47F2-43C4-9066-45F248EF4C9B');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (247,1154,1052,53,N'contentUnits',N'Content Units',0,0,NULL,NULL,0,'0AD72FA5-131D-4971-8686-F58632A7531D');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (251,1154,1119,54,N'contentUnits',N'Content Units',0,0,NULL,NULL,0,'5764C4A7-3D19-4377-AA73-194FC65F208E');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (252,1161,1129,47,N'contentSubunits',N'Content Subunits',4,0,NULL,N'Add subunit content to the container.',0,'E90C0F41-9BA3-4F64-A513-246CD7EF628C');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (271,1168,1159,56,N'cSSSeparator',N'CSS Separator',7,0,NULL,NULL,0,'D0463BE0-2A56-4BD1-8199-E9A25FC2FA73');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (281,1134,1159,56,N'position',N'Position',3,1,NULL,NULL,0,'6A0C7572-3908-4B04-A4DF-2CBE1443D1AC');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (282,1050,1159,56,N'links',N'Links',6,0,NULL,NULL,0,'18F1EA40-69E4-4E84-AA7E-95CC1A42EFE3');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (283,1160,1155,57,N'navigation',N'Navigation',0,0,NULL,NULL,0,'F6FEF8DE-633A-4BBF-9862-069D22EAFC67');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (284,1166,1140,49,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'3D032D52-969E-4EBA-8C21-D5219A782864');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (293,1163,1140,49,N'sortBy',N'Sort By',7,0,NULL,NULL,0,'07E51F51-583C-413F-B20E-B1FD72FC734B');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (294,-88,1140,49,N'sortTags',N'Prefer Tags',8,0,NULL,N'Content with ANY of these tags should be listed first. Separate with commas.',0,'E69A6FF2-03BC-4F87-A98D-F65FD2C048E6');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (295,1162,1140,49,N'sortDirection',N'Sort Order',9,0,NULL,NULL,0,'43D4D7E3-1A8C-4C8D-BD26-3CB620603148');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (305,-88,1032,3,N'caption',N'Caption',5,0,NULL,NULL,0,'2CC074E8-B8DE-448D-950E-89F53C7424CE');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (308,1188,1187,59,N'mediaFolder',N'Media Folder',2,0,NULL,N'Choose the media folder whose children will be listed in the portfolio.',0,'C7385DF7-9880-4AD9-B4B5-8B930C50D663');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (309,-51,1187,59,N'maximumItemCount',N'Maximum Item Count',3,1,NULL,N'Show no more than this number of items; zero means no limit.',0,'976879BA-8DFC-4FF8-BB42-586BB918BB21');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (310,1189,1187,59,N'tagsSeparator',N'Tags Separator',4,0,NULL,NULL,0,'A856F815-1E86-45A0-98AD-D8B7D89913D9');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (311,-88,1187,59,N'filterTags',N'Filter Tags',5,0,NULL,N'Only show content with ALL of these tags. Separate with commas.',0,'3AFDEBCA-1EDA-4C50-8E6B-BCC6C1704092');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (312,-88,1187,59,N'excludeTags',N'Exclude Tags',6,0,NULL,N'Never show content with ANY of these tags. Separate with commas.',0,'584B79A6-EC18-44FD-8096-B74AC2B2829A');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (313,1163,1187,59,N'sortBy',N'Sort By',7,0,NULL,NULL,0,'6D5C6002-4947-487F-AEB4-20DF436D52DB');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (314,-88,1187,59,N'sortTags',N'Prefer Tags',8,0,NULL,N'Content with ANY of these tags should be listed first. Separate with commas.',0,'34B64E92-4C64-4DC3-B19D-0695DD026D4C');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (315,1162,1187,59,N'sortDirection',N'Sort Order',9,0,NULL,NULL,0,'3F5E5812-5603-439D-8994-D344075B2B5B');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (316,1190,1187,59,N'cSSSeparator',N'CSS Separator',10,0,NULL,NULL,0,'3456FD61-1971-46B4-A378-40D265EF1DA7');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (325,1191,1032,3,N'tags',N'Tags',7,0,NULL,NULL,0,'288CE004-F61A-463A-B1F5-E777DC364312');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (326,1189,1032,3,N'tagsSeparator',N'Tags Separator',6,0,NULL,NULL,0,'82A71515-CC39-4E77-BECB-6C651CBD7F21');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (327,1192,1159,56,N'navigationStyle',N'Style',2,0,NULL,N'Determines how the navigation is displayed in the template.',0,'06C16193-91BF-48D7-922B-9A5CCA418963');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (330,1195,1129,47,N'sidebarSeparator',N'Sidebar Separator',5,0,NULL,NULL,0,'7218A42B-30DD-4E11-A69F-C69EA5F12893');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (331,-49,1159,56,N'showChildrenOfHomePage',N'Show Children of Home Page',4,0,NULL,N'Show all enabled child pages of the home page.',0,'F1C44833-EF60-4D20-B32E-4F5695E2E265');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (332,1196,1159,56,N'manualLinksSeparator',N'Manual Links Separator',5,0,NULL,NULL,0,'47CB0CCE-A5BB-4EF6-ABE3-800CA7F96A48');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (339,-89,1199,60,N'zeroCssProperties',N'Mobile',900,0,NULL,NULL,0,'D7E0F604-28DA-49E4-84FF-F03CB37E5A11');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (340,-89,1199,60,N'phabCssProperties',N'Phablet',901,0,NULL,NULL,0,'20F36E8A-A369-4673-B90D-68F53C629D21');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (341,-89,1199,60,N'tabpCssProperties',N'Tablet (Portrait)',902,0,NULL,NULL,0,'BD733295-7488-46FF-8640-3C188678E31E');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (342,-89,1199,60,N'tablCssProperties',N'Tablet (Landscape)',903,0,NULL,NULL,0,'426ABFD5-950F-4283-A131-F4CEDC626FA7');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (343,-89,1199,60,N'noteCssProperties',N'Notebook',904,0,NULL,NULL,0,'02D081AC-211F-4485-9DF9-F6398830C3A2');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (344,-89,1199,60,N'deskCssProperties',N'Desktop',905,0,NULL,NULL,0,'67FF6B63-C8F5-47CA-9487-DFFEE1373DFD');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (345,-89,1199,60,N'elasCssProperties',N'Elastic',906,0,NULL,NULL,0,'CE1809EF-309C-4908-8167-C5FEF47B228C');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (365,-49,1202,62,N'enabled',N'Enabled',0,0,NULL,NULL,0,'1B40CC94-0776-4E6E-975C-C45A77C34AC6');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (366,-88,1202,62,N'unitName',N'Unit Name',1,1,NULL,N'Shown in content lists.',0,'F04F7C64-FC22-4691-BAD7-BB899D6AA06B');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (380,1153,1155,63,N'cssSeparator',N'Css Separator',0,0,NULL,NULL,0,'C90C8402-3F46-40D4-AABE-3B75247D381F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (381,1172,1052,64,N'cSSSeparator',N'CSS Separator',1,0,NULL,NULL,0,'EA328BC1-5512-4582-A719-B6B3CBD0084F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (382,1172,1119,65,N'cSSSeparator',N'CSS Separator',1,0,NULL,NULL,0,'13D0C93F-12D5-465A-A0D3-EB8384883F71');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (393,-88,1208,66,N'socialCompanyName',N'Company Name',10,0,NULL,N'Name of your company used for social sharing metadata',0,'2CF28D8D-EC3C-46B6-968D-F263E4DF07C3');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (394,-88,1208,66,N'twitterUserName',N'Twitter User Name',11,0,NULL,N'Twitter user name (used as twitter:creator); omit leading @ character',0,'55053240-60F6-4321-AE8E-5698FD718756');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (395,-88,1208,66,N'twitterSiteName',N'Twitter Site Name',12,0,NULL,N'Twitter user name for a website account (used as twitter:site); omit leading @ character',0,'913FE6D3-31CC-4F3D-B479-D6120FC64DE3');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (397,1210,1211,67,N'form',N'Form',2,0,NULL,NULL,0,'26069E1B-6BB7-441C-8102-AF79BD8A342A');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (398,1212,1211,67,N'cSSSeparator',N'CSS Separator',3,0,NULL,NULL,0,'46B0836B-9FA0-40E5-B0D8-6D3C19794604');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (399,-49,1069,15,N'underneathPrimaryNav',N'Underneath Primary Nav',9,0,NULL,N'If this is the first unit on a page, it should start underneath the primary navigation.',0,'D8935DD4-36B6-4DB1-9E50-6DF50E6A2645');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (400,-88,1101,27,N'companyNickname',N'Company Nickname',2,0,NULL,N'The short version of a company name, typically without LLC, Inc., etc.',0,'DF4A60F9-3DE8-4CEE-A0ED-C5AEA859AF34');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (401,1161,1223,68,N'contentSubunits',N'Column Content',2,0,NULL,NULL,0,'105DED45-D9DD-45E0-A143-BD468BB3DA08');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (402,1224,1222,69,N'columns',N'Columns',2,0,NULL,NULL,0,'99937E08-044E-487E-A4E0-1C361984ADC7');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (403,1225,1222,69,N'cSSSeparator',N'CSS Separator',3,0,NULL,NULL,0,'6A2BB6FB-C5AD-4EEC-808A-678DE8FC111F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (404,1226,1223,68,N'cSSSeparator',N'CSS Separator',3,0,NULL,NULL,0,'D4DAE507-70D4-463F-AFE3-78EED7AB0289');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (415,1256,1119,65,N'style',N'Choose Shared Style',0,0,NULL,N'For each breakpoint enter CSS custom property variables and values to override the appearance.',0,'A9FE8B27-C948-4E45-A4A6-BEDB65F253B8');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (416,1256,1052,64,N'style',N'Choose Shared Style',0,0,NULL,N'For each breakpoint enter CSS custom property variables and values to override the appearance.',0,'243D93C4-33DF-4FF9-8977-9CF690F5DD72');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (419,1193,1276,70,N'showSidebarNavigation',N'Navigation Style',2,1,NULL,N'Show children or sibling page links in a sidebar navigation.',0,'09A6FB85-AF98-4603-9803-7ADFC29B373F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (420,-88,1276,70,N'sidebarTitle',N'Sidebar Title',3,0,NULL,N'Text to display above the sidebar; also used for the mobile menu.',0,'BFD93C00-DBED-4B67-AB29-C0CDD076CFB0');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (421,-88,1276,70,N'sidebarExcerpt',N'Sidebar Excerpt',4,0,NULL,N'Text under the title as a lead-in to the menu itself.',0,'528260A0-D9DB-404C-BAFE-E2E0900261B7');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (422,1198,1276,70,N'sidebarStyle',N'Sidebar Style',5,1,NULL,NULL,0,'4A0BA08A-CB00-4CF6-BF54-6CF9CF097F35');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (423,-88,1276,70,N'bulletClass',N'Bullet Class',6,0,NULL,N'For a custom list style, specify the Font Awesome bullet class to use, or nothing for no bullet.',0,'881E2F1F-83F6-4891-B297-64BD2F0D3E2F');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (424,-51,1276,70,N'sidebarDepth',N'Max Depth',7,1,NULL,N'Show this many nested levels of content (e.g. 2 shows starting node and its children, 3 also shows grandchildren, etc.)',0,'4D59D095-069A-4E1A-A439-58852090B542');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (425,-49,1276,70,N'showParentInSidebar',N'Show Parent',8,0,NULL,N'When showing a sidebar navigation, show the parent at the top.',0,'D179162A-0BB2-466E-9EA9-1D35E48F25EE');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (428,1281,1129,47,N'sidebar',N'Choose Sidebar',6,0,NULL,N'Show a sidebar navigation to the left of the content; collapses for mobile.',0,'741FDE3B-571F-4973-8721-27BCEC7A8C85');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (431,1285,1069,15,N'settingsSeparator',N'Settings Separator',4,0,NULL,NULL,0,'2B7F9703-D342-4991-902A-DC7F16264368');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (432,1256,1202,62,N'style',N'Choose Shared Style',999,0,NULL,N'For each breakpoint enter CSS custom property variables and values to override the appearance.',0,'B07F4423-A6E1-4AA7-8380-7E83BD4C4E82');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (433,1288,1063,14,N'cSSSeparator',N'CSS Separator',8,0,NULL,NULL,0,'5A359F8D-6FB5-4BFF-AC63-D7E61791FB9B');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (434,1070,1129,47,N'backgroundImage',N'Background Image',2,0,NULL,N'',0,'C3936B4F-844C-4D8C-9B84-8E057DEFDC79');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (435,-88,1155,71,N'linkedInPageName',N'LinkedIn Page Name',13,0,NULL,N'The company-specific ending on your LinkedIn page URL.',0,'D0A69E38-F79D-4A6D-AA83-7C91EF1E1CA5');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (436,1291,1129,47,N'contentSeparator',N'Content Separator',3,0,NULL,NULL,0,'523C4B7D-6733-481F-985F-A5B015180487');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (437,1292,1069,15,N'heroFramesSeparator',N'Hero Frames Separator',2,0,NULL,NULL,0,'180BD861-0220-40E4-A3CE-13E13611C244');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF

