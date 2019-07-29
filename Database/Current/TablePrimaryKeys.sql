﻿
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;820494

PRINT N'CREATE table primary key constraints'
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsContentNu] ADD CONSTRAINT [PK_cmsContentNu] PRIMARY KEY CLUSTERED([nodeId], [published]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsContentType] ADD CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED([pk]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsContentType2ContentType] ADD CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED([parentContentTypeId], [childContentTypeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED([Id], [AllowedId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsDictionary] ADD CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED([pk]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsDocumentType] ADD CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED([contentTypeNodeId], [templateNodeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsLanguageText] ADD CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED([pk]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsMacroProperty] ADD CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED([nodeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsMember2MemberGroup] ADD CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED([Member], [MemberGroup]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsMemberType] ADD CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED([pk]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsTagRelationship] ADD CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED([nodeId], [tagId], [propertyTypeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsTags] ADD CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[cmsTemplate] ADD CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED([pk]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[UFRecordDataString] ADD CONSTRAINT [PK_UFRecordDataString] PRIMARY KEY CLUSTERED([Id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[UFRecordFields] ADD CONSTRAINT [PK_UFRecordFields] PRIMARY KEY CLUSTERED([Key]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[UFRecords] ADD CONSTRAINT [PK_UFRecords] PRIMARY KEY CLUSTERED([Id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoAccess] ADD CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoAccessRule] ADD CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoAudit] ADD CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoConsent] ADD CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoContent] ADD CONSTRAINT [PK_umbracoContent] PRIMARY KEY CLUSTERED([nodeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoContentSchedule] ADD CONSTRAINT [PK_umbracoContentSchedule] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoContentVersion] ADD CONSTRAINT [PK_umbracoContentVersion] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] ADD CONSTRAINT [PK_umbracoContentVersionCultureVariation] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoDataType] ADD CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED([nodeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoDocument] ADD CONSTRAINT [PK_umbracoDocument] PRIMARY KEY CLUSTERED([nodeId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] ADD CONSTRAINT [PK_umbracoDocumentCultureVariation] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoDocumentVersion] ADD CONSTRAINT [PK_umbracoDocumentVersion] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoDomain] ADD CONSTRAINT [PK_umbracoDomain] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoExternalLogin] ADD CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoKeyValue] ADD CONSTRAINT [PK_umbracoKeyValue] PRIMARY KEY CLUSTERED([key]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoLanguage] ADD CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoLock] ADD CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoLog] ADD CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoMediaVersion] ADD CONSTRAINT [PK_umbracoMediaVersion] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoNode] ADD CONSTRAINT [PK_umbracoNode] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoPropertyData] ADD CONSTRAINT [PK_umbracoPropertyData] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoRedirectUrl] ADD CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoRelation] ADD CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoRelationType] ADD CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoServer] ADD CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUser] ADD CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUser2NodeNotify] ADD CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED([userId], [nodeId], [action]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUser2UserGroup] ADD CONSTRAINT [PK_user2userGroup] PRIMARY KEY CLUSTERED([userId], [userGroupId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUserGroup] ADD CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUserGroup2App] ADD CONSTRAINT [PK_userGroup2App] PRIMARY KEY CLUSTERED([userGroupId], [app]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] ADD CONSTRAINT [PK_umbracoUserGroup2NodePermission] PRIMARY KEY CLUSTERED([userGroupId], [nodeId], [permission]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUserLogin] ADD CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED([sessionId]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494

-- SQRIBE/OBJ;820494
ALTER TABLE [dbo].[umbracoUserStartNode] ADD CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED([id]) 
WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF) ON [PRIMARY];
GO -- SQRIBE/GO;820494
