SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 13 rows to dbo.umbracoAudit

SET IDENTITY_INSERT [dbo].[umbracoAudit] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.290',121),-1,N'User "Administrator" ',N'umbraco/user/save',N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (2,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.330',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Email, Name, Username, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (3,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.567',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (4,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:40.823',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (5,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:40.847',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (6,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-04 19:23:27.557',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (7,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-04 19:23:27.670',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (8,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-05 23:23:34.813',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (9,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-05 23:23:34.870',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (10,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 15:10:12.010',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (11,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 15:10:12.077',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (12,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 20:40:38.340',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (13,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 20:40:38.410',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF

