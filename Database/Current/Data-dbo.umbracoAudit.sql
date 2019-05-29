SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 95 rows to dbo.umbracoAudit

SET IDENTITY_INSERT [dbo].[umbracoAudit] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 19:20:14.947',121),-1,N'User "Administrator" ',N'umbraco/user/save',N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (2,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 19:20:15.000',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Email, Name, Username, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (3,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 19:20:15.340',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (4,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 19:21:28.263',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (5,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 19:21:28.340',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (6,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.3',CONVERT(datetime,'2019-02-16 19:21:30.877',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating TourData, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (7,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 20:41:43.450',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (8,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-16 20:41:43.530',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (9,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 01:22:03.870',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (10,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 01:22:03.960',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (11,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 02:08:37.450',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (12,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 02:08:37.507',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (13,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 02:32:49.980',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (14,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 02:32:50.043',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (15,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 03:33:40.983',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (16,0,N'User "SYSTEM" ',N'10.0.11.3',CONVERT(datetime,'2019-02-17 03:33:41.070',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (17,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 04:36:27.387',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (18,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 04:36:27.447',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (19,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 19:00:49.437',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating FailedPasswordAttempts, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (20,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 19:00:54.203',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating FailedPasswordAttempts, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (21,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 19:00:54.283',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (22,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 19:00:54.313',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (23,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 20:56:22.017',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (24,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-17 20:56:22.083',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (25,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-18 22:21:54.077',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (26,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-18 22:21:54.167',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (27,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-21 01:55:06.810',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (28,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-21 01:55:06.897',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (29,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-23 18:43:41.340',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (30,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-23 18:43:41.420',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (31,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-23 22:08:53.710',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (32,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-23 22:08:53.790',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (33,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-23 23:11:56.503',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (34,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-23 23:11:56.553',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (35,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:03:39.193',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating FailedPasswordAttempts, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (36,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:03:46.697',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating FailedPasswordAttempts, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (37,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:03:46.773',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (38,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:03:46.787',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (39,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:05:59.500',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (40,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:05:59.510',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (41,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:40:49.637',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (42,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:40:49.720',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (43,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:49:08.263',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (44,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 03:49:08.343',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (45,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-02-24 05:20:04.303',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (46,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 05:20:04.397',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (47,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 17:56:41.550',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (48,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-24 17:56:41.617',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (49,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-26 21:40:57.487',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (50,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-26 21:40:57.583',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (51,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-26 21:41:20.903',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (52,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-26 21:41:20.913',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (53,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-02-28 01:49:22.047',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (54,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-02-28 01:49:22.137',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (55,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-02-28 01:50:37.420',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (56,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-02-28 01:50:37.493',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (57,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-28 03:28:45.070',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (58,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-28 03:28:45.150',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (59,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-28 16:51:27.420',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (60,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-28 16:51:27.500',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (61,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-02-28 16:56:19.510',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (62,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-01 02:26:55.700',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (63,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-01 02:26:55.780',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (64,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 03:11:58.767',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (65,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 03:11:58.817',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (66,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 03:12:02.903',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (67,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 04:36:46.710',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (68,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 04:36:46.763',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (69,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 18:45:40.723',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (70,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-02 18:45:40.777',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (71,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-03 00:15:18.450',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (72,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-03 00:15:18.493',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (73,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-03 02:51:41.397',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (74,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-03 02:51:41.427',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (75,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-03 04:28:39.563',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (76,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-03 04:28:39.597',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (77,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-09 21:28:56.320',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (78,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-09 21:28:56.413',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (79,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-10 16:09:56.387',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (80,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-10 16:09:56.433',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (81,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-13 22:42:22.313',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (82,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-13 22:42:22.373',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (83,0,N'User "SYSTEM" ',N'73.248.93.61',CONVERT(datetime,'2019-03-14 01:50:32.940',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (84,0,N'User "SYSTEM" ',N'73.248.93.61',CONVERT(datetime,'2019-03-14 01:50:33.030',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (85,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-14 02:32:41.987',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (86,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-03-14 02:32:42.057',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (87,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-04-05 17:20:34.137',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (88,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-04-05 17:20:34.307',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1087,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:08:41.430',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1088,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:08:41.490',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1089,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:09:34.660',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1090,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:09:34.697',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1091,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:10:54.453',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1092,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:13:52.840',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1093,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 18:13:52.880',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF

