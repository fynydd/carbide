SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 25 rows to dbo.umbracoLog

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

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoLog] OFF

