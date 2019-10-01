﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;ef17d2

-- SQRIBE/TABLE;ef17d2
-- Adding 232 rows to dbo.umbracoAudit

SET IDENTITY_INSERT [dbo].[umbracoAudit] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.290',121),-1,N'User "Administrator" ',N'umbraco/user/save',N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (2,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.330',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Email, Name, Username, UpdateDate, SecurityStamp');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (3,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:08.567',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (4,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:40.823',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (5,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-05-29 22:29:40.847',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (6,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-04 19:23:27.557',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (7,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-04 19:23:27.670',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (8,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-05 23:23:34.813',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (9,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-05 23:23:34.870',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (10,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 15:10:12.010',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (11,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 15:10:12.077',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (12,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 20:40:38.340',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (13,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-06 20:40:38.410',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (14,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 01:42:43.180',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (15,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 01:42:43.227',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (16,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 16:57:09.893',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (17,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-07 16:57:09.913',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (18,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-07 22:33:48.603',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (19,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-07 22:33:48.810',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1016,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-10 16:11:08.457',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1017,0,N'User "SYSTEM" ',N'::1',CONVERT(datetime,'2019-06-10 16:11:08.563',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1018,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-12 23:03:40.250',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1019,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-12 23:03:40.367',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1020,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-16 19:02:30.347',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1021,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-16 19:02:30.423',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1022,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 01:14:44.730',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1023,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 01:14:44.773',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1024,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 02:35:21.767',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1025,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-17 02:35:21.807',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1026,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-24 20:23:35.373',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1027,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-24 20:23:35.423',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1028,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-25 00:55:29.647',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1029,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-25 00:55:29.680',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1030,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-25 22:18:04.563',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1031,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-25 22:18:04.633',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1032,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-26 14:01:38.153',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1033,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-26 14:01:38.203',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1034,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 01:35:51.980',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1035,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 01:35:52.063',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1036,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 17:47:21.417',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1037,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-27 17:47:21.460',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1038,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 13:32:39.487',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1039,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 13:32:39.533',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1040,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:12:54.830',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating SessionTimeout, SecurityStamp, CreateDate, UpdateDate, Id');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1041,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:12:54.853',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1042,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:12:54.877',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, IsApproved, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1043,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:13:31.273',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1044,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:13:31.293',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1045,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:13:52.137',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating StartContentIds, Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1046,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:45.833',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating StartMediaIds, Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1047,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:50.177',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1048,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:58.483',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1049,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:14:58.493',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1050,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:00.053',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1051,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:16.997',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1052,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:17.007',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1053,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:16:51.503',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1054,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:17:07.610',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1055,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 14:17:07.620',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1056,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-06-28 20:47:31.703',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1057,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-28 20:47:31.737',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1058,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-29 21:08:56.040',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1059,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-06-29 21:08:56.073',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1060,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-01 14:51:43.050',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1061,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-01 14:51:43.093',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1062,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-03 21:06:46.493',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1063,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-03 21:06:46.573',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1064,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-04 14:45:13.903',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1065,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-04 14:45:13.977',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1066,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-05 14:40:34.610',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1067,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-05 14:40:34.653',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1068,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-05 22:49:59.953',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1069,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-05 22:50:00.007',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1070,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-06 19:10:56.837',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1071,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-06 19:10:56.890',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1072,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-07 22:36:14.953',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1073,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-07 22:36:15.017',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1074,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 05:21:54.207',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1075,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 05:21:54.240',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1076,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 05:24:39.830',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1077,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 05:24:39.830',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1078,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 14:39:27.953',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1079,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 14:39:27.997',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1080,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 18:17:58.023',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1081,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 18:17:58.037',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1082,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 18:45:50.270',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1083,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-08 18:45:50.277',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1084,0,N'User "SYSTEM" ',N'10.0.10.2',CONVERT(datetime,'2019-07-09 02:45:05.253',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1085,0,N'User "SYSTEM" ',N'10.0.10.2',CONVERT(datetime,'2019-07-09 02:45:05.330',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1086,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-09 13:54:20.483',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1087,0,N'User "SYSTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-09 13:54:20.560',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1088,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-09 15:52:09.430',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1089,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-09 15:52:09.467',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1090,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-09 23:48:34.470',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1091,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-09 23:48:34.563',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1092,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-10 02:26:29.773',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1093,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-10 02:26:29.880',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1094,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-10 21:15:31.103',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1095,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-10 21:15:31.180',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1096,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-11 15:18:18.247',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1097,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-11 15:18:18.357',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1098,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-11 15:34:06.303',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1099,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-11 15:34:06.317',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1100,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-11 23:35:40.777',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1101,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-11 23:35:40.863',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1102,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-12 21:05:27.123',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1103,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-12 21:05:27.203',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1104,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-15 15:12:26.730',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1105,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-15 15:12:26.810',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1106,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-16 14:38:39.927',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1107,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-16 14:38:40.003',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1108,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-17 19:05:10.613',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1109,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-17 19:05:10.690',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1110,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-18 19:11:25.663',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1111,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-18 19:11:25.710',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1112,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-07-18 21:20:30.940',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1113,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-18 21:20:30.957',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1114,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-19 13:55:18.937',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1115,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-19 13:55:19.020',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1116,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-21 14:28:34.097',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1117,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-21 14:28:34.170',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1118,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-22 18:23:49.013',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1119,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-22 18:23:49.150',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1120,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-22 20:04:54.880',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1121,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-22 20:04:54.890',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1122,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-23 15:19:25.810',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1123,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-23 15:19:25.993',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1124,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-23 15:29:27.440',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1125,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-23 15:29:27.537',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1126,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-23 16:03:54.977',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1127,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-23 16:04:22.927',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1128,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-23 16:04:22.937',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1129,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'10.0.11.2',CONVERT(datetime,'2019-07-23 16:05:23.690',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1130,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-23 16:06:01.493',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1131,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-23 16:06:01.503',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1132,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-24 16:11:34.333',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1133,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-24 16:11:34.407',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1134,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-24 18:32:50.583',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1135,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-24 18:32:50.673',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1136,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 18:34:06.417',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1137,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 18:34:06.430',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1138,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-24 19:50:53.987',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1139,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-24 19:50:54.017',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1140,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 20:17:50.217',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1141,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 20:18:05.033',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1142,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 20:18:05.050',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1143,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'::1',CONVERT(datetime,'2019-07-24 20:18:22.960',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1144,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 20:20:07.737',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1145,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-24 20:20:07.750',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1146,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:27:34.083',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, sensitiveData');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1147,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:28:11.223',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1148,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:28:45.890',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1149,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:37:54.300',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1150,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:38:13.787',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, sensitiveData');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1151,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:38:51.593',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, sensitiveData');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1152,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 21:57:51.263',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1153,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 22:05:00.277',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1154,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-07-24 22:05:25.327',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, sensitiveData');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1155,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-25 15:18:16.473',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1156,0,N'User "SYTEM" ',N'10.0.11.2',CONVERT(datetime,'2019-07-25 15:18:16.727',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1157,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 15:19:48.537',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1158,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 15:19:48.560',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1159,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 15:22:17.413',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1160,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 15:22:17.437',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1161,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 17:31:44.673',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1162,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 17:31:54.283',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1163,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 17:31:54.380',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1164,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'10.0.11.1',CONVERT(datetime,'2019-07-25 17:32:16.933',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1165,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 17:32:21.587',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1166,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-25 17:32:21.623',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1167,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-28 21:30:42.777',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1168,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-28 21:30:42.973',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1169,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-29 19:41:51.457',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1170,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-29 19:41:51.707',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1171,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-30 14:50:33.167',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1172,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-30 14:50:33.240',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1173,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-30 14:51:41.690',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1174,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-30 14:51:41.863',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1175,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-30 21:20:10.187',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1176,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-07-30 21:20:10.580',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1177,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-31 14:31:40.203',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1178,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-07-31 14:31:40.410',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1179,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-02 15:06:08.957',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1180,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-02 15:06:09.157',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1181,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:16:56.237',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1182,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:16:56.450',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1183,-1,N'User "Michael Argentini" <michael@argentini.us>',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:49:36.897',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1184,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:49:37.053',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1185,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:52:44.247',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1186,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:53:46.807',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1187,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-06 17:53:46.833',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1188,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-07 15:36:06.000',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1189,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-07 15:36:06.320',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1190,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-08 13:28:54.410',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1191,0,N'User "SYTEM" ',N'10.0.11.1',CONVERT(datetime,'2019-08-08 13:28:54.623',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1192,0,N'User "SYTEM" ',N'73.248.93.61',CONVERT(datetime,'2019-08-08 22:07:20.957',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1193,0,N'User "SYTEM" ',N'73.248.93.61',CONVERT(datetime,'2019-08-08 22:07:21.190',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1194,0,N'User "SYTEM" ',N'73.248.93.61',CONVERT(datetime,'2019-08-24 22:37:14.810',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1195,0,N'User "SYTEM" ',N'73.248.93.61',CONVERT(datetime,'2019-08-24 22:37:15.473',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1196,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 22:59:29.100',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1197,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 22:59:29.270',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1198,0,N'User "SYTEM" ',N'127.0.0.1',CONVERT(datetime,'2019-09-25 23:02:09.567',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1199,0,N'User "SYTEM" ',N'127.0.0.1',CONVERT(datetime,'2019-09-25 23:02:09.600',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1200,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-09-25 23:12:20.867',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, sensitiveData');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1201,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:16:29.097',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1202,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:16:45.533',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1203,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:16:51.437',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1204,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'::1',CONVERT(datetime,'2019-09-25 23:17:17.960',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1205,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:17:28.777',121),0,N'User UNKNOWN:0',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1206,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:17:32.113',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1207,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:17:36.043',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1208,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:18:42.413',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1209,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:19:14.593',121),0,N'User UNKNOWN:0',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1210,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:19:18.847',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1211,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:19:39.493',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1212,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'::1',CONVERT(datetime,'2019-09-25 23:20:16.327',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1213,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:20:32.257',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1214,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:20:43.500',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1215,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:23:07.613',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1216,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:23:19.373',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1217,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:23:19.387',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1218,1,N'User "Site 1 Test User" <magic@fynydd.com>',N'::1',CONVERT(datetime,'2019-09-25 23:27:06.123',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1219,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:27:14.550',121),0,N'User UNKNOWN:0',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1220,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:27:17.893',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1221,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-25 23:27:17.947',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1222,-1,N'User "Michael Argentini" <michael@argentini.us>',N'::1',CONVERT(datetime,'2019-09-25 23:27:40.623',121),1,N'User "Site 1 Test User" <magic@fynydd.com>',N'umbraco/user/save',N'updating StartContentIds, Key, Groups, UpdateDate; groups assigned: editor');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1223,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-26 03:36:00.547',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1224,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-09-26 03:36:00.660',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1225,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-10-01 01:33:22.627',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1226,0,N'User "SYTEM" ',N'::1',CONVERT(datetime,'2019-10-01 01:33:22.830',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1227,0,N'User "SYTEM" ',N'127.0.0.1',CONVERT(datetime,'2019-10-01 22:07:01.837',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;ef17d2
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1228,0,N'User "SYTEM" ',N'127.0.0.1',CONVERT(datetime,'2019-10-01 22:07:02.030',121),-1,N'User "Michael Argentini" <michael@argentini.us>',N'umbraco/user/sign-in/login',N'login success');

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF

