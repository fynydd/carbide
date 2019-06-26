﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;0caaa3

-- SQRIBE/TABLE;0caaa3
-- Adding 44 rows to dbo.umbracoDataType

BEGIN TRANSACTION

-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-99,N'Umbraco.Label',N'Decimal',N'{"umbracoDataValueType":"DECIMAL"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-98,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"TIME"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-97,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-96,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-95,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100,"orderBy":"updateDate","orderDirection":"asc","includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"Grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Components"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-94,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"DATETIME"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-93,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"BIGINT"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-92,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"STRING"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-91,N'Umbraco.Label',N'Integer',N'{"umbracoDataValueType":"INT"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-90,N'Umbraco.UploadField',N'Nvarchar',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-89,N'Umbraco.TextArea',N'Ntext',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-88,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-87,N'Umbraco.TinyMCE',N'Ntext',N'{"value":",code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-51,N'Umbraco.Integer',N'Integer',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-49,N'Umbraco.TrueFalse',N'Integer',N'{"default":"1","labelOn":null}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-43,N'Umbraco.CheckBoxList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-42,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":true}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-41,N'Umbraco.DateTime',N'Date',N'{"format":"YYYY-MM-DD"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-40,N'Umbraco.RadioButtonList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-39,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":false}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-37,N'Umbraco.ColorPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-36,N'Umbraco.DateTime',N'Date',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1041,N'Umbraco.Tags',N'Ntext',N'{"group":"default", "storageType":"Json"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1043,N'Umbraco.ImageCropper',N'Ntext',N'{"crops":[{"alias":"SocialSharing","width":1200,"height":800}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1046,N'Umbraco.ContentPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1047,N'Umbraco.MemberPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1048,N'Umbraco.MediaPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1049,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":1}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1050,N'Umbraco.MultiUrlPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1062,N'Umbraco.TinyMCE',N'Ntext',N'{"editor":{"toolbar":["ace","styleselect","bold","italic","bullist","numlist","link","umbmediapicker","umbmacro","umbembeddialog","hr","subscript","superscript","charmap"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1064,N'Umbraco.ContentPicker',N'Nvarchar',N'{"showOpenButton":false,"startNodeId":null}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1065,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1066,N'Umbraco.NestedContent',N'Ntext',N'{"contentTypes":[{"ncAlias":"bolideSimpleHeroFrame","ncTabAlias":"Frame Content","nameTemplate":"{{title}}"}],"minItems":1,"confirmDeletes":true,"showIcons":true,"hideLabel":false}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1067,N'Umbraco.Integer',N'Integer',N'{"min":1000,"step":250}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1068,N'Umbraco.Integer',N'Integer',N'{"min":250,"step":50}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1070,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":false,"onlyImages":true,"disableFolderSelect":true,"startNodeId":null}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1082,N'Umbraco.MultiNodeTreePicker',N'Ntext',N'{"startNode":{"type":"content","query":"$current/ancestor-or-self::*[self::homepage]/components","id":null},"filter":"bolideSimpleHero","minNumber":0,"maxNumber":0,"showOpenButton":true}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1084,N'Umbraco.NestedContent',N'Ntext',N'{"contentTypes":[{"ncAlias":"componentPicker","ncTabAlias":"Content","nameTemplate":"{{contentName}}"},{"ncAlias":"bolideRichContent","ncTabAlias":"Content","nameTemplate":"{{contentName}}"}],"confirmDeletes":true,"showIcons":true,"hideLabel":false}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1090,N'Bolide.StaticText',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1092,N'Bolide.StaticText',N'Ntext',N'{"defaultValue":"<p>For each breakpoint, enter any CSS custom property variables to override the appearance. See the <strong>Bolide Help</strong> (upper right corner of the screen) for more information on customizing the appearance and content of the site and each unit.</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1097,N'Umbraco.RadioButtonList',N'Nvarchar',N'{"items":[{"id":1,"value":"h1"},{"id":2,"value":"h2"},{"id":3,"value":"h3"},{"id":4,"value":"h4"},{"id":5,"value":"h5"},{"id":6,"value":"h6"}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1099,N'Umbraco.RadioButtonList',N'Nvarchar',N'{"items":[{"id":1,"value":"Left"},{"id":2,"value":"Center"},{"id":3,"value":"Right"}]}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1100,N'Bolide.StaticText',N'Ntext',N'{"defaultValue":"<h4>Optional Button</strong></h4>\n<p>Display a button below the rich content.</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;0caaa3
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1108,N'Bolide.StaticText',N'Ntext',N'{"defaultValue":"<hr />\n<p>\n<strong>Optional Button</strong><br />\nAdd a button to the bottom of your rich content unit.\n</p>","fullWidth":"1"}');

COMMIT TRANSACTION

