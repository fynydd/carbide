SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 42 rows to dbo.umbracoDataType

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-99,N'Umbraco.Label',N'Decimal',N'{"umbracoDataValueType":"DECIMAL"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-98,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"TIME"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-97,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-96,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-95,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100,"orderBy":"updateDate","orderDirection":"asc","includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"Grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Components"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-94,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"DATETIME"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-93,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"BIGINT"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-92,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"STRING"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-91,N'Umbraco.Label',N'Integer',N'{"umbracoDataValueType":"INT"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-90,N'Umbraco.UploadField',N'Nvarchar',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-89,N'Umbraco.TextArea',N'Ntext',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-88,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-87,N'Umbraco.TinyMCE',N'Ntext',N'{"value":",code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-51,N'Umbraco.Integer',N'Integer',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-49,N'Umbraco.TrueFalse',N'Integer',N'{"default":"1","labelOn":null}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-43,N'Umbraco.CheckBoxList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-42,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":true}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-41,N'Umbraco.DateTime',N'Date',N'{"format":"YYYY-MM-DD"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-40,N'Umbraco.RadioButtonList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-39,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":false}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-37,N'Umbraco.ColorPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-36,N'Umbraco.DateTime',N'Date',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1041,N'Umbraco.Tags',N'Ntext',N'{"group":"default", "storageType":"Json"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1043,N'Umbraco.ImageCropper',N'Ntext',N'{"crops":[{"alias":"SocialSharing","width":1200,"height":800}]}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1046,N'Umbraco.ContentPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1047,N'Umbraco.MemberPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1048,N'Umbraco.MediaPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1049,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":1}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1050,N'Umbraco.MultiUrlPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1062,N'Umbraco.TinyMCE',N'Ntext',N'{"editor":{"toolbar":["ace","styleselect","bold","italic","bullist","numlist","link","umbmediapicker","umbmacro","umbembeddialog","hr","subscript","superscript","charmap"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1064,N'Umbraco.ContentPicker',N'Nvarchar',N'{"showOpenButton":false,"startNodeId":null}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1065,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1066,N'Umbraco.NestedContent',N'Ntext',N'{"contentTypes":[{"ncAlias":"bolideSimpleHeroFrame","ncTabAlias":"Frame Content","nameTemplate":"{{simpleHeroTitle}}"}],"minItems":1,"confirmDeletes":true,"showIcons":true,"hideLabel":true}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1067,N'Umbraco.Integer',N'Integer',N'{"min":1000,"step":250}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1068,N'Umbraco.Integer',N'Integer',N'{"min":250,"step":50}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1070,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":false,"onlyImages":true,"disableFolderSelect":true,"startNodeId":null}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1074,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1082,N'Umbraco.MultiNodeTreePicker',N'Ntext',N'{"startNode":{"type":"content","query":"$current/ancestor-or-self::*[self::homepage]/components","id":null},"filter":"bolideSimpleHero","minNumber":0,"maxNumber":0,"showOpenButton":true}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1084,N'Umbraco.NestedContent',N'Ntext',N'{"contentTypes":[{"ncAlias":"componentPicker","ncTabAlias":"Content","nameTemplate":"{{contentName}}"}],"confirmDeletes":true,"showIcons":true,"hideLabel":false}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1090,N'Bolide.StaticText',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1091,N'Bolide.StaticText',N'Ntext',N'{"defaultValue":"<p>Below are the <strong>CSS custom properties</strong> with sample data for the simple hero component:</p>\n<p>\n--content-align: center;<br />\n--content-width: 1/2;<br />\n--content-push: 1/4;<br />\n--min-height: 25rem;<br />\n--max-height: 25rem;<br />\n--vertical-padding: 3rem;<br />\n--headline-bottom-spacer: 1rem;<br />\n--headline-shadow-color: rgba(0, 0, 0, 0.35);<br />\n--content-bottom-spacer: 2rem;<br />\n--content-shadow-color: rgba(0, 0, 0, 0.5);<br />\n--button-bottom-spacer: 2rem;<br />\n--nodes-display: block;<br />\n--nodes-align: center;<br />\n--nodes-top-spacer: 1rem;<br />\n--nodes-shadow-color: rgba(0, 0, 0, 0.25);<br />\n--dimmer-width: 100%;<br />\n--dimmer-height: 100%;<br />\n--dimmer-angle: 90deg;<br />\n--dimmer-fade-color-start: rgba(0,0,0,0);<br />\n--dimmer-fade-position-start: 35%;<br />\n--dimmer-fade-color-middle: rgba(0,0,0,0);<br />\n--dimmer-fade-position-middle: 50%;<br />\n--dimmer-fade-color-end: rgba(0,0,0,0);<br />\n--dimmer-fade-position-end: 65%;\n</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1092,N'Bolide.StaticText',N'Ntext',N'{"defaultValue":"<p>For each breakpoint, enter any CSS custom property variables to override the appearance of the component.</p>","fullWidth":"1"}');

COMMIT TRANSACTION

