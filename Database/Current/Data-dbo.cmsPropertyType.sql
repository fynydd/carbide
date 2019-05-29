SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 39 rows to dbo.cmsPropertyType

SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (6,1043,1032,3,N'umbracoFile',N'Upload image',0,1,NULL,NULL,0,'00000006-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (7,-91,1032,3,N'umbracoWidth',N'Width',0,0,NULL,N'in pixels',0,'00000007-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (8,-91,1032,3,N'umbracoHeight',N'Height',0,0,NULL,N'in pixels',0,'00000008-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (9,-93,1032,3,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'00000009-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (10,-92,1032,3,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'0000000A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (24,-90,1033,4,N'umbracoFile',N'Upload file',0,1,NULL,NULL,0,'00000018-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (25,-92,1033,4,N'umbracoExtension',N'Type',0,0,NULL,NULL,0,'00000019-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (26,-93,1033,4,N'umbracoBytes',N'Size',0,0,NULL,N'in bytes',0,'0000001A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (28,-89,1044,11,N'umbracoMemberComments',N'Comments',0,0,NULL,NULL,0,'0000001C-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (29,-99,1044,11,N'umbracoMemberFailedPasswordAttempts',N'Failed Password Attempts',1,0,NULL,NULL,0,'0000001D-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (30,-49,1044,11,N'umbracoMemberApproved',N'Is Approved',2,0,NULL,NULL,0,'0000001E-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (31,-49,1044,11,N'umbracoMemberLockedOut',N'Is Locked Out',3,0,NULL,NULL,0,'0000001F-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (32,-99,1044,11,N'umbracoMemberLastLockoutDate',N'Last Lockout Date',4,0,NULL,NULL,0,'00000020-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (33,-99,1044,11,N'umbracoMemberLastLogin',N'Last Login Date',5,0,NULL,NULL,0,'00000021-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (34,-99,1044,11,N'umbracoMemberLastPasswordChangeDate',N'Last Password Change Date',6,0,NULL,NULL,0,'00000022-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (35,-99,1044,NULL,N'umbracoMemberPasswordRetrievalAnswer',N'Password Answer',0,0,NULL,NULL,0,'B3D4FF36-A0F3-47D8-9A7B-6FF753704E5F');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (36,-99,1044,NULL,N'umbracoMemberPasswordRetrievalQuestion',N'Password Question',1,0,NULL,NULL,0,'73C85DEB-372D-4E72-90DB-257031429DE5');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (37,-87,1051,12,N'quote',N'Quote',0,1,NULL,N'Quotation text',0,'0EBAFE66-8822-4318-9136-7F9551320415');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (38,-88,1052,13,N'firstName',N'First Name',0,0,NULL,NULL,0,'1A64EC2B-ABCC-42E6-B99F-99877494AB24');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (39,-88,1052,13,N'middleName',N'Middle Name',1,0,NULL,NULL,0,'21E8EE33-70AE-406C-A8DA-F20E2BB3877B');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (40,-88,1052,13,N'lastName',N'Last Name',2,0,NULL,NULL,0,'16085B83-C2FC-4258-92A2-56D6D7DD7F1D');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (41,-88,1052,13,N'dateOfBirth',N'Date of Birth',3,0,NULL,NULL,0,'A64C880E-7015-4621-85AD-2B8555847BDE');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (42,-88,1052,13,N'dateOfDeath',N'Date of Death',4,0,NULL,NULL,0,'44BED18E-DE92-4520-9538-C7A529EA8762');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (43,1053,1052,13,N'gender',N'Gender',5,0,NULL,NULL,0,'A6FAC8CB-D18B-4704-AB59-ECAFFFB6174A');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (44,-87,1052,13,N'biography',N'Biography',6,0,NULL,NULL,0,'AF64096E-AFAA-41BB-8DD7-5ECFC00CC75D');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (45,-89,1052,13,N'excerpt',N'Excerpt',7,0,NULL,NULL,0,'451D63B4-BB92-4D1F-82D0-414FC6FEFB6A');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (46,1059,1051,12,N'author',N'Author',2,0,NULL,NULL,0,'9BBBB1A3-85CC-475C-9547-C867C96AB28D');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (47,-88,1060,14,N'sourceName',N'Source Name',0,1,NULL,NULL,0,'D13846FF-E67E-46D7-A4C3-086A9837A9D0');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (48,1064,1051,12,N'source',N'Source',3,0,NULL,NULL,0,'AA058D6D-5C01-4B87-AF8B-22356F99FD0E');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (49,-88,1051,12,N'year',N'Year',4,0,NULL,NULL,0,'8F9EC494-0EF4-43C5-9319-678E300C039C');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (53,9526,1051,12,N'duplicateQuoteFinder',N'Duplicate Quote Finder',1,0,NULL,NULL,0,'7D75D873-2773-4085-AAB4-C61FE3463AD0');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (54,21635,1052,13,N'photo',N'Photo',9,0,NULL,NULL,0,'F3F19955-F4E7-4916-BE04-D785975550BC');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (55,21637,1051,15,N'authorSearchText',N'Author Search Text',0,0,NULL,NULL,0,'CFF0FA3E-F296-4184-9951-CFCD8DC5ABC4');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (56,21637,1051,15,N'sourceSearchText',N'Source Search Text',1,0,NULL,NULL,0,'C206DAAB-5F0D-492E-ABFD-9E3B943F3850');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (57,21638,1051,15,N'quoteSearchText',N'Quote Search Text',2,0,NULL,NULL,0,'1A0DDCD8-99AE-4F97-B834-AA759B7782C9');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (58,21637,1051,15,N'yearSearchText',N'Year Search Text',3,0,NULL,NULL,0,'C5B90935-1ED8-4FE4-8A13-F06BDBEF0A8B');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (59,21637,1052,16,N'nameSearchText',N'Name Search Text',0,0,NULL,NULL,0,'D6EA6548-8CAB-4CA0-9F60-4309ED95513F');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (60,21638,1052,16,N'biographySearchText',N'Biography Search Text',1,0,NULL,NULL,0,'BD50FAD5-4CCF-411E-A531-287EA12253FC');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[variations],[UniqueID]) VALUES (61,-88,21640,17,N'title',N'Title',0,0,NULL,NULL,0,'A8748591-5754-484C-A94F-B543ABE8EE92');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF

