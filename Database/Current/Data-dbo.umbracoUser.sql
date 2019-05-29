SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 1 row to dbo.umbracoUser

SET IDENTITY_INSERT [dbo].[umbracoUser] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoUser] ([id],[userDisabled],[userNoConsole],[userName],[userLogin],[userPassword],[passwordConfig],[userEmail],[userLanguage],[securityStampToken],[failedLoginAttempts],[lastLockoutDate],[lastPasswordChangeDate],[lastLoginDate],[emailConfirmedDate],[invitedDate],[createDate],[updateDate],[avatar],[tourData]) VALUES (-1,0,0,N'Michael Argentini',N'michael@argentini.us',N'FaYJdjHSAfNbRnbiEPXHOg==W9mjPeTvgOUVo9y3VMAHRMrAAK3/7CKyCr/lfifbvCE=',N'{"hashAlgorithm":"HMACSHA256"}',N'michael@argentini.us',N'en-US',N'a2764c6f-e7e9-44aa-a536-b387a32b119c',0,CONVERT(datetime,NULL,121),CONVERT(datetime,'2019-02-16 14:20:14.883',121),CONVERT(datetime,'2019-05-29 14:13:52.763',121),CONVERT(datetime,NULL,121),CONVERT(datetime,NULL,121),CONVERT(datetime,'2019-02-16 14:20:13.243',121),CONVERT(datetime,'2019-05-29 14:13:52.790',121),NULL,N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true}]');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoUser] OFF

