SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 4 rows to dbo.cmsContentNu

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentNu] ([nodeId],[published],[data],[rv]) VALUES (1056,0,N'{"properties":{"metaTitle":[{"culture":"","seg":"","val":"Bolide Homepage"}],"metaKeywords":[{"culture":"","seg":"","val":"carbide, bolide"}],"metaDescription":[{"culture":"","seg":"","val":"This is the Bolide home page."}],"shareImage":[{"culture":"","seg":"","val":"{\r\n  \"crops\": [\r\n    {\r\n      \"alias\": \"SocialSharing\",\r\n      \"width\": 1200,\r\n      \"height\": 800,\r\n      \"coordinates\": {\r\n        \"x1\": 0.0753283912082195,\r\n        \"y1\": 1.8947806286936001E-16,\r\n        \"x2\": 0.077227207699310976,\r\n        \"y2\": 0\r\n      }\r\n    }\r\n  ],\r\n  \"focalPoint\": {\r\n    \"left\": 0.5,\r\n    \"top\": 0.5\r\n  },\r\n  \"src\": \"/media/bgbjfdbt/argentini-street-sign.png\"\r\n}"}]},"cultureData":{},"urlSegment":"home"}',0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentNu] ([nodeId],[published],[data],[rv]) VALUES (1056,1,N'{"properties":{"metaTitle":[{"culture":"","seg":"","val":"Bolide Homepage"}],"metaKeywords":[{"culture":"","seg":"","val":"carbide, bolide"}],"metaDescription":[{"culture":"","seg":"","val":"This is the Bolide home page."}],"shareImage":[{"culture":"","seg":"","val":"{\r\n  \"crops\": [\r\n    {\r\n      \"alias\": \"SocialSharing\",\r\n      \"width\": 1200,\r\n      \"height\": 800,\r\n      \"coordinates\": {\r\n        \"x1\": 0.0753283912082195,\r\n        \"y1\": 1.8947806286936001E-16,\r\n        \"x2\": 0.077227207699310976,\r\n        \"y2\": 0\r\n      }\r\n    }\r\n  ],\r\n  \"focalPoint\": {\r\n    \"left\": 0.5,\r\n    \"top\": 0.5\r\n  },\r\n  \"src\": \"/media/bgbjfdbt/argentini-street-sign.png\"\r\n}"}]},"cultureData":{},"urlSegment":"home"}',0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentNu] ([nodeId],[published],[data],[rv]) VALUES (1057,0,N'{"properties":{},"cultureData":{},"urlSegment":"sample-images"}',0);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[cmsContentNu] ([nodeId],[published],[data],[rv]) VALUES (1058,0,N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/ozwf5in5/argentini-street-sign.png\",\"crops\":null}"}],"umbracoWidth":[{"culture":"","seg":"","val":2563}],"umbracoHeight":[{"culture":"","seg":"","val":1448}],"umbracoBytes":[{"culture":"","seg":"","val":"7098917"}],"umbracoExtension":[{"culture":"","seg":"","val":"png"}]},"cultureData":{},"urlSegment":"argentini-street-sign"}',0);

COMMIT TRANSACTION

