SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 1 row to dbo.umbracoUser

SET IDENTITY_INSERT [dbo].[umbracoUser] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoUser] ([id],[userDisabled],[userNoConsole],[userName],[userLogin],[userPassword],[passwordConfig],[userEmail],[userLanguage],[securityStampToken],[failedLoginAttempts],[lastLockoutDate],[lastPasswordChangeDate],[lastLoginDate],[emailConfirmedDate],[invitedDate],[createDate],[updateDate],[avatar],[tourData]) VALUES (-1,0,0,N'Michael Argentini',N'michael@argentini.us',N'PljhjkdpIYsTvsEv7TEHGg==1tBYNRUd+fLi0KPZXFN9ggZ+aymMKWg72JalH1nOd1U=',N'{"hashAlgorithm":"HMACSHA256"}',N'michael@argentini.us',N'en-US',N'9f0e11c1-d449-45c1-a1bb-a3128c0c023f',NULL,CONVERT(datetime,NULL,121),CONVERT(datetime,'2019-05-29 18:29:08.237',121),CONVERT(datetime,'2019-06-24 16:23:35.297',121),CONVERT(datetime,NULL,121),CONVERT(datetime,NULL,121),CONVERT(datetime,'2019-05-29 18:29:07.180',121),CONVERT(datetime,'2019-06-24 16:23:35.317',121),NULL,NULL);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoUser] OFF

