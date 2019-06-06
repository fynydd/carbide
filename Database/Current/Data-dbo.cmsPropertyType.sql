SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 32 rows to dbo.cmsPropertyType

SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (6,1043,1032,3,N'umbracoFile',N'Upload image',0,1,NULL,NULL,0,'00000006-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (7,-91,1032,3,N'umbracoWidth',N'Width',0,0,NULL,N'in pixels',0,'00000007-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (8,-91,1032,3,N'umbracoHeight',N'Height',0,0,NULL,N'in pixels',0,'00000008-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (9,-93,1032,3,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'00000009-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (10,-92,1032,3,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'0000000A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (24,-90,1033,4,N'umbracoFile',N'Upload file',0,1,NULL,NULL,0,'00000018-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (25,-92,1033,4,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'00000019-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (26,-93,1033,4,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'0000001A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (28,-89,1044,11,N'umbracoMemberComments',N'Comments',0,0,NULL,NULL,0,'0000001C-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (29,-91,1044,11,N'umbracoMemberFailedPasswordAttempts',N'Failed Password Attempts',1,0,NULL,NULL,0,'0000001D-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (30,-49,1044,11,N'umbracoMemberApproved',N'Is Approved',2,0,NULL,NULL,0,'0000001E-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (31,-49,1044,11,N'umbracoMemberLockedOut',N'Is Locked Out',3,0,NULL,NULL,0,'0000001F-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (32,-94,1044,11,N'umbracoMemberLastLockoutDate',N'Last Lockout Date',4,0,NULL,NULL,0,'00000020-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (33,-94,1044,11,N'umbracoMemberLastLogin',N'Last Login Date',5,0,NULL,NULL,0,'00000021-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (34,-94,1044,11,N'umbracoMemberLastPasswordChangeDate',N'Last Password Change Date',6,0,NULL,NULL,0,'00000022-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (35,-94,1044,NULL,N'umbracoMemberPasswordRetrievalQuestion',N'Password Question',7,0,NULL,NULL,0,'00000023-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (36,-94,1044,NULL,N'umbracoMemberPasswordRetrievalAnswer',N'Password Answer',8,0,NULL,NULL,0,'00000024-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (37,-88,1055,12,N'metaTitle',N'Meta Title',0,0,NULL,NULL,0,'4072EBF0-B42A-42BE-B46D-3D02960CD493');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (38,-88,1055,12,N'metaKeywords',N'Meta Keywords',1,0,NULL,NULL,0,'739B20DA-EAC6-4CB7-AC8A-8192E606BEE5');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (39,-88,1055,12,N'metaDescription',N'Meta Description',2,0,NULL,NULL,0,'332E7216-3C90-45E2-AB9B-B3F7FECFDDE2');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (41,1043,1055,12,N'shareImage',N'Share Image',3,0,NULL,NULL,0,'CA10576E-5D2C-458E-8AF8-00F74D7B9CB8');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (42,1070,1063,14,N'bolideSimpleHeroBackgroundImage',N'Background Image',0,0,NULL,NULL,0,'3B60A002-7C63-4EB7-AE88-D895C05B4D55');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (43,1065,1063,14,N'bolideSimpleHeroTitle',N'Title',1,1,NULL,NULL,0,'3CA1A54F-E961-4E57-A409-AD2EE16FC910');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (44,1062,1063,14,N'bolideSimpleHeroExcerpt',N'Excerpt',2,0,NULL,NULL,0,'826DB653-53B5-4BE7-BB7D-CF85752D6BE7');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (45,1065,1063,14,N'bolideSimpleHeroButtonText',N'Button Text',3,0,NULL,NULL,0,'4E44466D-803E-4E35-95B9-F867D98540D3');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (46,1064,1063,14,N'bolideSimpleHeroButtonLink',N'Button Link',4,0,NULL,NULL,0,'D96C8758-FABC-48A6-84EE-AA275D704BEF');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (47,1065,1063,14,N'bolideSimpleHeroButtonUrl',N'Button URL',5,0,NULL,NULL,0,'E0A830DE-B417-407A-9EC1-DAEF188BCCF5');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (48,1066,1069,15,N'bolideSimpleHeroFrames',N'Hero Frames',0,0,NULL,N'Content frames for the hero',0,'35BB0EB9-9E21-4802-8625-2C8471F06489');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (49,1067,1069,15,N'bolideSimpleHeroFrameDuration',N'Frame Duration',1,1,NULL,N'Milliseconds to leave each frame on-screen',0,'8EF0F80C-86D8-48F0-B3DF-24EAF6A71E17');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (50,1068,1069,15,N'bolideSimpleHeroTransitionTime',N'Transition Time',2,1,NULL,N'Millisecond time for frame transitions',0,'00DA1376-4DEE-45F8-81B3-1BC577598B3E');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (51,-49,1069,15,N'bolideSimpleHeroShowCountdown',N'Show Countdown',3,1,NULL,NULL,0,'F7DB7C32-EF84-4893-83A1-B348C8D629E9');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (52,-49,1063,14,N'bolideSimpleHeroEnabled',N'Enabled',6,0,NULL,NULL,0,'3D638670-7411-4B60-89F8-872469B5E506');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF

