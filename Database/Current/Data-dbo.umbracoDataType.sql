SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;03d113

-- SQRIBE/TABLE;03d113
-- Adding 49 rows to dbo.umbracoDataType

BEGIN TRANSACTION

-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-99,N'Umbraco.Label',N'Decimal',N'{"umbracoDataValueType":"DECIMAL"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-98,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"TIME"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-97,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-96,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-95,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100,"orderBy":"updateDate","orderDirection":"asc","includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"Grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Components"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-94,N'Umbraco.Label',N'Date',N'{"umbracoDataValueType":"DATETIME"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-93,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"BIGINT"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-92,N'Umbraco.Label',N'Nvarchar',N'{"umbracoDataValueType":"STRING"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-91,N'Umbraco.Label',N'Integer',N'{"umbracoDataValueType":"INT"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-90,N'Umbraco.UploadField',N'Nvarchar',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-89,N'Umbraco.TextArea',N'Ntext',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-88,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-87,N'Umbraco.TinyMCE',N'Ntext',N'{"editor":{"toolbar":["ace","styleselect","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmacro","umbembeddialog"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-51,N'Umbraco.Integer',N'Integer',N'{"min":0,"step":1}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-49,N'Umbraco.TrueFalse',N'Integer',N'{"default":"1","labelOn":null}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-43,N'Umbraco.CheckBoxList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-42,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":true}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-41,N'Umbraco.DateTime',N'Date',N'{"format":"YYYY-MM-DD"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-40,N'Umbraco.RadioButtonList',N'Nvarchar',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-39,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":false}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-37,N'Umbraco.ColorPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (-36,N'Umbraco.DateTime',N'Date',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1041,N'Umbraco.Tags',N'Nvarchar',N'{"group":"Pages","storageType":0,"Delimiter":"\u0000"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1043,N'Umbraco.ImageCropper',N'Ntext',N'{"crops":[{"alias":"SocialSharing","width":1200,"height":628}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1046,N'Umbraco.ContentPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1047,N'Umbraco.MemberPicker',N'Nvarchar',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1048,N'Umbraco.MediaPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1049,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":1}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1050,N'Umbraco.MultiUrlPicker',N'Ntext',NULL);
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1062,N'Umbraco.TinyMCE',N'Ntext',N'{"editor":{"toolbar":["ace","styleselect","bold","italic","bullist","numlist","link","umbmediapicker","umbmacro","umbembeddialog","hr","subscript","superscript","charmap"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1064,N'Umbraco.ContentPicker',N'Nvarchar',N'{"showOpenButton":false,"startNodeId":null}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1065,N'Umbraco.TextBox',N'Nvarchar',N'{}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1066,N'Umbraco.NestedContent',N'Ntext',N'{"contentTypes":[{"ncAlias":"carbideSimpleHeroFrame","ncTabAlias":"Frame Content","nameTemplate":"{{title}}"}],"minItems":1,"confirmDeletes":true,"showIcons":true,"hideLabel":false}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1067,N'Umbraco.Integer',N'Integer',N'{"min":1000,"step":250}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1068,N'Umbraco.Integer',N'Integer',N'{"min":250,"step":50}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1070,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":false,"onlyImages":true,"disableFolderSelect":true,"startNodeId":null}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1092,N'Carbide.StaticText',N'Ntext',N'{"defaultValue":"<p>For each breakpoint, enter any CSS custom property variables to override the appearance. See the <strong>Bolide Help</strong> (upper right corner of the screen) for more information on customizing the appearance and content of the site and each unit.</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1097,N'Umbraco.RadioButtonList',N'Nvarchar',N'{"items":[{"id":1,"value":"h1"},{"id":2,"value":"h2"},{"id":3,"value":"h3"},{"id":4,"value":"h4"},{"id":5,"value":"h5"},{"id":6,"value":"h6"}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1100,N'Carbide.StaticText',N'Ntext',N'{"defaultValue":"<h4>Optional Button</strong></h4>\n<p>Display a button below the rich content.</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1111,N'Carbide.StaticText',N'Ntext',N'{"defaultValue":"<h4>Metadata</h4>\n<p>\nThe following is rendered as hidden page metadata, which can help web search findability.\n</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1114,N'Carbide.StaticText',N'Ntext',N'{"defaultValue":"<h4>Social Network Info</h4>\n<p>\nThe following items are used for social network sharing and links.\n</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1115,N'Umbraco.DropDown.Flexible',N'Nvarchar',N'{"multiple":false,"items":[{"id":1,"value":"website"},{"id":2,"value":"article"},{"id":3,"value":"book"},{"id":4,"value":"profile"},{"id":5,"value":"music.song"},{"id":6,"value":"music.album"},{"id":7,"value":"music.playlist"},{"id":8,"value":"music.radio_station"},{"id":9,"value":"video.movie"},{"id":10,"value":"video.episode"},{"id":11,"value":"video.tv_show"},{"id":12,"value":"video.other"}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1116,N'Umbraco.ImageCropper',N'Ntext',N'{"crops":[{"alias":"WebsiteAvatar","width":512,"height":512},{"alias":"Icon180","width":180,"height":180},{"alias":"Icon32","width":32,"height":32},{"alias":"Icon16","width":16,"height":16},{"alias":"Icon48","width":48,"height":48},{"alias":"Icon64","width":64,"height":64},{"alias":"Icon192","width":192,"height":192},{"alias":"Icon144","width":144,"height":144},{"alias":"Icon150","width":150,"height":150},{"alias":"Icon70","width":70,"height":70}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1126,N'Umbraco.MediaPicker',N'Ntext',N'{"multiPicker":false,"onlyImages":true,"disableFolderSelect":true,"startNodeId":null}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1128,N'Carbide.StaticText',N'Ntext',N'{"defaultValue":"<h4>Unit Container</h4>\n<p>\nUse unit containers to create spaced areas for like subunit content. Add to your page and then add subunits as children.\n</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1134,N'Umbraco.RadioButtonList',N'Nvarchar',N'{"items":[{"id":1,"value":"Primary"},{"id":2,"value":"Footer"}]}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1139,N'Carbide.StaticText',N'Ntext',N'{"defaultValue":"<h4>Page Tags</h4>\n<p>\nTagging the page allows you to group like pages with one or more categories. This affects things like page search and portfolio/gallery views.\n</p>\n<h5>Tags already in-use:</h5>\n<p>\n{{tags:Pages}}\n</p>","fullWidth":"1"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1149,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100,"orderBy":"sortOrder","orderDirection":"asc","includeProperties":[{"alias":"sortOrder","header":null,"isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"tags","header":"Tags","isSystem":0}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Pages"}');
-- SQRIBE/INSERT;03d113
INSERT INTO [dbo].[umbracoDataType] ([nodeId],[propertyEditorAlias],[dbType],[config]) VALUES (1151,N'Umbraco.ListView',N'Nvarchar',N'{"pageSize":100,"orderBy":"name","orderDirection":"asc","includeProperties":[{"alias":"sortOrder","header":null,"isSystem":1},{"alias":"tags","header":"Tags","isSystem":0},{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Created by","isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"tabName":"Pages"}');

COMMIT TRANSACTION

