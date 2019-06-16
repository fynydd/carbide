SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 220 rows to dbo.umbracoLog

SET IDENTITY_INSERT [dbo].[umbracoLog] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (1,-1,1051,N'Template',CONVERT(datetime,'2019-06-04 15:24:45.053',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (2,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 15:24:45.197',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (3,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:25:46.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (4,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:25:49.210',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (5,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:26:09.357',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (6,-1,1051,N'Template',CONVERT(datetime,'2019-06-04 15:26:41.030',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (7,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:26:53.290',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (8,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:27:25.703',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (9,-1,-88,N'DataType',CONVERT(datetime,'2019-06-04 15:50:58.787',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (10,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 15:51:32.030',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (11,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 15:51:45.337',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (12,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 15:53:07.420',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (13,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 16:07:11.530',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (14,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 16:07:27.303',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (15,-1,1057,N'Media',CONVERT(datetime,'2019-06-04 16:08:48.500',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (16,-1,1058,N'Media',CONVERT(datetime,'2019-06-04 16:12:06.177',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (17,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 16:12:10.943',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (18,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 16:14:26.053',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (19,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 16:14:46.790',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (20,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 16:16:31.233',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (21,-1,1043,N'DataType',CONVERT(datetime,'2019-06-04 16:17:30.287',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (22,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 16:17:36.927',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (23,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 16:18:03.067',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (24,-1,1058,N'Media',CONVERT(datetime,'2019-06-04 16:18:20.633',121),N'Move',N'Move Media to recycle bin',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (25,-1,1058,N'Media',CONVERT(datetime,'2019-06-04 16:18:20.703',121),N'Delete',N'Trashed media with Id: 1058 related to original parent media item with Id: 1057',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (26,-1,1061,N'DataType',CONVERT(datetime,'2019-06-04 19:36:04.587',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (27,-1,1062,N'DataType',CONVERT(datetime,'2019-06-04 19:38:21.023',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (28,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:38:29.667',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (29,-1,1064,N'DataType',CONVERT(datetime,'2019-06-04 19:41:30.843',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (30,-1,1065,N'DataType',CONVERT(datetime,'2019-06-04 19:42:06.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (31,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:42:35.643',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (32,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:42:54.113',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (33,-1,1066,N'DataType',CONVERT(datetime,'2019-06-04 19:47:41.143',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (34,-1,1067,N'DataType',CONVERT(datetime,'2019-06-04 19:48:46.160',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (35,-1,1068,N'DataType',CONVERT(datetime,'2019-06-04 19:50:26.977',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (36,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-04 19:52:37.593',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (37,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:52:58.963',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (38,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 19:53:30.673',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (39,-1,1070,N'DataType',CONVERT(datetime,'2019-06-04 19:54:20.917',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (40,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:54:28.993',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (41,-1,1061,N'DataType',CONVERT(datetime,'2019-06-04 19:54:44.043',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (42,-1,1071,N'Media',CONVERT(datetime,'2019-06-04 19:55:26.927',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (43,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 19:56:34.747',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (44,-1,1072,N'Media',CONVERT(datetime,'2019-06-04 19:57:13.073',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (45,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 19:57:37.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (46,-1,1073,N'Media',CONVERT(datetime,'2019-06-04 19:57:54.063',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (47,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 19:58:21.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (48,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 20:05:08.667',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (49,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 11:10:53.413',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (50,-1,-49,N'DataType',CONVERT(datetime,'2019-06-06 12:06:40.920',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (51,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-06 12:07:30.757',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (52,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 12:07:49.117',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (53,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 12:09:32.987',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (54,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 12:16:46.067',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (55,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-06 16:41:31.273',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (56,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:42:01.700',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (57,-1,1067,N'DataType',CONVERT(datetime,'2019-06-06 16:43:26.087',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (58,-1,1066,N'DataType',CONVERT(datetime,'2019-06-06 16:43:36.270',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (59,-1,1068,N'DataType',CONVERT(datetime,'2019-06-06 16:43:44.180',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (60,-1,1070,N'DataType',CONVERT(datetime,'2019-06-06 16:43:51.943',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (61,-1,1064,N'DataType',CONVERT(datetime,'2019-06-06 16:43:58.357',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (62,-1,1062,N'DataType',CONVERT(datetime,'2019-06-06 16:44:04.990',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (63,-1,1065,N'DataType',CONVERT(datetime,'2019-06-06 16:44:11.187',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (64,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:44:37.237',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (65,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-06 16:44:49.670',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (66,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:45:14.130',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (67,-1,1066,N'DataType',CONVERT(datetime,'2019-06-06 16:45:49.230',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (68,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:45:51.573',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (69,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:46:59.197',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (70,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:47:50.200',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (71,-1,1066,N'DataType',CONVERT(datetime,'2019-06-06 16:48:13.693',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (72,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:48:20.113',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (73,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:48:56.470',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (74,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:49:04.547',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (75,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 20:34:15.390',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (76,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 20:36:57.300',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (77,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 20:37:10.110',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (78,-1,1074,N'DataType',CONVERT(datetime,'2019-06-12 19:05:11.653',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (79,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:05:18.977',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (80,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:05:49.730',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (81,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-12 19:11:24.350',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (82,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-12 19:11:43.243',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (83,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:13:50.607',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (84,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:23:54.470',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (85,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:24:18.133',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (86,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-12 19:31:55.907',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (87,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-12 19:32:19.283',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (88,-1,1078,N'Document',CONVERT(datetime,'2019-06-12 19:32:34.287',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (89,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:33:40.007',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (90,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-12 19:33:51.797',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (91,-1,1080,N'Document',CONVERT(datetime,'2019-06-12 19:34:06.770',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (92,-1,-95,N'DataType',CONVERT(datetime,'2019-06-12 19:34:57.890',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (93,-1,-95,N'DataType',CONVERT(datetime,'2019-06-12 19:35:14.813',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (94,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:35:19.857',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (95,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:35:43.950',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (96,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-12 19:36:28.933',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (97,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-12 19:36:43.567',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (98,-1,-1,N'Package',CONVERT(datetime,'2019-06-12 19:37:39.347',121),N'PackagerInstall',N'Package files installed for package ''u8Collapse''.',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (99,-1,-1,N'DocumentType',CONVERT(datetime,'2019-06-12 19:37:51.423',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (100,-1,-1,N'Package',CONVERT(datetime,'2019-06-12 19:37:51.483',121),N'PackagerInstall',N'Package data installed for package ''u8Collapse''.',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (101,-1,1081,N'Document',CONVERT(datetime,'2019-06-12 19:40:20.837',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (102,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:41:21.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (103,-1,-95,N'DataType',CONVERT(datetime,'2019-06-12 19:41:55.317',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (104,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:42:00.583',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (105,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:45:05.577',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (106,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:49:13.750',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (107,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:49:27.060',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (108,-1,1082,N'DataType',CONVERT(datetime,'2019-06-12 19:51:57.380',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (109,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:52:30.567',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (110,-1,1078,N'Document',CONVERT(datetime,'2019-06-12 19:52:42.757',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (111,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:53:00.723',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (112,-1,1056,N'Document',CONVERT(datetime,'2019-06-12 19:53:24.420',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (113,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:54:00.873',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (114,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:54:20.870',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (115,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:54:56.480',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (116,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-12 20:18:26.053',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (117,-1,1081,N'Document',CONVERT(datetime,'2019-06-12 20:20:16.593',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (118,-1,1066,N'DataType',CONVERT(datetime,'2019-06-12 20:20:36.477',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (119,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 20:20:45.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (120,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:05:49.260',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (121,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 15:06:35.630',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (122,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:06:45.227',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (123,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:07:24.813',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (124,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:08:44.360',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (125,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:08:58.310',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (126,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:09:20.940',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (127,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 15:09:43.910',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (128,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:09:49.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (129,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:11:16.080',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (130,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:11:42.507',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (131,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 15:12:04.347',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (132,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:12:10.213',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (133,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:14:26.490',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (134,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:16:02.107',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (135,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:23:40.730',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (136,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:25:30.123',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (137,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:29:58.333',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (138,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:30:11.577',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (139,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:40:51.440',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (140,-1,1078,N'Document',CONVERT(datetime,'2019-06-16 15:41:06.183',121),N'Move',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (141,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:43:04.407',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (142,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:43:10.543',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (143,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:43:28.310',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (144,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:44:41.443',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (145,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:44:47.510',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (146,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:45:34.640',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (147,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:45:40.533',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (148,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:46:40.110',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (149,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:46:46.740',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (150,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:47:14.150',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (151,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:47:19.947',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (152,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:48:01.347',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (153,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:48:06.323',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (154,-1,1085,N'Document',CONVERT(datetime,'2019-06-16 16:02:22.890',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (155,-1,1086,N'Document',CONVERT(datetime,'2019-06-16 16:02:32.787',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (156,-1,1087,N'Document',CONVERT(datetime,'2019-06-16 16:02:41.417',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (157,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 17:12:36.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (158,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:25:25.300',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (159,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:25:38.127',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (160,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 17:28:55.433',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (161,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:29:17.513',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (162,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:29:27.720',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (163,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:29:32.390',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (164,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 17:29:35.527',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (165,-1,1085,N'Document',CONVERT(datetime,'2019-06-16 17:33:17.637',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (166,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 17:34:24.010',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (167,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 17:34:49.043',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (168,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 17:36:45.737',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (169,-1,1090,N'DataType',CONVERT(datetime,'2019-06-16 17:51:36.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (170,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 17:52:46.303',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (171,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 17:53:13.090',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (172,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:01:46.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (173,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:01:50.810',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (174,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:17:16.263',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (175,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:17:19.510',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (176,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:21:25.723',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (177,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:21:42.393',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (178,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:21:54.577',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (179,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:28:55.197',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (180,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:28:58.480',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (181,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:43:53.077',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (182,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:43:58.757',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (183,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 18:44:20.920',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (184,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 18:44:24.907',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (185,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 18:44:32.293',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (186,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:45:59.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (187,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:46:19.043',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (188,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 18:46:38.203',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (189,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:46:59.320',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (190,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:47:01.483',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (191,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 18:47:09.367',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (192,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:49:46.527',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (193,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:49:50.353',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (194,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 18:50:17.293',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (195,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:50:32.847',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (196,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:50:34.640',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (197,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:53:05.010',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (198,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:53:07.340',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (199,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:53:32.130',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (200,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:53:34.130',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (201,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:56:04.533',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (202,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:56:06.807',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (203,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:56:41.560',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (204,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:56:43.337',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (205,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:08:51.937',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (206,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:08:54.093',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (207,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:11:29.913',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (208,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:11:32.243',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (209,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:12:46.410',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (210,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:12:48.423',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (211,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:14:14.153',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (212,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:14:16.230',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (213,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:14:30.203',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (214,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:14:31.867',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (215,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:15:08.940',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (216,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:15:10.930',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (217,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 19:19:45.013',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (218,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 19:19:46.837',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (219,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 19:20:13.933',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (220,-1,1085,N'Document',CONVERT(datetime,'2019-06-16 19:20:28.053',121),N'Publish',NULL,NULL);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoLog] OFF

