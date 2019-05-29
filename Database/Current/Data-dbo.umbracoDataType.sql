SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;528484

-- SQRIBE/TABLE;528484
-- Adding 40 rows to dbo.umbracoDataType

BEGIN TRANSACTION

-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-99,N'Umbraco.Label',N'Decimal',N'{"umbracoDataValueType":"DECIMAL"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-98,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"TIME"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-97,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-96,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-95,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-94,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"DATETIME"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-93,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"BIGINT"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-92,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"STRING"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-91,N'Umbraco.Label',N'Integer',N'{"umbracoDataValueType":"INT"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-90,N'Umbraco.UploadField',N'Nvarchar',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-89,N'Umbraco.TextArea',N'Ntext',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-88,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-87,N'Umbraco.TinyMCE',N'Ntext',N'{"editor":{"toolbar":["ace","styleselect","bold","italic","bullist","numlist","umbmacro","subscript","superscript","charmap","removeformat"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-51,N'Umbraco.Integer',N'Integer',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-49,N'Umbraco.TrueFalse',N'Integer',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-43,N'Umbraco.CheckBoxList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-42,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":true}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-41,N'Umbraco.DateTime',N'Date',N'{"format":"YYYY-MM-DD HH:mm:ss","offsetTime":false}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-40,N'Umbraco.RadioButtonList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-39,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":false}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-37,N'Umbraco.ColorPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-36,N'Umbraco.DateTime',N'Date',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1041,N'Umbraco.Tags',N'Ntext',N'{"group":"default", "storageType":"Json"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1043,N'Umbraco.ImageCropper',N'Ntext',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1046,N'Umbraco.ContentPicker',N'Nvarchar',N'{"showOpenButton":false,"startNodeId":null}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1047,N'Umbraco.MemberPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1048,N'Umbraco.MediaPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1049,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":1}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1050,N'Umbraco.MultiUrlPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1053,N'Umbraco.RadioButtonList',N'Nvarchar',N'{"items":[{"id":1,"value":"Unspecified"},{"id":2,"value":"Male"},{"id":3,"value":"Female"}]}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1057,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":50,"orderBy":"lastName","orderDirection":"asc","includeProperties":[{"alias":"lastName","header":"Last Name","isSystem":0},{"alias":"firstName","header":"First Name","isSystem":0},{"alias":"gender","header":"Gender","isSystem":0},{"alias":"legacyId","header":"Legacy ID","isSystem":0},{"alias":"updateDate","header":"Last edited","isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":false}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"People"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1059,N'Umbraco.ContentPicker',N'Nvarchar',N'{"showOpenButton":false,"startNodeId":"umb://document/4b5e64d07dfa4873999c35aa4d24550e"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1061,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":50,"orderBy":"name","orderDirection":"asc","includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":false}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Sources"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1064,N'Umbraco.ContentPicker',N'Nvarchar',N'{"showOpenButton":false,"startNodeId":"umb://document/987b24cec46842e58b0f8074582fd295"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (5896,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"STRING"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (9526,N'DuplicateQuoteFinderDataType',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (21635,N'Umbraco.ImageCropper',N'Ntext',N'{"crops":[{"alias":"Square","width":640,"height":640}]}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (21636,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":50,"orderBy":"updateDate","orderDirection":"asc","includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"year","header":"Year","isSystem":0}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Quotations"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (21637,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"STRING"}');
-- SQRIBE/INSERT;528484
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (21638,N'Umbraco.Label',N'Ntext',N'{"umbracoDataValueType":"TEXT"}');

COMMIT TRANSACTION

