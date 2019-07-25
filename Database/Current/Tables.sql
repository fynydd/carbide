
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsDictionary]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsDictionary]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [id] [uniqueidentifier] NOT NULL,
    [parent] [uniqueidentifier] NULL,
    [key] [nvarchar](450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsLanguageText]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsLanguageText]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [languageId] [int] NOT NULL,
    [UniqueId] [uniqueidentifier] NOT NULL,
    [value] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsMember]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsMember]
(
    [nodeId] [int] NOT NULL,
    [Email] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [LoginName] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Password] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsMember2MemberGroup]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsMember2MemberGroup]
(
    [Member] [int] NOT NULL,
    [MemberGroup] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsMemberType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsMemberType]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [NodeId] [int] NOT NULL,
    [propertytypeId] [int] NOT NULL,
    [memberCanEdit] [bit] NOT NULL,
    [viewOnProfile] [bit] NOT NULL,
    [isSensitive] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecordDataInteger]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecordDataInteger]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Key] [uniqueidentifier] NOT NULL,
    [Value] [int] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoAccess]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoAccess]
(
    [id] [uniqueidentifier] NOT NULL,
    [nodeId] [int] NOT NULL,
    [loginNodeId] [int] NOT NULL,
    [noAccessNodeId] [int] NOT NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoAccessRule]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoAccessRule]
(
    [id] [uniqueidentifier] NOT NULL,
    [accessId] [uniqueidentifier] NOT NULL,
    [ruleValue] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ruleType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoConsent]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoConsent]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [current] [bit] NOT NULL,
    [source] [nvarchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [context] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [action] [nvarchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL,
    [state] [int] NOT NULL,
    [comment] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoContentSchedule]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoContentSchedule]
(
    [id] [uniqueidentifier] NOT NULL,
    [nodeId] [int] NOT NULL,
    [languageId] [int] NULL,
    [date] [datetime] NOT NULL,
    [action] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoContentVersionCultureVariation]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoContentVersionCultureVariation]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [versionId] [int] NOT NULL,
    [languageId] [int] NOT NULL,
    [name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [date] [datetime] NOT NULL,
    [availableUserId] [int] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoDocumentCultureVariation]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoDocumentCultureVariation]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [languageId] [int] NOT NULL,
    [edited] [bit] NOT NULL,
    [available] [bit] NOT NULL,
    [published] [bit] NOT NULL,
    [name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoExternalLogin]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoExternalLogin]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userId] [int] NOT NULL,
    [loginProvider] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [providerKey] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoRedirectUrl]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoRedirectUrl]
(
    [id] [uniqueidentifier] NOT NULL,
    [contentKey] [uniqueidentifier] NOT NULL,
    [createDateUtc] [datetime] NOT NULL,
    [url] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [culture] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [urlHash] [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUser2NodeNotify]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUser2NodeNotify]
(
    [userId] [int] NOT NULL,
    [nodeId] [int] NOT NULL,
    [action] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUserGroup2NodePermission]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUserGroup2NodePermission]
(
    [userGroupId] [int] NOT NULL,
    [nodeId] [int] NOT NULL,
    [permission] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecordDataDateTime]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecordDataDateTime]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Key] [uniqueidentifier] NOT NULL,
    [Value] [datetime] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoLanguage]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoLanguage]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [languageISOCode] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [languageCultureName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [isDefaultVariantLang] [bit] NOT NULL,
    [mandatory] [bit] NOT NULL,
    [fallbackLanguageId] [int] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsDocumentType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsDocumentType]
(
    [contentTypeNodeId] [int] NOT NULL,
    [templateNodeId] [int] NOT NULL,
    [IsDefault] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecordDataLongString]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecordDataLongString]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Key] [uniqueidentifier] NOT NULL,
    [Value] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecords]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecords]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Form] [uniqueidentifier] NOT NULL,
    [Created] [datetime] NOT NULL,
    [Updated] [datetime] NOT NULL,
    [CurrentPage] [uniqueidentifier] NULL,
    [UmbracoPageId] [int] NULL,
    [IP] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [MemberKey] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [UniqueId] [uniqueidentifier] NOT NULL,
    [State] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [RecordData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFUserSecurity]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFUserSecurity]
(
    [User] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ManageDataSources] [bit] NOT NULL,
    [ManagePreValueSources] [bit] NOT NULL,
    [ManageWorkflows] [bit] NOT NULL,
    [ManageForms] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoKeyValue]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoKeyValue]
(
    [key] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [value] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [updated] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoServer]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoServer]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [address] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [computerName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [registeredDate] [datetime] NOT NULL,
    [lastNotifiedDate] [datetime] NOT NULL,
    [isActive] [bit] NOT NULL,
    [isMaster] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUser]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUser]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userDisabled] [bit] NOT NULL,
    [userNoConsole] [bit] NOT NULL,
    [userName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userLogin] [nvarchar](125) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userPassword] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [passwordConfig] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [userEmail] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userLanguage] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [securityStampToken] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [failedLoginAttempts] [int] NULL,
    [lastLockoutDate] [datetime] NULL,
    [lastPasswordChangeDate] [datetime] NULL,
    [lastLoginDate] [datetime] NULL,
    [emailConfirmedDate] [datetime] NULL,
    [invitedDate] [datetime] NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL,
    [avatar] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [tourData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUserStartNode]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUserStartNode]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userId] [int] NOT NULL,
    [startNode] [int] NOT NULL,
    [startNodeType] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsTemplate]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsTemplate]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [alias] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecordDataBit]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecordDataBit]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Key] [uniqueidentifier] NOT NULL,
    [Value] [bit] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoDomain]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoDomain]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [domainDefaultLanguage] [int] NULL,
    [domainRootStructureID] [int] NULL,
    [domainName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoRelationType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoRelationType]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [typeUniqueId] [uniqueidentifier] NOT NULL,
    [dual] [bit] NOT NULL,
    [parentObjectType] [uniqueidentifier] NOT NULL,
    [childObjectType] [uniqueidentifier] NOT NULL,
    [name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [alias] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUser2UserGroup]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUser2UserGroup]
(
    [userId] [int] NOT NULL,
    [userGroupId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsMacro]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsMacro]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [uniqueId] [uniqueidentifier] NOT NULL,
    [macroUseInEditor] [bit] NOT NULL,
    [macroRefreshRate] [int] NOT NULL,
    [macroAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macroName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [macroCacheByPage] [bit] NOT NULL,
    [macroCachePersonalized] [bit] NOT NULL,
    [macroDontRender] [bit] NOT NULL,
    [macroSource] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macroType] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFUserFormSecurity]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFUserFormSecurity]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [User] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Form] [uniqueidentifier] NOT NULL,
    [HasAccess] [bit] NOT NULL,
    [AllowInEditor] [bit] NOT NULL,
    [SecurityType] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoRelation]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoRelation]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [parentId] [int] NOT NULL,
    [childId] [int] NOT NULL,
    [relType] [int] NOT NULL,
    [datetime] [datetime] NOT NULL,
    [comment] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUserGroup]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUserGroup]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userGroupAlias] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userGroupName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userGroupDefaultPermissions] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL,
    [icon] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [startContentId] [int] NULL,
    [startMediaId] [int] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsMacroProperty]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsMacroProperty]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [uniquePropertyId] [uniqueidentifier] NOT NULL,
    [editorAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macro] [int] NOT NULL,
    [macroPropertySortOrder] [int] NOT NULL,
    [macroPropertyAlias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macroPropertyName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecordDataString]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecordDataString]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Key] [uniqueidentifier] NOT NULL,
    [Value] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoLock]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoLock]
(
    [id] [int] NOT NULL,
    [value] [int] NOT NULL,
    [name] [nvarchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoDocument]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoDocument]
(
    [nodeId] [int] NOT NULL,
    [published] [bit] NOT NULL,
    [edited] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUserGroup2App]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUserGroup2App]
(
    [userGroupId] [int] NOT NULL,
    [app] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[UFRecordFields]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[UFRecordFields]
(
    [Key] [uniqueidentifier] NOT NULL,
    [FieldId] [uniqueidentifier] NOT NULL,
    [Record] [int] NOT NULL,
    [Alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [DataType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsContentTypeAllowedContentType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType]
(
    [Id] [int] NOT NULL,
    [AllowedId] [int] NOT NULL,
    [SortOrder] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsTags]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsTags]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [group] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [languageId] [int] NULL,
    [tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoMediaVersion]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoMediaVersion]
(
    [id] [int] NOT NULL,
    [path] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsContentType2ContentType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsContentType2ContentType]
(
    [parentContentTypeId] [int] NOT NULL,
    [childContentTypeId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsContentType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsContentType]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [icon] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [thumbnail] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [description] [nvarchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [isContainer] [bit] NOT NULL,
    [isElement] [bit] NOT NULL,
    [allowAtRoot] [bit] NOT NULL,
    [variations] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsPropertyTypeGroup]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsPropertyTypeGroup]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [contenttypeNodeId] [int] NOT NULL,
    [text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [sortorder] [int] NOT NULL,
    [uniqueID] [uniqueidentifier] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsTagRelationship]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsTagRelationship]
(
    [nodeId] [int] NOT NULL,
    [tagId] [int] NOT NULL,
    [propertyTypeId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoContent]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoContent]
(
    [nodeId] [int] NOT NULL,
    [contentTypeId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsContentNu]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsContentNu]
(
    [nodeId] [int] NOT NULL,
    [published] [bit] NOT NULL,
    [data] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [rv] [bigint] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoDataType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoDataType]
(
    [nodeId] [int] NOT NULL,
    [propertyEditorAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [dbType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [config] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoUserLogin]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoUserLogin]
(
    [sessionId] [uniqueidentifier] NOT NULL,
    [userId] [int] NOT NULL,
    [loggedInUtc] [datetime] NOT NULL,
    [lastValidatedUtc] [datetime] NOT NULL,
    [loggedOutUtc] [datetime] NULL,
    [ipAddress] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[cmsPropertyType]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[cmsPropertyType]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [dataTypeId] [int] NOT NULL,
    [contentTypeId] [int] NOT NULL,
    [propertyTypeGroupId] [int] NULL,
    [Alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [sortOrder] [int] NOT NULL,
    [mandatory] [bit] NOT NULL,
    [validationRegExp] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Description] [nvarchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [variations] [int] NOT NULL,
    [UniqueID] [uniqueidentifier] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoNode]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoNode]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [uniqueId] [uniqueidentifier] NOT NULL,
    [parentId] [int] NOT NULL,
    [level] [int] NOT NULL,
    [path] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [sortOrder] [int] NOT NULL,
    [trashed] [bit] NOT NULL,
    [nodeUser] [int] NULL,
    [text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [nodeObjectType] [uniqueidentifier] NULL,
    [createDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoAudit]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoAudit]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [performingUserId] [int] NOT NULL,
    [performingDetails] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [performingIp] [nvarchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [eventDateUtc] [datetime] NOT NULL,
    [affectedUserId] [int] NOT NULL,
    [affectedDetails] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [eventType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [eventDetails] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoCacheInstruction]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoCacheInstruction]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [utcStamp] [datetime] NOT NULL,
    [jsonInstruction] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [originated] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [instructionCount] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoDocumentVersion]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoDocumentVersion]
(
    [id] [int] NOT NULL,
    [templateId] [int] NULL,
    [published] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoContentVersion]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoContentVersion]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [versionDate] [datetime] NOT NULL,
    [userId] [int] NULL,
    [current] [bit] NOT NULL,
    [text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoLog]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoLog]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userId] [int] NULL,
    [NodeId] [int] NOT NULL,
    [entityType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Datestamp] [datetime] NOT NULL,
    [logHeader] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [logComment] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [parameters] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113

PRINT N'CREATE TABLE [dbo].[umbracoPropertyData]'
GO -- SQRIBE/GO;03d113

-- SQRIBE/OBJ;03d113
CREATE TABLE [dbo].[umbracoPropertyData]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [versionId] [int] NOT NULL,
    [propertyTypeId] [int] NOT NULL,
    [languageId] [int] NULL,
    [segment] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [intValue] [int] NULL,
    [decimalValue] [decimal](38,6) NULL,
    [dateValue] [datetime] NULL,
    [varcharValue] [nvarchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [textValue] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;03d113
