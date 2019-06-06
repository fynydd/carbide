SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 74 rows to dbo.umbracoLog

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

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoLog] OFF

