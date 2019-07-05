SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 71 rows to dbo.umbracoAudit

SET IDENTITY_INSERT [dbo].[umbracoAudit] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.290',121),-1,N'User "Administrator" ',N'umbraco/user/save',N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (2,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.330',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Email, Name, Username, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (3,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.567',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (4,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:40.823',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (5,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:40.847',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (6,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-04 19:23:27.557',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (7,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-04 19:23:27.670',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (8,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-05 23:23:34.813',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (9,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-05 23:23:34.870',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (10,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 15:10:12.010',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (11,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 15:10:12.077',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (12,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 20:40:38.340',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (13,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 20:40:38.410',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (14,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 01:42:43.180',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (15,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 01:42:43.227',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (16,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 16:57:09.893',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (17,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 16:57:09.913',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (18,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-07 22:33:48.603',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (19,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-07 22:33:48.810',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1016,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-10 16:11:08.457',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1017,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-10 16:11:08.563',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1018,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-12 23:03:40.250',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1019,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-12 23:03:40.367',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1020,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-16 19:02:30.347',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1021,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-16 19:02:30.423',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1022,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 01:14:44.730',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1023,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 01:14:44.773',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1024,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 02:35:21.767',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1025,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 02:35:21.807',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1026,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-24 20:23:35.373',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1027,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-24 20:23:35.423',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1028,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-25 00:55:29.647',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1029,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-25 00:55:29.680',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1030,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-25 22:18:04.563',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1031,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-25 22:18:04.633',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1032,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-26 14:01:38.153',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1033,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-26 14:01:38.203',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1034,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 01:35:51.980',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1035,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 01:35:52.063',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1036,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 17:47:21.417',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1037,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 17:47:21.460',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1038,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 13:32:39.487',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1039,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 13:32:39.533',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1040,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:12:54.830',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating SessionTimeout, SecurityStamp, CreateDate, UpdateDate, Id');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1041,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:12:54.853',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1042,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:12:54.877',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, IsApproved, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1043,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:13:31.273',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1044,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:13:31.293',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1045,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:13:52.137',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating StartContentIds, Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1046,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:45.833',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating StartMediaIds, Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1047,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:50.177',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1048,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:58.483',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1049,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:58.493',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1050,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:00.053',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1051,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:16.997',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1052,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:17.007',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1053,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:51.503',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1054,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:17:07.610',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1055,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:17:07.620',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1056,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 20:47:31.703',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1057,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 20:47:31.737',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1058,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-29 21:08:56.040',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1059,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-29 21:08:56.073',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1060,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-01 14:51:43.050',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1061,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-01 14:51:43.093',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1062,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-03 21:06:46.493',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1063,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-03 21:06:46.573',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1064,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-04 14:45:13.903',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1065,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-04 14:45:13.977',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1066,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-05 14:40:34.610',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1067,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-05 14:40:34.653',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF

