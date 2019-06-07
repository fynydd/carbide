﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 36 rows to dbo.umbracoCacheInstruction

SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (50,CONVERT(datetime,'2019-06-05 23:23:35.170',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P49616/D2] 5E61D08F242A458594E9ECCC8AA77327',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (51,CONVERT(datetime,'2019-06-06 15:10:12.410',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (52,CONVERT(datetime,'2019-06-06 15:10:54.707',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (53,CONVERT(datetime,'2019-06-06 16:06:44.963',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":-49,\"Key\":\"92897bc6-a5f3-4ffe-ae27-f2e7e33dda49\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (54,CONVERT(datetime,'2019-06-06 16:07:34.713',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (55,CONVERT(datetime,'2019-06-06 16:07:49.233',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (56,CONVERT(datetime,'2019-06-06 16:09:33.103',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (57,CONVERT(datetime,'2019-06-06 16:10:13.067',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeType\":1}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',3);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (58,CONVERT(datetime,'2019-06-06 16:16:46.167',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P52956/D2] 6E4FA90ADA3A49EFA9314F8B276F1EB1',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (59,CONVERT(datetime,'2019-06-06 20:40:38.993',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (60,CONVERT(datetime,'2019-06-06 20:41:35.603',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":2}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (61,CONVERT(datetime,'2019-06-06 20:42:05.953',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1069,\"ChangeTypes\":2},{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (62,CONVERT(datetime,'2019-06-06 20:42:22.427',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeType\":1}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',3);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (63,CONVERT(datetime,'2019-06-06 20:43:30.240',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"89ecd065-85a6-42f2-8063-3acf642324c4\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (64,CONVERT(datetime,'2019-06-06 20:43:36.647',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"b40088b4-85df-41c4-9042-c0c491096ee4\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (65,CONVERT(datetime,'2019-06-06 20:43:44.577',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1068,\"Key\":\"9b45f79d-6232-418f-91d9-144c8710ce62\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (66,CONVERT(datetime,'2019-06-06 20:43:52.320',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1070,\"Key\":\"d21e6cf2-25ac-47f5-b1c6-0de9428ec3ed\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (67,CONVERT(datetime,'2019-06-06 20:43:58.733',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"ca8dcb84-e14a-40bb-9569-879374ee19f0\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (68,CONVERT(datetime,'2019-06-06 20:44:05.357',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"b3610988-1723-484a-800f-39e1dd5b0d64\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (69,CONVERT(datetime,'2019-06-06 20:44:11.557',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"fa36289a-64b5-4e8e-b811-f0f58a69af66\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (70,CONVERT(datetime,'2019-06-06 20:44:41.380',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1069,\"ChangeTypes\":2}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (71,CONVERT(datetime,'2019-06-06 20:44:49.723',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1063,\"ChangeTypes\":2}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (72,CONVERT(datetime,'2019-06-06 20:45:14.313',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (73,CONVERT(datetime,'2019-06-06 20:45:49.297',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"b40088b4-85df-41c4-9042-c0c491096ee4\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (74,CONVERT(datetime,'2019-06-06 20:45:55.693',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1069,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (75,CONVERT(datetime,'2019-06-06 20:46:59.317',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (76,CONVERT(datetime,'2019-06-06 20:47:50.310',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (77,CONVERT(datetime,'2019-06-06 20:48:17.813',121),N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"b40088b4-85df-41c4-9042-c0c491096ee4\",\"Removed\":false}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (78,CONVERT(datetime,'2019-06-06 20:48:20.503',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1069,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (79,CONVERT(datetime,'2019-06-06 20:48:56.597',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (80,CONVERT(datetime,'2019-06-06 20:49:04.603',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (81,CONVERT(datetime,'2019-06-06 20:49:14.830',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeType\":1}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P54184/D2] 97EBF56A7D2746A58E4CB14360C04431',3);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (82,CONVERT(datetime,'2019-06-07 00:34:15.920',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P8116/D3] E674B4AD438B419AB084E62CFD86D6CE',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (83,CONVERT(datetime,'2019-06-07 00:37:01.637',121),N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1069,\"ChangeTypes\":2},{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P8116/D3] E674B4AD438B419AB084E62CFD86D6CE',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (84,CONVERT(datetime,'2019-06-07 00:37:10.230',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"ChangeTypes\":4}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P8116/D3] E674B4AD438B419AB084E62CFD86D6CE',1);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (85,CONVERT(datetime,'2019-06-07 00:37:19.860',121),N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeType\":1}]"}]',N'WIN-U59DMILN740//LM/W3SVC/1/ROOT [P8116/D3] E674B4AD438B419AB084E62CFD86D6CE',3);

COMMIT TRANSACTION

SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF

