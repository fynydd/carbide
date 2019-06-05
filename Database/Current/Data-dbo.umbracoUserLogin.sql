SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;9d5799

-- SQRIBE/TABLE;9d5799
-- Adding 9 rows to dbo.umbracoUserLogin

BEGIN TRANSACTION

-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('EA7E3908-08E5-4A5B-90E6-146F50CC2B76',-1,CONVERT(datetime,'2019-06-04 23:02:44.017',121),CONVERT(datetime,'2019-06-04 23:34:18.020',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('B446EA6D-2C53-40B2-8FE6-2B5049BA5EFC',-1,CONVERT(datetime,'2019-06-04 23:34:18.047',121),CONVERT(datetime,'2019-06-05 00:05:08.520',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('1974394E-DB64-4FFC-B905-4587F2E2BBD3',-1,CONVERT(datetime,'2019-06-05 02:07:59.313',121),CONVERT(datetime,'2019-06-05 02:07:59.313',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('48BEB553-94C9-47DB-B4D1-61E3BC1A7A4B',-1,CONVERT(datetime,'2019-06-05 00:05:08.777',121),CONVERT(datetime,'2019-06-05 02:07:59.043',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('C9F2C16B-7E55-46BE-A08B-A09710B91100',-1,CONVERT(datetime,'2019-05-29 22:29:41.070',121),CONVERT(datetime,'2019-05-30 01:50:24.997',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('7E108029-19AC-4F29-86B8-A785BE52D539',-1,CONVERT(datetime,'2019-06-05 02:07:59.143',121),CONVERT(datetime,'2019-06-05 02:07:59.143',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('DB5199A3-67DE-4961-894D-BC9102173231',-1,CONVERT(datetime,'2019-06-04 20:06:44.087',121),CONVERT(datetime,'2019-06-04 23:02:41.963',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('07BEFD45-069B-40CF-B690-DF40EC2D9647',-1,CONVERT(datetime,'2019-06-04 19:23:28.363',121),CONVERT(datetime,'2019-06-04 20:06:44.070',121),CONVERT(datetime,NULL,121),N'10.0.11.1');
-- SQRIBE/INSERT;9d5799
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('1A54425B-5251-45F1-A48C-E165EA15358E',-1,CONVERT(datetime,'2019-05-30 01:50:28.037',121),CONVERT(datetime,'2019-05-30 02:04:36.930',121),CONVERT(datetime,NULL,121),N'10.0.11.1');

COMMIT TRANSACTION

