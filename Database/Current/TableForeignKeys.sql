
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

PRINT N'CREATE foreign key constraints'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsLanguageText] WITH NOCHECK ADD CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId]) 
REFERENCES [dbo].[cmsDictionary] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDocumentVersion] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id] FOREIGN KEY([id]) 
REFERENCES [dbo].[umbracoContentVersion] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDocumentVersion] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId] FOREIGN KEY([templateId]) 
REFERENCES [dbo].[cmsTemplate] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDomain] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDomain_umbracoNode_id] FOREIGN KEY([domainRootStructureID]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoLog] WITH NOCHECK ADD CONSTRAINT [FK_umbracoLog_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserLogin] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id] FOREIGN KEY([versionId]) 
REFERENCES [dbo].[umbracoContentVersion] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsMacroProperty] WITH NOCHECK ADD CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro]) 
REFERENCES [dbo].[cmsMacro] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id] FOREIGN KEY([availableUserId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsMemberType] WITH NOCHECK ADD CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsMemberType] WITH NOCHECK ADD CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentSchedule] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoContent] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentSchedule] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsMember] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember_umbracoContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoContent] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsMember2MemberGroup] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member]) 
REFERENCES [dbo].[cmsMember] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsMember2MemberGroup] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsPropertyTypeGroup] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsContentNu] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoContent] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[UFRecordDataString] WITH NOCHECK ADD CONSTRAINT [FK_UFRecordDataString_UFRecordFields_Key] FOREIGN KEY([Key]) 
REFERENCES [dbo].[UFRecordFields] ([Key]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsPropertyType] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId] FOREIGN KEY([dataTypeId]) 
REFERENCES [dbo].[umbracoDataType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsPropertyType] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsPropertyType] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId]) 
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoPropertyData] WITH NOCHECK ADD CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id] FOREIGN KEY([versionId]) 
REFERENCES [dbo].[umbracoContentVersion] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoPropertyData] WITH NOCHECK ADD CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id] FOREIGN KEY([propertyTypeId]) 
REFERENCES [dbo].[cmsPropertyType] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoPropertyData] WITH NOCHECK ADD CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoRelation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoRelation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoRelation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType]) 
REFERENCES [dbo].[umbracoRelationType] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsTags] WITH NOCHECK ADD CONSTRAINT [FK_cmsTags_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsTagRelationship] WITH NOCHECK ADD CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoContent] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsTagRelationship] WITH NOCHECK ADD CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId]) 
REFERENCES [dbo].[cmsTags] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsTagRelationship] WITH NOCHECK ADD CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId]) 
REFERENCES [dbo].[cmsPropertyType] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsContentType2ContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsContentType2ContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUser2NodeNotify] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUser2NodeNotify] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoNode_umbracoUser_id] FOREIGN KEY([nodeUser]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoAccess] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoAccess] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoAccess] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoAccessRule] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId]) 
REFERENCES [dbo].[umbracoAccess] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsTemplate] WITH NOCHECK ADD CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContent] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContent_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContent] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId] FOREIGN KEY([contentTypeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoRedirectUrl] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey]) 
REFERENCES [dbo].[umbracoNode] ([uniqueId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentVersion] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoContent] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoContentVersion] WITH NOCHECK ADD CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoMediaVersion] WITH NOCHECK ADD CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id] FOREIGN KEY([id]) 
REFERENCES [dbo].[umbracoContentVersion] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserGroup] WITH NOCHECK ADD CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDocument] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoContent] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserGroup] WITH NOCHECK ADD CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUser2UserGroup] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsDocumentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUser2UserGroup] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId]) 
REFERENCES [dbo].[umbracoUserGroup] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsDocumentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsDocumentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId]) 
REFERENCES [dbo].[cmsTemplate] ([nodeId]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id] FOREIGN KEY([userGroupId]) 
REFERENCES [dbo].[umbracoUserGroup] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoDataType] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserGroup2App] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId]) 
REFERENCES [dbo].[umbracoUserGroup] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsDictionary] WITH NOCHECK ADD CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent]) 
REFERENCES [dbo].[cmsDictionary] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserStartNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoUserStartNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[umbracoLanguage] WITH NOCHECK ADD CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id] FOREIGN KEY([fallbackLanguageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
ALTER TABLE [dbo].[cmsLanguageText] WITH NOCHECK ADD CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;03d113
