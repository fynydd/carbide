SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 1,419 rows to dbo.umbracoPropertyData

SET IDENTITY_INSERT [dbo].[umbracoPropertyData] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (28,4,6,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{"src":"/media/ozwf5in5/argentini-street-sign.png","crops":null}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (29,4,7,NULL,NULL,2563,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (30,4,8,NULL,NULL,1448,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (31,4,9,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'7098917',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (32,4,10,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'png',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (290,29,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","bolideSimpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","bolideSimpleHeroTitle":"Simple Hero Frame 1","bolideSimpleHeroExcerpt":"<p>This is a sample hero frame for the Bolide Simple Hero component.</p>","bolideSimpleHeroButtonText":"Learn more","bolideSimpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","bolideSimpleHeroButtonUrl":null,"bolideSimpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","bolideSimpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","bolideSimpleHeroTitle":"Simple Hero Frame 2","bolideSimpleHeroExcerpt":"<p>This is a sample hero frame for the Bolide Simple Hero component.</p>","bolideSimpleHeroButtonText":"Find out more","bolideSimpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","bolideSimpleHeroButtonUrl":null,"bolideSimpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","bolideSimpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","bolideSimpleHeroTitle":"Simple Hero Frame 3","bolideSimpleHeroExcerpt":"<p>This is a sample hero frame for the Bolide Simple Hero component.</p>","bolideSimpleHeroButtonText":"Check it out","bolideSimpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","bolideSimpleHeroButtonUrl":null,"bolideSimpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (292,29,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (294,29,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (296,29,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (298,29,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (310,30,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Item 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Item 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Find out why","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Item 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (312,30,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (314,30,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (316,30,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (318,30,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (389,33,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 1","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Find out why","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (391,33,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (393,33,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (395,33,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (397,33,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (399,46,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 1","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (401,46,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (403,46,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (405,46,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (407,46,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (409,48,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Item 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Site 2 Hero","simpleHeroExcerpt":"<p>This is the site 2 hero excerpt.</p>","simpleHeroButtonText":"Visit site 1","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (411,48,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (413,48,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (415,48,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (417,48,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (419,47,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (421,47,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (423,47,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (425,47,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (427,47,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (429,50,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":null,"simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (431,50,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (433,50,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (435,50,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (437,50,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (439,51,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (441,51,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (443,51,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (445,51,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (447,51,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (557,52,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (559,52,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (561,52,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (563,52,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (565,52,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (569,63,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (571,63,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (573,63,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (575,63,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (577,63,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (581,49,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Site 2 Hero","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Site 2 Hero","simpleHeroExcerpt":"<p>This is the site 2 hero excerpt.</p>","simpleHeroButtonText":"Visit site 1","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (583,49,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (585,49,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (587,49,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (589,49,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (593,65,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Site 2 Hero","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Site 2 Hero","simpleHeroExcerpt":"<p>This is the site 2 hero excerpt.</p>","simpleHeroButtonText":"Visit site 1","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (595,65,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (597,65,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (599,65,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (601,65,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (603,66,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Site 2 Hero","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Site 2 Hero","simpleHeroExcerpt":"<p>This is the site 2 hero excerpt.</p>","simpleHeroButtonText":"Visit site 1","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (605,66,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (607,66,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (609,66,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (611,66,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (613,64,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (615,64,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (617,64,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (619,64,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (621,64,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (639,68,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'--nodes-display: none;',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (641,68,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (643,68,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (645,68,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (647,68,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (649,68,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (651,71,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (653,71,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (655,71,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (657,71,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (659,71,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (761,72,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-background-color: red;
--button-foreground-color: yellow;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (763,72,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (765,72,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (767,72,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (769,72,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (771,72,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (773,90,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--button-background-color: red;
--button-foreground-color: yellow;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (775,90,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (777,90,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (779,90,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (781,90,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (783,90,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (785,91,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (787,91,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Simple Hero Frame 1","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","simpleHeroTitle":"Simple Hero Frame 1","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Go to Site 2","simpleHeroButtonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Simple Hero Frame 2","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","simpleHeroTitle":"Simple Hero Frame 2","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Learn more","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Simple Hero Frame 3","ncContentTypeAlias":"bolideSimpleHeroFrame","simpleHeroBackgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","simpleHeroTitle":"Simple Hero Frame 3","simpleHeroExcerpt":"<p>This is a sample excerpt for the simple hero component.</p>","simpleHeroButtonText":"Check it out","simpleHeroButtonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","simpleHeroButtonUrl":null,"simpleHeroEnabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (789,91,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (791,91,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (793,91,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (795,91,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (797,92,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (799,92,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Item 1","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Item 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Item 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (801,92,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (803,92,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (805,92,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (807,92,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (809,67,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Item 1","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 2 Frame Title","excerpt":"<p>This is site 2 excerpt.</p>","buttonText":"Visit Site 1","buttonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","buttonUrl":null,"enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (811,67,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (813,67,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (815,67,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (817,67,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (915,101,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (917,101,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (919,101,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (921,101,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (923,101,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (925,101,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (927,103,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (929,103,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (931,103,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (933,103,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (935,103,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (939,103,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (941,93,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (943,93,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (945,93,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (947,93,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (949,93,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (951,93,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (953,93,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (983,94,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Bolide Site 2 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 2 Frame Title","excerpt":"<p>This is site 2 excerpt.</p>","buttonText":"Visit Site 1","buttonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","buttonUrl":null,"enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (985,94,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (987,94,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (989,94,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (991,94,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (993,94,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (995,106,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Bolide Site 2 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 2 Frame Title","excerpt":"<p>This is site 2 excerpt.</p>","buttonText":"Visit Site 1","buttonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","buttonUrl":null,"enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (996,107,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"b01667c6-57ae-4264-a763-644fce0fb4cc","name":"Bolide Site 2 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 2 Frame Title","excerpt":"<p>This is site 2 excerpt.</p>","buttonText":"Visit Site 1","buttonLink":"umb://document/7a4e2b57a6cd4f7f92655069de668479","buttonUrl":null,"enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (997,106,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (998,107,49,NULL,NULL,5000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (999,106,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1000,107,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1001,106,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1002,107,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1003,106,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1004,107,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1005,106,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1006,107,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1007,104,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--headline-align: center;
--content-align: center;
--button-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1009,104,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1011,104,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1013,104,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1015,104,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1017,104,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1019,104,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1021,108,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--headline-align: center;
--content-align: center;
--button-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1023,108,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--unit-width: 75%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1025,108,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1027,108,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1029,108,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1031,108,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1033,108,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1035,108,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1037,109,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1039,109,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--unit-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1041,109,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1043,109,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1045,109,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1047,109,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1049,109,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1051,109,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1053,110,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1055,110,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1057,110,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1059,110,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1061,110,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1063,110,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1065,110,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1067,110,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1069,111,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1071,111,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1073,111,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1075,111,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1077,111,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1079,111,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1081,111,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1083,111,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1085,112,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1087,112,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1089,112,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1091,112,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1093,112,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1095,112,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1097,112,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1099,113,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1101,113,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1103,113,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1105,113,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1107,113,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1109,113,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1111,113,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1113,113,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1123,105,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1125,105,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 100%;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1127,105,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1129,105,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1131,105,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1133,105,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1135,105,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1137,105,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1139,115,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1141,115,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 50%;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1143,115,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1145,115,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1147,115,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1149,115,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1151,115,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1153,115,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1155,116,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1157,116,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/2;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1159,116,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1161,116,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1163,116,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1165,116,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1167,116,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1169,116,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1179,117,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1181,117,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/2;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1183,117,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1185,117,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1187,117,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1189,117,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1191,117,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1193,117,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1195,118,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1197,118,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/2;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1199,118,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1201,118,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1203,118,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1205,118,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1207,118,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1209,118,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1211,119,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1213,119,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 100%;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1215,119,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1217,119,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1219,119,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1221,119,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1223,119,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1225,119,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1227,120,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1229,120,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1231,120,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1233,120,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1235,120,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1237,120,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1239,120,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1241,120,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1243,121,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1245,121,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1247,121,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1249,121,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1251,121,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1253,121,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1255,121,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1257,121,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1259,122,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1261,122,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;
--button-background-color: red;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1263,122,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1265,122,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1267,122,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1269,122,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1271,122,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1273,122,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1275,123,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1277,123,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1279,123,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null,"enabled":1},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com","enabled":1},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com","enabled":1}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1281,123,49,NULL,NULL,7000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1283,123,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1285,123,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1287,123,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1289,123,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1291,114,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1293,114,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;
--button-background-color: red;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1295,114,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1297,114,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1299,114,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1301,114,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1303,114,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1305,114,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1307,125,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1309,125,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1311,125,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to Bolide Site 1!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1313,125,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1315,125,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1317,125,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1319,125,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1321,125,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1355,124,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1357,124,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1359,124,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt.</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com"},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1361,124,49,NULL,NULL,10000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1363,124,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1365,124,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1367,124,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1369,124,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1379,102,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1381,102,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1383,102,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1385,102,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1387,102,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1389,102,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1395,126,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1397,126,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1399,126,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{company-name}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1401,126,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1403,126,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1405,126,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1407,126,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1409,126,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1419,130,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1421,130,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1 YO',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1423,130,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1425,130,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1427,130,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1429,130,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1439,133,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1441,133,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1443,133,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1445,133,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1447,133,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1449,133,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1459,134,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1461,134,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'My Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1463,134,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1465,134,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1467,134,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1469,134,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1471,134,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1473,132,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1475,132,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1477,132,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{city}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1479,132,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1481,132,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1483,132,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1485,132,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1487,132,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1497,135,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1499,135,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'My Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1501,135,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1503,135,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1505,135,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1507,135,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1509,135,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1519,137,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1521,137,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1523,137,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1525,137,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1527,137,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1529,137,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1531,137,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1533,136,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1535,136,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1537,136,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1539,136,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1541,136,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1543,136,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1545,136,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1547,136,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1557,138,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1559,138,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1561,138,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1563,138,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1565,138,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1567,138,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1569,138,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1571,129,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1573,129,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1575,129,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt. Button text is {{buttonText}}</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com"},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1577,129,49,NULL,NULL,10000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1579,129,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1581,129,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1583,129,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1585,129,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1587,141,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1588,142,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--foreground-color: white;
--content-align: center;
--nodes-display: block;
--nodes-align: center;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1589,141,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1590,142,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 1/1;
--content-push: 0;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1591,141,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt. Button text is {{buttonText}} and frame duration is {{frameDuration}}</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com"},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1592,142,48,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"key":"9cd9ebfd-1c7e-4250-a875-0f599ba86b44","name":"Bolide Site 1 Frame Title","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/95149a2b88ed462aa21ca1812e7fbde1","title":"Bolide Site 1 Frame Title","excerpt":"<p>This is a sample excerpt. Button text is {{buttonText}} and frame duration is {{frameDuration}}</p>","buttonText":"Bolide Site 2","buttonLink":"umb://document/cdca7afe6c2443fdae456a6bdda0ace0","buttonUrl":null},{"key":"d2e05de0-d406-402d-befa-a8b216fdad14","name":"Bolide Site 1 Frame Title 2","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/eb86bff880c04f58b45b565cf5229a76","title":"Bolide Site 1 Frame Title 2","excerpt":"<p>This is another sample excerpt.</p>","buttonText":"Visit Apple","buttonLink":null,"buttonUrl":"http://apple.com"},{"key":"5a50836d-2af6-42fc-98b4-ac9d06008f62","name":"Bolide Site 1 Frame Title 3","ncContentTypeAlias":"bolideSimpleHeroFrame","enabled":1,"backgroundImage":"umb://media/3dd4230875924589a7042ee90b8a5a8e","title":"Bolide Site 1 Frame Title 3","excerpt":"<p>This is yet another frame excerpt.</p>","buttonText":"Visit Google","buttonLink":null,"buttonUrl":"http://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1593,141,49,NULL,NULL,10000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1594,142,49,NULL,NULL,10000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1595,141,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1596,142,50,NULL,NULL,1000,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1597,141,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1598,142,51,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1599,141,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1600,142,53,NULL,NULL,1500,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1601,141,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1602,142,173,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1603,139,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1605,139,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1607,139,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1609,139,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1611,139,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1613,139,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1615,139,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1617,139,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1619,139,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1621,143,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1623,143,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1625,143,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1627,143,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1629,143,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1631,143,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1633,143,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1635,143,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1637,143,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1639,144,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: center;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1641,144,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1643,144,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1645,144,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1647,144,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1649,144,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1651,144,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1653,144,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1655,144,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1657,145,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: left;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1659,145,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--content-width: 75%;
--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1661,145,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1663,145,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1665,145,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1667,145,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1669,145,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1671,145,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1673,145,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1675,146,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: left;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1677,146,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1679,146,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1681,146,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1683,146,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1685,146,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1687,146,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1689,146,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1691,146,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1693,147,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1695,147,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1697,147,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1699,147,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1701,147,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1703,147,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1705,147,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1707,147,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1709,147,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1711,148,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1713,148,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 10%;
--row-gutter: 0rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1715,148,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1717,148,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1719,148,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1721,148,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1723,148,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1725,148,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1727,148,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1729,149,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1731,149,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 0rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1733,149,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1735,149,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1737,149,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1739,149,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1741,149,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1743,149,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1745,149,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1747,150,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1749,150,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 3rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1751,150,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1753,150,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1755,150,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1757,150,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1759,150,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1761,150,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1763,150,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1765,151,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1767,151,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1769,151,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1771,151,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1773,151,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1775,151,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1777,151,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1779,151,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1781,151,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1783,152,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1785,152,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1787,152,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1789,152,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1791,152,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1793,152,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1795,152,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1797,152,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1799,152,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1801,153,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 4rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1803,153,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1805,153,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1807,153,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1809,153,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1811,153,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1813,153,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1815,153,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1817,153,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1819,154,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1821,154,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1823,154,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1825,154,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1827,154,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1829,154,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1831,154,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1833,154,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1835,154,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1837,155,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1839,155,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1841,155,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1843,155,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1845,155,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>
<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1847,155,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1849,155,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1851,155,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1853,155,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1855,156,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1857,156,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1859,156,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1861,156,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1863,156,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1865,156,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1867,156,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1869,156,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1871,156,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1873,157,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1875,157,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1877,157,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1879,157,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1881,157,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1883,157,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1885,157,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1887,157,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1889,157,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1891,158,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1892,159,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-light);
--headline-align: center;
--headline-margin: 2rem;
--content-align: left;
--button-align: center;
--button-width: 100%;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1893,158,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1894,159,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--button-width: auto;
--column-gutter: 5%;
--row-gutter: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1895,158,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1896,159,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Welcome to {{companyName}} in {{companyCity}}!',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1897,158,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1898,159,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1899,158,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1900,159,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit tellus mauris a diam maecenas sed. Tempor orci eu lobortis elementum nibh tellus molestie nunc. A scelerisque purus semper eget duis at tellus. Risus quis varius quam quisque id diam vel. Enim facilisis gravida neque convallis a. Massa enim nec dui nunc. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Pretium fusce id velit ut tortor. Tortor dignissim convallis aenean et tortor at risus.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1901,158,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1902,159,94,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Visit Bolide Site 2',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1903,158,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1904,159,95,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umb://document/cdca7afe6c2443fdae456a6bdda0ace0',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1905,158,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1906,159,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1907,158,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1908,159,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>Vitae et leo duis ut. At varius vel pharetra vel turpis. Massa enim nec dui nunc. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Suspendisse interdum consectetur libero id. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Posuere urna nec tincidunt praesent semper feugiat. Vel facilisis volutpat est velit egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Massa placerat duis ultricies lacus sed turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Scelerisque felis imperdiet proin fermentum leo vel orci porta non.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1909,140,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1911,140,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1913,140,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1917,140,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1919,140,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1921,140,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1923,140,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1925,140,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1927,140,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1929,160,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1931,160,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1933,160,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1937,160,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1939,160,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1941,160,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1943,160,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1945,160,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1947,160,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1949,160,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1951,160,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1953,161,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1955,161,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1957,161,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1959,161,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1961,161,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1963,161,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1965,161,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1967,161,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1969,161,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1971,161,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1973,161,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1975,161,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1977,161,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1979,161,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1981,162,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1983,162,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1985,162,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1987,162,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1989,162,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1991,162,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1993,162,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1995,162,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1997,162,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (1999,162,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2001,162,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2003,162,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2005,162,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2007,162,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2009,162,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2011,162,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628
    }
  ],
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg"
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2013,163,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2015,163,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2017,163,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2019,163,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2021,163,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2023,163,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2025,163,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2027,163,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2029,163,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2031,163,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2033,163,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2035,163,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2037,163,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2039,163,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2041,163,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2043,163,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0074074074074074077,
        "y1": 0.094444444444444442,
        "x2": 0.15925925925925927,
        "y2": 0.25138888888888888
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2045,164,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2047,164,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2049,164,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2051,164,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2053,164,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2055,164,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2057,164,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2059,164,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2061,164,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2063,164,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2065,164,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2067,164,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2069,164,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2071,164,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2073,164,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2075,164,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0074074074074074077,
        "y1": 0.094444444444444442,
        "x2": 0.15925925925925927,
        "y2": 0.25138888888888888
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2077,164,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["article"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2079,165,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2081,165,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2083,165,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2085,165,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2087,165,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2089,165,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2091,165,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2093,165,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2095,165,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2097,165,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2099,165,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2101,165,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2103,165,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2105,165,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2107,165,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2109,165,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0074074074074074077,
        "y1": 0.094444444444444442,
        "x2": 0.15925925925925927,
        "y2": 0.25138888888888888
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2111,165,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2113,166,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2115,166,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2117,166,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2119,166,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2121,166,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2123,166,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2125,166,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2127,166,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2129,166,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2131,166,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2133,166,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2135,166,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2137,166,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2139,166,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2141,166,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2143,166,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0074074074074074077,
        "y1": 0.094444444444444442,
        "x2": 0.15925925925925927,
        "y2": 0.25138888888888888
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2145,166,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'[null]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2147,167,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2149,167,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2151,167,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2153,167,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2155,167,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2157,167,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2159,167,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2161,167,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2163,167,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2165,167,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2167,167,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2169,167,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2171,167,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2173,167,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2175,167,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2177,167,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0074074074074074077,
        "y1": 0.094444444444444442,
        "x2": 0.15925925925925927,
        "y2": 0.25138888888888888
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2179,167,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2181,168,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2183,168,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2185,168,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2187,168,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2189,168,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2191,168,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2193,168,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2195,168,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2197,168,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2199,168,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2201,168,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2203,168,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2205,168,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2207,168,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2209,168,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2211,168,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2213,168,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2215,169,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2217,169,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2219,169,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2221,169,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2223,169,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2225,169,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2227,169,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2229,169,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2231,169,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2233,169,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2235,169,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2237,169,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2239,169,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2241,169,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2243,169,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco, cms, hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2245,169,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2247,169,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2249,169,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2251,170,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2253,170,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2255,170,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2257,170,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2259,170,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2261,170,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2263,170,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2265,170,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2267,170,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2269,170,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2271,170,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2273,170,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2275,170,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2277,170,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2279,170,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2281,170,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2283,170,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2285,170,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2287,171,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2289,171,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2291,171,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2293,171,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2295,171,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2297,171,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2299,171,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70
    }
  ],
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "src": "/media/52cjlrol/carbide-logo.jpg"
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2301,171,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2303,171,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2305,171,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2307,171,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2309,171,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2311,171,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2313,171,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2315,171,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2317,171,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2319,171,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2321,171,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2323,171,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2325,172,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2327,172,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2329,172,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2331,172,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2333,172,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2335,172,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2337,172,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2339,172,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2341,172,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2343,172,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2345,172,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2347,172,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2349,172,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2351,172,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2353,172,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2355,172,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2357,172,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2359,172,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2361,173,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2363,173,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2365,173,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2367,173,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2369,173,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2371,173,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2373,173,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70
    }
  ],
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "src": "/media/21hf1wkh/carbide-logo.png"
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2375,173,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2377,173,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2379,173,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2381,173,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2383,173,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2385,173,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2387,173,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2389,173,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2391,173,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2393,173,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2395,173,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2397,173,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2399,175,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2400,176,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2401,175,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2402,176,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2403,175,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'About Us',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2404,176,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'About Us',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2405,175,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide - About Us',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2406,176,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide - About Us',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2407,175,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'about,info',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2408,176,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'about,info',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2409,175,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample about us page',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2410,176,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample about us page',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2411,175,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628
    }
  ],
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "src": "/media/ttxlfd1l/40628437283_84088aca75_o.jpg"
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2412,176,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628
    }
  ],
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "src": "/media/ttxlfd1l/40628437283_84088aca75_o.jpg"
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2413,175,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2414,176,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2415,177,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'About Us',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2417,177,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2419,177,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>This is the about us page.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2421,177,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2423,177,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2425,174,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2427,174,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2429,174,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2431,174,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2433,174,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2435,174,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2437,174,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2439,174,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2441,174,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2443,174,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2445,174,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2447,174,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2449,174,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2451,174,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2453,174,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2455,174,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2457,174,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2459,174,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2461,174,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2463,174,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://document/4a503716b3564760a93d26bff89059be');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2465,174,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://document/4a503716b3564760a93d26bff89059be');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2471,7,6,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{"src":"/media/s3mlewii/03756_mountcooksunset_5120x2880.jpg","crops":[{"alias":"SocialSharing","width":1200,"height":800}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2472,7,7,NULL,NULL,5120,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2473,7,8,NULL,NULL,2880,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2474,7,9,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'2808070',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2475,7,10,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'jpg',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2476,9,6,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{"src":"/media/1eycjz0v/03560_thetopangagradient_5120x2880.jpg","crops":[{"alias":"SocialSharing","width":1200,"height":800}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2477,9,7,NULL,NULL,5120,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2478,9,8,NULL,NULL,2880,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2479,9,9,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'3970980',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2480,9,10,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'jpg',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2481,11,6,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{"src":"/media/qwqf44ny/03588_morrainelake_5120x2880.jpg","crops":[{"alias":"SocialSharing","width":1200,"height":800}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2482,11,7,NULL,NULL,5120,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2483,11,8,NULL,NULL,2880,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2484,11,9,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'5101960',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2485,11,10,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'jpg',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2486,178,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'About {{companyName}}',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2487,182,91,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'About {{companyName}}',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2488,178,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2489,182,92,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'h1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2490,178,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>This is the about us page.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2491,182,93,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'<p>This is the about us page.</p>');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2492,178,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2493,182,99,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2494,178,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2495,182,176,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2496,179,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2498,179,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2500,179,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2502,179,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2504,179,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2506,179,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2508,179,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2510,179,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2512,179,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2514,179,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2516,179,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2518,179,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2520,179,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2522,179,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2524,179,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2526,179,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2528,179,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2530,179,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2532,179,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2534,179,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2536,179,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2542,184,6,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{"src":"/media/hn5dgxp3/fynydd-logo-white-wide.png","crops":[{"alias":"SocialSharing","width":1200,"height":628}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2543,184,7,NULL,NULL,434,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2544,184,8,NULL,NULL,124,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2545,184,9,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'9074',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2546,184,10,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'png',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2547,183,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2549,183,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2551,183,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2553,183,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2555,183,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2557,183,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2559,183,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.5,
    "top": 0.5
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2561,183,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2563,183,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2565,183,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2567,183,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2569,183,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2571,183,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2573,183,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2575,183,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2577,183,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2579,183,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2581,183,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2583,183,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2585,183,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2587,183,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2589,183,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2591,185,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2593,185,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2595,185,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2597,185,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2599,185,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2601,185,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2603,185,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2605,185,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2607,185,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2609,185,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2611,185,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2613,185,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2615,185,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2617,185,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2619,185,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2621,185,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2623,185,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2625,185,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2627,185,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2629,185,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2631,185,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2633,185,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2635,186,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 20rem;
--primary-navigation-logo-max-height: 6rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2637,186,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2639,186,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2641,186,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2643,186,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2645,186,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2647,186,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2649,186,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2651,186,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2653,186,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2655,186,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2657,186,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2659,186,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2661,186,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2663,186,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2665,186,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2667,186,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2669,186,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2671,186,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2673,186,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2675,186,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2677,186,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2679,187,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2681,187,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2683,187,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2685,187,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2687,187,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2689,187,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2691,187,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2693,187,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2695,187,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2697,187,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2699,187,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2701,187,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2703,187,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2705,187,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2707,187,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2709,187,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2711,187,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2713,187,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2715,187,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2717,187,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2719,187,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2721,187,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2745,188,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--elastic-vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2747,188,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2749,188,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2751,188,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2753,188,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2755,188,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2757,188,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2759,188,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2761,188,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2763,188,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
GO -- SQRIBE/GO;0caaa3
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2765,188,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2767,188,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2769,188,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2771,188,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2773,188,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2775,188,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2777,188,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2779,188,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2781,188,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2783,188,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2785,188,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2787,188,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2789,189,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--elastic-vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2791,189,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--elastic-vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2793,189,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2795,189,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2797,189,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2799,189,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2801,189,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2803,189,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2805,189,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2807,189,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2809,189,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2811,189,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2813,189,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2815,189,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2817,189,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2819,189,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2821,189,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2823,189,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2825,189,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2827,189,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2829,189,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2831,189,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2833,189,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2835,190,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--elastic-vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2837,190,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--elastic-vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2839,190,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2841,190,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2843,190,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2845,190,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2847,190,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2849,190,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2851,190,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2853,190,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2855,190,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2857,190,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2859,190,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2861,190,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2863,190,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2865,190,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2867,190,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2869,190,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2871,190,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2873,190,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2875,190,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2877,190,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2879,190,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2881,191,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--elastic-vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2883,191,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2885,191,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2887,191,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2889,191,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2891,191,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2893,191,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2895,191,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2897,191,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2899,191,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2901,191,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2903,191,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2905,191,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2907,191,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2909,191,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2911,191,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2913,191,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2915,191,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2917,191,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2919,191,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2921,191,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2923,191,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2925,192,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2927,192,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2929,192,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2931,192,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2933,192,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2935,192,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2937,192,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2939,192,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2941,192,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2943,192,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2945,192,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2947,192,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2949,192,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2951,192,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2953,192,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2955,192,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2957,192,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2959,192,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2961,192,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2963,192,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2965,192,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2967,192,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2969,193,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2971,193,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2973,193,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2975,193,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2977,193,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2979,193,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2981,193,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2983,193,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2985,193,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2987,193,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2989,193,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2991,193,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2993,193,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2995,193,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2997,193,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (2999,193,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3001,193,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3003,193,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3005,193,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3007,193,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3009,193,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3011,193,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3013,193,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3015,194,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3017,194,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3019,194,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3021,194,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3023,194,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3025,194,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3027,194,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3029,194,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3031,194,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3033,194,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3035,194,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3037,194,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3039,194,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3041,194,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3043,194,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3045,194,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3047,194,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3049,194,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3051,194,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3053,194,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3055,194,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3057,194,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3059,195,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3061,195,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--vertical-unit-padding: 2rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3063,195,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3065,195,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3067,195,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3069,195,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3071,195,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3073,195,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3075,195,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3077,195,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3079,195,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3081,195,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3083,195,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3085,195,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3087,195,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3089,195,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3091,195,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3093,195,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3095,195,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3097,195,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3099,195,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3101,195,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3103,195,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3105,196,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3107,196,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3109,196,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3111,196,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3113,196,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3115,196,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3117,196,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3119,196,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3121,196,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3123,196,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3125,196,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3127,196,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3129,196,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3131,196,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3133,196,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3135,196,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3137,196,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3139,196,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3141,196,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3143,196,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3145,196,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3147,196,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3149,197,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3151,197,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3153,197,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3155,197,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3157,197,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3159,197,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3161,197,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3163,197,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3165,197,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3167,197,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3169,197,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3171,197,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3173,197,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3175,197,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3177,197,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3179,197,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3181,197,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3183,197,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3185,197,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3187,197,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3189,197,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3191,197,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3193,198,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3195,198,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3197,198,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3199,198,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3201,198,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3203,198,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3205,198,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3207,198,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3209,198,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3211,198,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3213,198,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3215,198,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3217,198,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3219,198,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3221,198,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3223,198,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3225,198,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3227,198,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3229,198,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3231,198,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3233,198,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3235,198,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3237,199,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3239,199,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3241,199,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3243,199,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3245,199,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3247,199,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3249,199,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3251,199,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3253,199,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3255,199,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3257,199,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3259,199,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3261,199,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3263,199,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3265,199,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3267,199,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3269,199,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3271,199,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3273,199,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3275,199,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3277,199,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3279,199,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3281,200,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3283,200,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 10rem;
--primary-navigation-logo-max-height: 3rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3285,200,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3287,200,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3289,200,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3291,200,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3293,200,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3295,200,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3297,200,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3299,200,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3301,200,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3303,200,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3305,200,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3307,200,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3309,200,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3311,200,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3313,200,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3315,200,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3317,200,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3319,200,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3321,200,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3323,200,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3325,200,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3327,201,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--primary-navigation-logo-max-height: 3rem;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3329,201,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 15rem;
--primary-navigation-logo-max-height: 3rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3331,201,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3333,201,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3335,201,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3337,201,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3339,201,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3341,201,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3343,201,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3345,201,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3347,201,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3349,201,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3351,201,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3353,201,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3355,201,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3357,201,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3359,201,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3361,201,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3363,201,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3365,201,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3367,201,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3369,201,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3371,201,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3373,202,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3375,202,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 15rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3377,202,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3379,202,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3381,202,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3383,202,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3385,202,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3387,202,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3389,202,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3391,202,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3393,202,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3395,202,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3397,202,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3399,202,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3401,202,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3403,202,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3405,202,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3407,202,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3409,202,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3411,202,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3413,202,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3415,202,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3417,202,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3419,203,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3421,203,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 10rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3423,203,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3425,203,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3427,203,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3429,203,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3431,203,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3433,203,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3435,203,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3437,203,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3439,203,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3441,203,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3443,203,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3445,203,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3447,203,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3449,203,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3451,203,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3453,203,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3455,203,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3457,203,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3459,203,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3461,203,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3463,203,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3465,204,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--primary-navigation-current-opacity: 0.2;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3467,204,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 10rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3469,204,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3471,204,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3473,204,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3475,204,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3477,204,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3479,204,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3481,204,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3483,204,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3485,204,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3487,204,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3489,204,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3491,204,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3493,204,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3495,204,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3497,204,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3499,204,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3501,204,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3503,204,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3505,204,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3507,204,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3509,204,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3511,205,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--primary-navigation-current-opacity: 0.5;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3512,206,55,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--background-color: var(--sf-color-white);
--foreground-color: var(--sf-color-white-contrast);
--primary-navigation-background-color: #1b264f;
--primary-navigation-foreground-color: #ffffff;
--primary-navigation-logo-max-width: 50%;
--primary-navigation-current-opacity: 0.5;
--vertical-unit-padding: 1.25rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3513,205,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 10rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3514,206,57,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'--primary-navigation-logo-max-width: 10rem;');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3515,205,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3516,206,101,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3517,205,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3518,206,104,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'King of Prussia',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3519,205,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3520,206,190,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3521,205,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3522,206,191,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3523,205,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3524,206,192,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'fynydd',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3525,205,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3526,206,196,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/21hf1wkh/carbide-logo.png",
  "focalPoint": {
    "left": 0.49973510282143674,
    "top": 0.49973510282143674
  },
  "crops": [
    {
      "alias": "WebsiteAvatar",
      "width": 512,
      "height": 512,
      "coordinates": null
    },
    {
      "alias": "Icon180",
      "width": 180,
      "height": 180,
      "coordinates": null
    },
    {
      "alias": "Icon32",
      "width": 32,
      "height": 32,
      "coordinates": null
    },
    {
      "alias": "Icon16",
      "width": 16,
      "height": 16,
      "coordinates": null
    },
    {
      "alias": "Icon48",
      "width": 48,
      "height": 48,
      "coordinates": null
    },
    {
      "alias": "Icon64",
      "width": 64,
      "height": 64,
      "coordinates": null
    },
    {
      "alias": "Icon192",
      "width": 192,
      "height": 192,
      "coordinates": null
    },
    {
      "alias": "Icon144",
      "width": 144,
      "height": 144,
      "coordinates": null
    },
    {
      "alias": "Icon150",
      "width": 150,
      "height": 150,
      "coordinates": null
    },
    {
      "alias": "Icon70",
      "width": 70,
      "height": 70,
      "coordinates": null
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3527,205,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3528,206,205,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'umb://media/fc51125f8e3e47229e21106117bc794a');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3529,205,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3530,206,151,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'@import url(''https://fonts.googleapis.com/css?family=Merriweather&display=swap'');');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3531,205,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3532,206,152,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Calibri, Arial, sans-serif',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3533,205,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3534,206,153,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'"Source Code Pro", -apple-system-mono, Menlo, Consolas, Monaco, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Courier, "Courier New", monospace',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3535,205,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3536,206,154,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Merriweather, var(--font-body)',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3537,205,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3538,206,177,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3539,205,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3540,206,178,NULL,NULL,1,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3541,205,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3542,206,179,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Home',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3543,205,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3544,206,181,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'Bolide Site 1',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3545,205,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3546,206,182,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'umbraco,cms,hosting',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3547,205,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3548,206,183,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'This is a sample Bolide website.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3549,205,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3550,206,193,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'{
  "src": "/media/1t4loytc/40628438523_c597eabff1_o.jpg",
  "focalPoint": {
    "left": 0.40833333333333333,
    "top": 0.4625
  },
  "crops": [
    {
      "alias": "SocialSharing",
      "width": 1200,
      "height": 628,
      "coordinates": {
        "x1": 0.0073333333333333349,
        "y1": 0.093999999999999986,
        "x2": 0.15933333333333338,
        "y2": 0.25183333333333341
      }
    }
  ]
}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3551,205,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3552,206,195,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),N'["website"]',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3553,205,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3554,206,197,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"},{"name":"Visit google","target":"_blank","url":"https://google.com"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3555,205,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoPropertyData] ([id],[versionId],[propertyTypeId],[languageId],[segment],[intValue],[decimalValue],[dateValue],[varcharValue],[textValue]) VALUES (3556,206,198,NULL,NULL,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[{"name":"Bolide Site 1","udi":"umb://document/7a4e2b57a6cd4f7f92655069de668479"},{"name":"About Us","udi":"umb://document/4a503716b3564760a93d26bff89059be"}]');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoPropertyData] OFF

