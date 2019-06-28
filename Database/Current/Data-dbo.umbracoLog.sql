SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 705 rows to dbo.umbracoLog

SET IDENTITY_INSERT [dbo].[umbracoLog] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (1,-1,1051,N'Template',CONVERT(datetime,'2019-06-04 15:24:45.053',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (2,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 15:24:45.197',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (3,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:25:46.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (4,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:25:49.210',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (5,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:26:09.357',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (6,-1,1051,N'Template',CONVERT(datetime,'2019-06-04 15:26:41.030',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (7,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:26:53.290',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (8,-1,1053,N'Template',CONVERT(datetime,'2019-06-04 15:27:25.703',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (9,-1,-88,N'DataType',CONVERT(datetime,'2019-06-04 15:50:58.787',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (10,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 15:51:32.030',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (11,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 15:51:45.337',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (12,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 15:53:07.420',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (13,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 16:07:11.530',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (14,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 16:07:27.303',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (15,-1,1057,N'Media',CONVERT(datetime,'2019-06-04 16:08:48.500',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (16,-1,1058,N'Media',CONVERT(datetime,'2019-06-04 16:12:06.177',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (17,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 16:12:10.943',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (18,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 16:14:26.053',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (19,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 16:14:46.790',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (20,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 16:16:31.233',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (21,-1,1043,N'DataType',CONVERT(datetime,'2019-06-04 16:17:30.287',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (22,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-04 16:17:36.927',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (23,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 16:18:03.067',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (24,-1,1058,N'Media',CONVERT(datetime,'2019-06-04 16:18:20.633',121),N'Move',N'Move Media to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (25,-1,1058,N'Media',CONVERT(datetime,'2019-06-04 16:18:20.703',121),N'Delete',N'Trashed media with Id: 1058 related to original parent media item with Id: 1057',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (26,-1,1061,N'DataType',CONVERT(datetime,'2019-06-04 19:36:04.587',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (27,-1,1062,N'DataType',CONVERT(datetime,'2019-06-04 19:38:21.023',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (28,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:38:29.667',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (29,-1,1064,N'DataType',CONVERT(datetime,'2019-06-04 19:41:30.843',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (30,-1,1065,N'DataType',CONVERT(datetime,'2019-06-04 19:42:06.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (31,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:42:35.643',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (32,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:42:54.113',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (33,-1,1066,N'DataType',CONVERT(datetime,'2019-06-04 19:47:41.143',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (34,-1,1067,N'DataType',CONVERT(datetime,'2019-06-04 19:48:46.160',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (35,-1,1068,N'DataType',CONVERT(datetime,'2019-06-04 19:50:26.977',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (36,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-04 19:52:37.593',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (37,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:52:58.963',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (38,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-04 19:53:30.673',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (39,-1,1070,N'DataType',CONVERT(datetime,'2019-06-04 19:54:20.917',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (40,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-04 19:54:28.993',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (41,-1,1061,N'DataType',CONVERT(datetime,'2019-06-04 19:54:44.043',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (42,-1,1071,N'Media',CONVERT(datetime,'2019-06-04 19:55:26.927',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (43,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 19:56:34.747',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (44,-1,1072,N'Media',CONVERT(datetime,'2019-06-04 19:57:13.073',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (45,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 19:57:37.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (46,-1,1073,N'Media',CONVERT(datetime,'2019-06-04 19:57:54.063',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (47,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 19:58:21.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (48,-1,1056,N'Document',CONVERT(datetime,'2019-06-04 20:05:08.667',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (49,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 11:10:53.413',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (50,-1,-49,N'DataType',CONVERT(datetime,'2019-06-06 12:06:40.920',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (51,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-06 12:07:30.757',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (52,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 12:07:49.117',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (53,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 12:09:32.987',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (54,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 12:16:46.067',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (55,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-06 16:41:31.273',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (56,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:42:01.700',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (57,-1,1067,N'DataType',CONVERT(datetime,'2019-06-06 16:43:26.087',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (58,-1,1066,N'DataType',CONVERT(datetime,'2019-06-06 16:43:36.270',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (59,-1,1068,N'DataType',CONVERT(datetime,'2019-06-06 16:43:44.180',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (60,-1,1070,N'DataType',CONVERT(datetime,'2019-06-06 16:43:51.943',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (61,-1,1064,N'DataType',CONVERT(datetime,'2019-06-06 16:43:58.357',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (62,-1,1062,N'DataType',CONVERT(datetime,'2019-06-06 16:44:04.990',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (63,-1,1065,N'DataType',CONVERT(datetime,'2019-06-06 16:44:11.187',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (64,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:44:37.237',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (65,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-06 16:44:49.670',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (66,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:45:14.130',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (67,-1,1066,N'DataType',CONVERT(datetime,'2019-06-06 16:45:49.230',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (68,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:45:51.573',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (69,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:46:59.197',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (70,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:47:50.200',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (71,-1,1066,N'DataType',CONVERT(datetime,'2019-06-06 16:48:13.693',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (72,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 16:48:20.113',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (73,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:48:56.470',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (74,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 16:49:04.547',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (75,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 20:34:15.390',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (76,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-06 20:36:57.300',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (77,-1,1056,N'Document',CONVERT(datetime,'2019-06-06 20:37:10.110',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (78,-1,1074,N'DataType',CONVERT(datetime,'2019-06-12 19:05:11.653',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (79,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:05:18.977',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (80,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:05:49.730',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (81,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-12 19:11:24.350',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (82,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-12 19:11:43.243',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (83,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:13:50.607',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (84,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:23:54.470',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (85,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:24:18.133',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (86,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-12 19:31:55.907',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (87,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-12 19:32:19.283',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (88,-1,1078,N'Document',CONVERT(datetime,'2019-06-12 19:32:34.287',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (89,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:33:40.007',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (90,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-12 19:33:51.797',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (91,-1,1080,N'Document',CONVERT(datetime,'2019-06-12 19:34:06.770',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (92,-1,-95,N'DataType',CONVERT(datetime,'2019-06-12 19:34:57.890',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (93,-1,-95,N'DataType',CONVERT(datetime,'2019-06-12 19:35:14.813',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (94,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:35:19.857',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (95,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:35:43.950',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (96,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-12 19:36:28.933',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (97,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-12 19:36:43.567',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (98,-1,-1,N'Package',CONVERT(datetime,'2019-06-12 19:37:39.347',121),N'PackagerInstall',N'Package files installed for package ''u8Collapse''.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (99,-1,-1,N'DocumentType',CONVERT(datetime,'2019-06-12 19:37:51.423',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (100,-1,-1,N'Package',CONVERT(datetime,'2019-06-12 19:37:51.483',121),N'PackagerInstall',N'Package data installed for package ''u8Collapse''.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (101,-1,1081,N'Document',CONVERT(datetime,'2019-06-12 19:40:20.837',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (102,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:41:21.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (103,-1,-95,N'DataType',CONVERT(datetime,'2019-06-12 19:41:55.317',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (104,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-12 19:42:00.583',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (105,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:45:05.577',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (106,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:49:13.750',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (107,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:49:27.060',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (108,-1,1082,N'DataType',CONVERT(datetime,'2019-06-12 19:51:57.380',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (109,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:52:30.567',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (110,-1,1078,N'Document',CONVERT(datetime,'2019-06-12 19:52:42.757',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (111,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-12 19:53:00.723',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (112,-1,1056,N'Document',CONVERT(datetime,'2019-06-12 19:53:24.420',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (113,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:54:00.873',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (114,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:54:20.870',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (115,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 19:54:56.480',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (116,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-12 20:18:26.053',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (117,-1,1081,N'Document',CONVERT(datetime,'2019-06-12 20:20:16.593',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (118,-1,1066,N'DataType',CONVERT(datetime,'2019-06-12 20:20:36.477',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (119,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-12 20:20:45.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (120,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:05:49.260',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (121,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 15:06:35.630',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (122,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:06:45.227',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (123,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:07:24.813',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (124,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:08:44.360',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (125,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:08:58.310',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (126,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:09:20.940',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (127,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 15:09:43.910',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (128,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:09:49.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (129,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:11:16.080',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (130,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:11:42.507',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (131,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 15:12:04.347',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (132,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:12:10.213',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (133,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:14:26.490',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (134,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:16:02.107',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (135,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:23:40.730',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (136,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:25:30.123',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (137,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:29:58.333',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (138,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:30:11.577',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (139,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:40:51.440',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (140,-1,1078,N'Document',CONVERT(datetime,'2019-06-16 15:41:06.183',121),N'Move',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (141,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:43:04.407',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (142,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:43:10.543',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (143,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 15:43:28.310',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (144,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:44:41.443',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (145,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:44:47.510',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (146,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:45:34.640',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (147,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:45:40.533',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (148,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:46:40.110',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (149,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:46:46.740',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (150,-1,1082,N'DataType',CONVERT(datetime,'2019-06-16 15:47:14.150',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (151,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 15:47:19.947',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (152,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:48:01.347',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (153,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 15:48:06.323',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (154,-1,1085,N'Document',CONVERT(datetime,'2019-06-16 16:02:22.890',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (155,-1,1086,N'Document',CONVERT(datetime,'2019-06-16 16:02:32.787',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (156,-1,1087,N'Document',CONVERT(datetime,'2019-06-16 16:02:41.417',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (157,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 17:12:36.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (158,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:25:25.300',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (159,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:25:38.127',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (160,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 17:28:55.433',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (161,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:29:17.513',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (162,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:29:27.720',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (163,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 17:29:32.390',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (164,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 17:29:35.527',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (165,-1,1085,N'Document',CONVERT(datetime,'2019-06-16 17:33:17.637',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (166,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 17:34:24.010',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (167,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 17:34:49.043',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (168,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-16 17:36:45.737',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (169,-1,1090,N'DataType',CONVERT(datetime,'2019-06-16 17:51:36.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (170,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 17:52:46.303',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (171,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 17:53:13.090',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (172,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:01:46.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (173,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:01:50.810',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (174,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:17:16.263',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (175,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:17:19.510',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (176,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:21:25.723',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (177,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:21:42.393',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (178,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:21:54.577',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (179,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:28:55.197',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (180,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:28:58.480',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (181,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:43:53.077',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (182,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:43:58.757',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (183,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 18:44:20.920',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (184,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 18:44:24.907',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (185,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 18:44:32.293',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (186,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:45:59.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (187,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:46:19.043',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (188,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 18:46:38.203',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (189,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:46:59.320',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (190,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:47:01.483',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (191,-1,1088,N'Document',CONVERT(datetime,'2019-06-16 18:47:09.367',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (192,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:49:46.527',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (193,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:49:50.353',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (194,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 18:50:17.293',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (195,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:50:32.847',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (196,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:50:34.640',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (197,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:53:05.010',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (198,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:53:07.340',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (199,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:53:32.130',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (200,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:53:34.130',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (201,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:56:04.533',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (202,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:56:06.807',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (203,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 18:56:41.560',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (204,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 18:56:43.337',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (205,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:08:51.937',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (206,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:08:54.093',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (207,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:11:29.913',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (208,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:11:32.243',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (209,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:12:46.410',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (210,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:12:48.423',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (211,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:14:14.153',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (212,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:14:16.230',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (213,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:14:30.203',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (214,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:14:31.867',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (215,-1,1091,N'DataType',CONVERT(datetime,'2019-06-16 19:15:08.940',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (216,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-16 19:15:10.930',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (217,-1,1084,N'DataType',CONVERT(datetime,'2019-06-16 19:19:45.013',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (218,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-16 19:19:46.837',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (219,-1,1056,N'Document',CONVERT(datetime,'2019-06-16 19:20:13.933',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (220,-1,1085,N'Document',CONVERT(datetime,'2019-06-16 19:20:28.053',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (221,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 21:15:30.177',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (222,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-16 22:14:11.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (223,-1,1092,N'DataType',CONVERT(datetime,'2019-06-16 22:15:20.827',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (224,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-16 22:15:45.370',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (225,-1,1081,N'Document',CONVERT(datetime,'2019-06-16 22:22:43.637',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (226,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:38:40.790',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (227,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:39:12.157',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (228,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:44:14.843',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (229,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:44:53.080',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (230,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:45:10.533',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (231,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-24 16:46:01.830',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (232,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-24 16:48:30.590',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (233,-1,1074,N'DataType',CONVERT(datetime,'2019-06-24 16:49:09.253',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (234,-1,1092,N'DataType',CONVERT(datetime,'2019-06-24 16:50:21.970',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (235,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-24 16:50:32.373',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (236,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:50:48.587',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (237,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 16:51:25.327',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (238,-1,1095,N'Document',CONVERT(datetime,'2019-06-24 16:51:36.480',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (239,-1,1096,N'DataType',CONVERT(datetime,'2019-06-24 16:54:05.060',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (240,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:54:20.603',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (241,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 16:55:23.887',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (242,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 17:13:25.393',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (243,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 17:37:13.603',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (244,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 17:50:24.913',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (245,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:03:38.090',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (246,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:03:57.277',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (247,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:08:16.920',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (248,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:09:54.230',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (249,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:11:10.663',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (250,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:12:39.627',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (251,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:12:50.733',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (252,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 18:24:58.527',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (253,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 18:25:13.820',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (254,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 18:25:32.403',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (255,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:26:18.650',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (256,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:42:40.040',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (257,-1,1094,N'Document',CONVERT(datetime,'2019-06-24 18:53:39.590',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (258,-1,1096,N'DataType',CONVERT(datetime,'2019-06-24 18:54:28.950',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (259,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 18:54:31.060',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (260,-1,1091,N'DataType',CONVERT(datetime,'2019-06-24 19:02:31.197',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (261,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-24 19:02:43.517',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (262,-1,1091,N'DataType',CONVERT(datetime,'2019-06-24 19:03:13.243',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (263,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-24 19:03:27.127',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (264,-1,1081,N'Document',CONVERT(datetime,'2019-06-24 19:03:50.570',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (265,-1,1081,N'Document',CONVERT(datetime,'2019-06-24 19:04:57.870',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (266,-1,1091,N'DataType',CONVERT(datetime,'2019-06-24 19:08:59.927',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (267,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-24 19:09:14.557',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (268,-1,1081,N'Document',CONVERT(datetime,'2019-06-24 19:09:42.150',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (269,-1,1097,N'DataType',CONVERT(datetime,'2019-06-24 21:02:52.440',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (270,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-24 21:03:09.430',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (271,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-24 21:04:06.667',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (272,-1,1099,N'DataType',CONVERT(datetime,'2019-06-24 21:10:39.640',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (273,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-24 21:10:55.340',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (274,-1,1100,N'DataType',CONVERT(datetime,'2019-06-24 23:50:06.523',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (275,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-24 23:50:17.443',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (276,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-24 23:53:11.087',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (277,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-24 23:54:19.410',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (278,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-24 23:56:19.150',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (279,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-24 23:57:03.913',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (280,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-24 23:59:48.150',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (281,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 00:08:04.187',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (282,-1,1088,N'Document',CONVERT(datetime,'2019-06-25 00:09:01.263',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (283,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 00:10:28.660',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (284,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 00:11:16.580',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (285,-1,1084,N'DataType',CONVERT(datetime,'2019-06-25 00:11:43.997',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (286,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-25 00:11:59.343',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (287,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 00:14:47.777',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (288,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 00:16:04.050',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (289,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-25 00:22:04.550',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (290,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 00:22:33.693',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (291,-1,1100,N'DataType',CONVERT(datetime,'2019-06-25 00:25:25.173',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (292,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 00:25:35.907',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (293,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 00:29:07.393',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (294,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 01:00:33.010',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (295,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 01:07:51.690',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (296,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 01:10:40.897',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (297,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 01:10:47.690',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (298,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-25 18:46:28.923',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (299,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 18:46:59.560',121),N'Move',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (300,-1,1080,N'Document',CONVERT(datetime,'2019-06-25 18:47:08.870',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (301,-1,1080,N'Document',CONVERT(datetime,'2019-06-25 18:47:08.923',121),N'Delete',N'Trashed content with Id: 1080 related to original parent content with Id: 1078',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (302,-1,1078,N'Document',CONVERT(datetime,'2019-06-25 18:47:15.423',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (303,-1,1078,N'Document',CONVERT(datetime,'2019-06-25 18:47:15.457',121),N'Delete',N'Trashed content with Id: 1078 related to original parent content with Id: 1056',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (304,-1,1088,N'Document',CONVERT(datetime,'2019-06-25 18:48:58.263',121),N'Move',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (305,-1,1087,N'Document',CONVERT(datetime,'2019-06-25 18:49:06.167',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (306,-1,1087,N'Document',CONVERT(datetime,'2019-06-25 18:49:06.200',121),N'Delete',N'Trashed content with Id: 1087 related to original parent content with Id: 1086',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (307,-1,1086,N'Document',CONVERT(datetime,'2019-06-25 18:49:12.017',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (308,-1,1086,N'Document',CONVERT(datetime,'2019-06-25 18:49:12.047',121),N'Delete',N'Trashed content with Id: 1086 related to original parent content with Id: 1085',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (309,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-25 18:49:34.847',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (310,-1,1094,N'Document',CONVERT(datetime,'2019-06-25 18:50:44.513',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (311,-1,1094,N'Document',CONVERT(datetime,'2019-06-25 18:50:44.593',121),N'Delete',N'Trashed content with Id: 1094 related to original parent content with Id: 1056',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (312,-1,1095,N'Document',CONVERT(datetime,'2019-06-25 18:50:51.383',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (313,-1,1095,N'Document',CONVERT(datetime,'2019-06-25 18:50:51.417',121),N'Delete',N'Trashed content with Id: 1095 related to original parent content with Id: 1085',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (314,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-25 18:51:06.077',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (315,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-25 18:52:37.560',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (316,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-25 18:53:31.627',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (317,-1,1103,N'DocumentType',CONVERT(datetime,'2019-06-25 18:54:21.187',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (318,-1,1104,N'DocumentType',CONVERT(datetime,'2019-06-25 18:56:53.523',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (319,-1,-1,N'Document',CONVERT(datetime,'2019-06-25 18:57:07.597',121),N'Delete',N'Delete content of type 1093',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (320,-1,1093,N'DocumentType',CONVERT(datetime,'2019-06-25 18:57:07.663',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (321,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-25 18:57:27.310',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (322,-1,1104,N'DocumentType',CONVERT(datetime,'2019-06-25 18:57:57.433',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (323,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-25 18:58:17.173',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (324,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-25 18:58:37.680',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (325,-1,1103,N'DocumentType',CONVERT(datetime,'2019-06-25 18:58:53.137',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (326,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-25 18:59:03.370',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (327,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-25 18:59:21.657',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (328,-1,1103,N'DocumentType',CONVERT(datetime,'2019-06-25 18:59:44.720',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (329,-1,1103,N'DocumentType',CONVERT(datetime,'2019-06-25 19:00:04.980',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (330,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-25 19:00:22.500',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (331,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-25 19:00:43.177',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (332,-1,1104,N'DocumentType',CONVERT(datetime,'2019-06-25 19:01:02.067',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (333,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-25 19:02:29.677',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (334,-1,1103,N'DocumentType',CONVERT(datetime,'2019-06-25 19:02:59.477',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (335,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-25 19:03:19.637',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (336,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-25 19:03:29.170',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (337,-1,-1,N'Document',CONVERT(datetime,'2019-06-25 19:03:53.170',121),N'Delete',N'Delete content of type 1079',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (338,-1,1079,N'DocumentType',CONVERT(datetime,'2019-06-25 19:03:53.230',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (339,-1,-1,N'Document',CONVERT(datetime,'2019-06-25 19:04:23.867',121),N'Delete',N'Delete content of type 1083',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (340,-1,1083,N'DocumentType',CONVERT(datetime,'2019-06-25 19:04:23.947',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (341,-1,-1,N'Document',CONVERT(datetime,'2019-06-25 19:04:41.290',121),N'Delete',N'Delete content of type 1077',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (342,-1,1077,N'DocumentType',CONVERT(datetime,'2019-06-25 19:04:41.300',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (343,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 19:05:33.863',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (344,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 19:05:58.840',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (345,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 19:06:42.320',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (346,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-25 19:07:04.667',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (347,-1,1066,N'DataType',CONVERT(datetime,'2019-06-25 19:07:54.233',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (348,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 19:08:04.630',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (349,-1,1056,N'Document',CONVERT(datetime,'2019-06-25 19:09:44.317',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (350,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 19:11:38.573',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (351,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 19:21:15.633',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (352,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 19:21:32.300',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (353,-1,0,N'Document',CONVERT(datetime,'2019-06-25 19:22:45.980',121),N'Sort',N'Sorting content performed by user',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (354,-1,0,N'Document',CONVERT(datetime,'2019-06-25 19:22:56.353',121),N'Sort',N'Sorting content performed by user',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (355,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 19:25:00.263',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (356,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 19:25:21.690',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (357,-1,1088,N'Document',CONVERT(datetime,'2019-06-25 19:36:10.397',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (358,-1,1088,N'Document',CONVERT(datetime,'2019-06-25 19:37:15.883',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (359,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:25:35.070',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (360,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:25:38.950',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (361,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 22:26:20.050',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (362,-1,1104,N'DocumentType',CONVERT(datetime,'2019-06-25 22:26:46.610',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (363,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:28:42.943',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (364,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:28:55.343',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (365,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:30:36.883',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (366,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:35:14.753',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (367,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:35:40.683',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (368,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:35:43.323',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (369,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:37:12.553',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (370,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:38:40.427',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (371,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:40:00.770',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (372,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:40:35.647',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (373,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:40:38.553',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (374,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:46:26.273',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (375,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:46:39.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (376,-1,1091,N'DataType',CONVERT(datetime,'2019-06-25 22:47:59.013',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (377,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 22:48:12.437',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (378,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:48:33.457',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (379,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:48:45.983',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (380,-1,1096,N'DataType',CONVERT(datetime,'2019-06-25 22:49:10.233',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (381,-1,1104,N'DocumentType',CONVERT(datetime,'2019-06-25 22:49:20.220',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (382,-1,1091,N'DataType',CONVERT(datetime,'2019-06-25 22:50:47.747',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (383,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 22:51:00.183',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (384,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:51:16.240',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (385,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:51:26.133',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (386,-1,1091,N'DataType',CONVERT(datetime,'2019-06-25 22:52:44.920',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (387,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-25 22:52:56.870',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (388,-1,1106,N'DataType',CONVERT(datetime,'2019-06-25 22:53:12.680',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (389,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-25 22:53:21.277',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (390,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:54:57.160',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (391,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 22:55:07.203',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (392,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:57:10.163',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (393,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:57:33.540',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (394,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:57:47.917',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (395,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:58:06.813',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (396,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:58:16.160',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (397,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:58:19.347',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (398,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:59:21.657',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (399,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 22:59:34.617',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (400,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 23:01:10.017',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (401,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 23:01:33.123',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (402,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 23:03:30.457',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (403,-1,1081,N'Document',CONVERT(datetime,'2019-06-25 23:03:40.897',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (404,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 23:03:46.853',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (405,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 23:03:55.560',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (406,-1,1105,N'Document',CONVERT(datetime,'2019-06-25 23:04:22.557',121),N'Copy',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (407,-1,1107,N'Document',CONVERT(datetime,'2019-06-25 23:04:22.647',121),N'Copy',N'Copied content with Id: ''1107'' related to original content with Id: ''1105''',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (408,-1,1107,N'Document',CONVERT(datetime,'2019-06-25 23:04:33.410',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (409,-1,1107,N'Document',CONVERT(datetime,'2019-06-25 23:04:54.660',121),N'Move',N'Moved to recycle bin',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (410,-1,1107,N'Document',CONVERT(datetime,'2019-06-25 23:04:54.697',121),N'Delete',N'Trashed content with Id: 1107 related to original parent content with Id: 1056',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (411,NULL,-20,N'Document',CONVERT(datetime,'2019-06-25 23:04:59.333',121),N'Delete',N'Recycle bin emptied',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (412,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 10:22:42.500',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (413,-1,1108,N'DataType',CONVERT(datetime,'2019-06-26 10:49:53.430',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (414,-1,1100,N'DataType',CONVERT(datetime,'2019-06-26 10:51:05.743',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (415,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 10:51:17.133',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (416,-1,1100,N'DataType',CONVERT(datetime,'2019-06-26 10:51:44.697',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (417,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 10:51:53.697',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (418,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 10:52:43.117',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (419,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-26 10:52:59.490',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (420,-1,1063,N'DocumentType',CONVERT(datetime,'2019-06-26 10:53:16.383',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (421,-1,-1,N'Package',CONVERT(datetime,'2019-06-26 10:59:42.950',121),N'PackagerInstall',N'Package files installed for package ''u8Collapse''.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (422,-1,-1,N'DocumentType',CONVERT(datetime,'2019-06-26 11:00:00.827',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (423,-1,-1,N'Package',CONVERT(datetime,'2019-06-26 11:00:00.983',121),N'PackagerInstall',N'Package data installed for package ''u8Collapse''.',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (424,-1,1066,N'DataType',CONVERT(datetime,'2019-06-26 11:44:08.147',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (425,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-26 11:44:25.433',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (426,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-26 11:45:31.163',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (427,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 11:46:23.480',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (428,-1,1103,N'DocumentType',CONVERT(datetime,'2019-06-26 11:47:05.963',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (429,-1,1081,N'Document',CONVERT(datetime,'2019-06-26 11:47:55.943',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (430,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 11:50:04.680',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (431,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 11:51:06.850',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (432,-1,1085,N'Document',CONVERT(datetime,'2019-06-26 11:51:15.410',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (433,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:06:12.020',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (434,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 12:06:32.767',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (435,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 12:07:05.213',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (436,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 12:07:13.600',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (437,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:08:36.133',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (438,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 12:19:29.760',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (439,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 12:19:50.783',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (440,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:27:14.840',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (441,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:27:43.147',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (442,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:31:40.673',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (443,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:31:54.827',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (444,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 12:32:55.063',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (445,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 12:34:21.723',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (446,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 12:35:36.733',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (447,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:39:46.367',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (448,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:39:48.437',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (449,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:42:08.297',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (450,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:42:22.660',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (451,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:42:58.273',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (452,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:43:05.780',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (453,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:44:10.210',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (454,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:44:20.597',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (455,-1,1056,N'Document',CONVERT(datetime,'2019-06-26 12:45:10.087',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (456,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:47:25.210',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (457,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:47:36.057',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (458,-1,1081,N'Document',CONVERT(datetime,'2019-06-26 12:48:54.030',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (459,-1,1081,N'Document',CONVERT(datetime,'2019-06-26 12:54:09.493',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (460,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 12:54:46.110',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (461,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 12:54:49.177',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (462,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-26 15:16:41.980',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (463,-1,1109,N'DataType',CONVERT(datetime,'2019-06-26 15:17:05.490',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (464,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 15:20:53.470',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (465,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-26 15:23:53.370',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (466,-1,1106,N'DataType',CONVERT(datetime,'2019-06-26 15:24:15.207',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (467,-1,1091,N'DataType',CONVERT(datetime,'2019-06-26 15:24:52.260',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (468,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-26 15:27:12.807',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (469,-1,1096,N'DataType',CONVERT(datetime,'2019-06-26 15:27:44.103',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (470,-1,1092,N'DataType',CONVERT(datetime,'2019-06-26 15:49:13.380',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (471,-1,1075,N'DocumentType',CONVERT(datetime,'2019-06-26 15:49:24.270',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (472,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 22:34:15.453',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (473,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:34:40.163',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (474,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:34:53.200',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (475,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 22:38:39.613',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (476,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:39:00.963',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (477,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:46:08.497',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (478,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:46:23.077',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (479,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:46:41.493',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (480,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:49:20.847',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (481,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:49:29.453',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (482,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:49:37.790',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (483,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:49:45.383',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (484,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:52:31.400',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (485,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:52:47.673',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (486,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:52:55.627',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (487,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:53:23.417',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (488,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:53:34.507',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (489,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 22:55:22.547',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (490,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-26 23:03:14.933',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (491,-1,1105,N'Document',CONVERT(datetime,'2019-06-26 23:03:40.180',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (492,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 13:57:32.177',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (493,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 13:57:56.697',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (494,-1,1111,N'DataType',CONVERT(datetime,'2019-06-27 14:00:43.113',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (495,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:00:53.340',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (496,-1,1111,N'DataType',CONVERT(datetime,'2019-06-27 14:01:15.960',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (497,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:01:24.137',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (498,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:03:06.347',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (499,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-27 14:03:27.943',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (500,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:03:45.407',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (501,-1,1043,N'DataType',CONVERT(datetime,'2019-06-27 14:07:45.237',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (502,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:08:00.717',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (503,-1,-1,N'Document',CONVERT(datetime,'2019-06-27 14:08:12.637',121),N'Delete',N'Delete content of type 1055',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (504,-1,1055,N'DocumentType',CONVERT(datetime,'2019-06-27 14:08:12.717',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (505,-1,-1,N'Document',CONVERT(datetime,'2019-06-27 14:09:26.180',121),N'Delete',N'Delete content of type 1104',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (506,-1,1104,N'DocumentType',CONVERT(datetime,'2019-06-27 14:09:26.210',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (507,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:10:06.750',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (508,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-27 14:10:24.017',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (509,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 14:12:25.033',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (510,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 14:12:42.217',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (511,-1,1112,N'DataType',CONVERT(datetime,'2019-06-27 14:30:41.083',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (512,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:32:30.573',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (513,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:33:39.740',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (514,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:37:36.767',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (515,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:39:32.497',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (516,-1,1113,N'DataType',CONVERT(datetime,'2019-06-27 14:42:11.820',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (517,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:42:33.763',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (518,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:43:20.670',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (519,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:44:31.350',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (520,-1,1114,N'DataType',CONVERT(datetime,'2019-06-27 14:46:22.120',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (521,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 14:47:17.253',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (522,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 14:48:10.267',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (523,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:48:32.397',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (524,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 14:50:00.553',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (525,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:50:42.170',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (526,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:51:40.603',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (527,-1,1043,N'DataType',CONVERT(datetime,'2019-06-27 14:52:22.973',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (528,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:52:37.497',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (529,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 14:52:57.267',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (530,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 14:53:51.120',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (531,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-27 14:54:11.347',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (532,-1,-1,N'Document',CONVERT(datetime,'2019-06-27 14:54:27.513',121),N'Delete',N'Delete content of type 1102',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (533,-1,1102,N'DocumentType',CONVERT(datetime,'2019-06-27 14:54:27.527',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (534,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 14:57:04.100',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (535,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 14:57:57.863',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (536,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 14:58:40.287',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (537,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 14:59:23.067',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (538,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 14:59:56.937',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (539,-1,1115,N'DataType',CONVERT(datetime,'2019-06-27 15:14:41.170',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (540,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 15:15:18.327',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (541,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:18:00.990',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (542,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:18:20.680',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (543,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:19:02.033',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (544,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:19:18.920',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (545,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 15:20:09.037',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (546,-1,1110,N'DocumentType',CONVERT(datetime,'2019-06-27 15:20:56.600',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (547,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:28:01.400',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (548,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 15:28:37.960',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (549,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 15:30:13.697',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (550,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 15:30:41.687',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (551,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:31:28.077',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (552,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 15:31:41.523',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (553,-1,1116,N'DataType',CONVERT(datetime,'2019-06-27 17:10:56.623',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (554,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 17:11:00.247',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (555,-1,1116,N'DataType',CONVERT(datetime,'2019-06-27 17:21:46.550',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (556,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 17:21:58.600',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (557,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 17:22:29.330',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (558,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 17:23:01.097',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (559,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 17:33:32.030',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (560,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 17:33:59.390',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (561,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 17:35:16.097',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (562,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-27 17:35:38.830',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (563,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 17:49:56.837',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (564,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 17:50:06.900',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (565,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 17:51:46.840',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (566,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 17:51:58.857',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (567,-1,1082,N'DataType',CONVERT(datetime,'2019-06-27 17:52:32.590',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (568,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 17:52:51.293',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (569,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-27 17:53:17.683',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (570,-1,1119,N'DocumentType',CONVERT(datetime,'2019-06-27 17:56:39.063',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (571,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-27 17:56:59.753',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (572,-1,1120,N'Template',CONVERT(datetime,'2019-06-27 17:57:22.223',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (573,-1,1119,N'DocumentType',CONVERT(datetime,'2019-06-27 17:57:24.580',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (574,-1,1120,N'Template',CONVERT(datetime,'2019-06-27 17:57:39.440',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (575,-1,1120,N'Template',CONVERT(datetime,'2019-06-27 18:01:22.833',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (576,-1,1121,N'Document',CONVERT(datetime,'2019-06-27 18:02:40.007',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (577,-1,1119,N'DocumentType',CONVERT(datetime,'2019-06-27 18:03:03.807',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (578,-1,1122,N'Document',CONVERT(datetime,'2019-06-27 18:47:49.563',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (579,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 18:49:56.393',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (580,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 18:49:58.340',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (581,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 18:51:50.283',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (582,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 18:52:03.617',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (583,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 18:54:36.253',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (584,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 18:54:51.557',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (585,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 18:55:59.807',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (586,-1,1056,N'Document',CONVERT(datetime,'2019-06-27 18:59:07.887',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (587,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 19:24:08.697',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (588,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 19:24:17.920',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (589,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 19:25:48.377',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (590,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 19:25:58.253',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (591,-1,1117,N'DataType',CONVERT(datetime,'2019-06-27 19:26:33.583',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (592,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-27 19:26:47.127',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (593,-1,1123,N'DocumentType',CONVERT(datetime,'2019-06-27 22:23:18.023',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (594,-1,1123,N'DocumentType',CONVERT(datetime,'2019-06-27 22:27:18.807',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (595,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-27 22:27:48.797',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (596,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-28 10:09:00.763',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (597,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-28 10:10:44.197',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (598,-1,1123,N'DocumentType',CONVERT(datetime,'2019-06-28 10:11:06.550',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (599,-1,1124,N'Media',CONVERT(datetime,'2019-06-28 10:14:07.423',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (600,-1,1125,N'Media',CONVERT(datetime,'2019-06-28 10:14:16.717',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (601,-1,1057,N'Media',CONVERT(datetime,'2019-06-28 10:14:26.690',121),N'Move',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (602,-1,-1,N'Document',CONVERT(datetime,'2019-06-28 10:24:14.150',121),N'Delete',N'Delete content of type 1123',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (603,-1,1123,N'DocumentType',CONVERT(datetime,'2019-06-28 10:24:14.233',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (604,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-28 10:26:13.227',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (605,-1,1051,N'Template',CONVERT(datetime,'2019-06-28 10:26:38.917',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (606,-1,1051,N'Template',CONVERT(datetime,'2019-06-28 10:28:57.410',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (607,-1,1051,N'Template',CONVERT(datetime,'2019-06-28 10:29:23.477',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (608,-1,1122,N'Document',CONVERT(datetime,'2019-06-28 10:34:28.957',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (609,-1,1117,N'DataType',CONVERT(datetime,'2019-06-28 10:37:59.507',121),N'Delete',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (610,-1,1051,N'Template',CONVERT(datetime,'2019-06-28 10:41:20.403',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (611,-1,1120,N'Template',CONVERT(datetime,'2019-06-28 10:41:28.237',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (612,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-28 10:46:11.220',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (613,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 10:46:58.623',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (614,-1,1119,N'DocumentType',CONVERT(datetime,'2019-06-28 10:47:48.107',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (615,-1,1119,N'DocumentType',CONVERT(datetime,'2019-06-28 10:47:59.867',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (616,-1,1119,N'DocumentType',CONVERT(datetime,'2019-06-28 10:48:25.770',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (617,-1,1052,N'DocumentType',CONVERT(datetime,'2019-06-28 10:48:39.127',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (618,-1,1098,N'DocumentType',CONVERT(datetime,'2019-06-28 10:49:09.940',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (619,-1,1069,N'DocumentType',CONVERT(datetime,'2019-06-28 10:49:45.190',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (620,-1,1118,N'DocumentType',CONVERT(datetime,'2019-06-28 11:21:41.620',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (621,-1,1126,N'DataType',CONVERT(datetime,'2019-06-28 11:48:41.997',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (622,-1,1101,N'DocumentType',CONVERT(datetime,'2019-06-28 11:49:02.013',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (623,-1,1127,N'Media',CONVERT(datetime,'2019-06-28 11:51:13.843',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (624,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 11:51:22.707',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (625,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 12:30:05.203',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (626,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 12:43:30.030',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (627,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 12:43:43.193',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (628,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:32:00.560',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (629,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:32:03.033',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (630,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:32:48.280',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (631,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:33:04.743',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (632,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:34:57.950',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (633,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:36:48.003',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (634,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:49:48.370',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (635,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:50:15.633',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (636,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:56:40.033',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (637,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:56:52.717',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (638,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:57:05.340',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (639,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 13:59:23.790',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (640,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 14:04:40.303',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (641,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 16:48:12.077',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (642,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 16:48:35.350',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (643,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 16:50:28.460',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (644,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 16:50:40.570',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (645,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 17:34:54.200',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (646,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 17:35:07.210',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (647,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:37:34.230',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (648,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:38:22.367',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (649,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:38:52.970',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (650,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:39:11.203',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (651,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:39:29.837',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (652,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:39:44.940',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (653,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:40:28.107',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (654,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:40:44.650',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (655,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:41:03.940',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (656,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:41:24.617',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (657,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:41:39.727',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (658,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:42:04.460',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (659,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:42:21.613',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (660,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:42:34.353',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (661,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:42:56.343',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (662,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:43:28.423',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (663,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:43:45.970',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (664,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:43:58.707',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (665,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:44:15.397',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (666,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:44:25.760',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (667,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:44:57.607',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (668,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:45:37.883',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (669,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:45:53.770',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (670,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:46:15.227',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (671,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:46:24.670',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (672,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:46:50.613',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (673,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:47:02.910',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (674,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:47:29.633',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (675,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:47:44.060',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (676,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:48:02.860',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (677,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:48:14.957',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (678,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:48:31.113',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (679,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:49:03.543',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (680,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:49:25.163',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (681,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:49:49.233',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (682,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:50:11.060',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (683,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:50:28.613',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (684,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:51:29.303',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (685,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:51:49.163',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (686,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 17:52:15.363',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (687,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:01:09.593',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (688,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:01:21.487',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (689,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:01:40.803',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (690,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 18:12:14.533',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (691,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 18:12:31.863',121),N'Save',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (692,-1,1056,N'Document',CONVERT(datetime,'2019-06-28 18:12:35.200',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (693,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:16:05.367',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (694,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:16:40.800',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (695,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:18:13.340',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (696,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:18:41.510',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (697,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:19:57.803',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (698,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:20:36.960',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (699,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:20:56.107',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (700,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:21:07.430',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (701,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:21:58.933',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (702,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:24:37.647',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (703,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:25:23.057',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (704,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:25:38.607',121),N'Publish',NULL,NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[entityType],[Datestamp],[logHeader],[logComment],[parameters]) VALUES (705,-1,1081,N'Document',CONVERT(datetime,'2019-06-28 18:25:59.793',121),N'Publish',NULL,NULL);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoLog] OFF

