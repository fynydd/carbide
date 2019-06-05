﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 5 rows to dbo.umbracoMediaVersion

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoMediaVersion] ([id],[path]) VALUES (3,NULL);
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoMediaVersion] ([id],[path]) VALUES (4,N'/media/ozwf5in5/argentini-street-sign.png');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoMediaVersion] ([id],[path]) VALUES (7,N'/media/s3mlewii/03756_mountcooksunset_5120x2880.jpg');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoMediaVersion] ([id],[path]) VALUES (9,N'/media/1eycjz0v/03560_thetopangagradient_5120x2880.jpg');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoMediaVersion] ([id],[path]) VALUES (11,N'/media/qwqf44ny/03588_morrainelake_5120x2880.jpg');

COMMIT TRANSACTION

