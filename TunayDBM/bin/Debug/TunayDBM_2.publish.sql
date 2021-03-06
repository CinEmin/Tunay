﻿/*
Deployment script for TunayDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "TunayDB"
:setvar DefaultFilePrefix "TunayDB"
:setvar DefaultDataPath "C:\Users\eciftci\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\eciftci\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
/*
The column [dbo].[ProductPackage].[isInDrum] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[isInPallet] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[isInTank] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[PackageType] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProductPackage])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProductQuality].[AcidityAvg] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[AcidityMax] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[AcidityMin] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[AcidityTypeId] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[BrixAvg] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[BrixMax] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[BrixMin] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[isPuree] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[PhAvg] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[PhMax] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[PhMin] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductQuality].[ProductPropertyId] on table [dbo].[ProductQuality] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProductQuality])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Rename refactoring operation with key 61345eaf-2147-470e-9172-855c881d460d is skipped, element [dbo].[ProductQuality].[AcidityType] (SqlSimpleColumn) will not be renamed to AcidityTypeId';


GO
PRINT N'The following operation was generated from a refactoring log file e7e3db4d-6109-4e44-8c19-e6a8cfd12a33';

PRINT N'Rename [dbo].[ProductPackage].[Id] to ProductPackageId';


GO
EXECUTE sp_rename @objname = N'[dbo].[ProductPackage].[Id]', @newname = N'ProductPackageId', @objtype = N'COLUMN';


GO
PRINT N'The following operation was generated from a refactoring log file 205f2914-4abb-423f-9f23-3c77ef1b9a55';

PRINT N'Rename [dbo].[ProductProperty].[Id] to ProductPropertyId';


GO
EXECUTE sp_rename @objname = N'[dbo].[ProductProperty].[Id]', @newname = N'ProductPropertyId', @objtype = N'COLUMN';


GO
PRINT N'The following operation was generated from a refactoring log file 1cffa8a5-dd0c-4ee7-9e39-5fd210f2b0e6';

PRINT N'Rename [dbo].[ProductQuality].[Id] to ProductQualityId';


GO
EXECUTE sp_rename @objname = N'[dbo].[ProductQuality].[Id]', @newname = N'ProductQualityId', @objtype = N'COLUMN';


GO
PRINT N'Rename refactoring operation with key fe387894-6099-4d50-8447-d30c68ac0c83 is skipped, element [dbo].[ProductPackage].[DrumType] (SqlSimpleColumn) will not be renamed to PackageType';


GO
PRINT N'Rename refactoring operation with key ac155ace-aa9a-4f6b-81d9-fcff4b839bc1 is skipped, element [dbo].[ProductPackage].[TotalDrumNumber] (SqlSimpleColumn) will not be renamed to TotalDrumCount';


GO
PRINT N'Rename refactoring operation with key 042f2e95-df2e-44d2-9b22-857d5a65537b is skipped, element [dbo].[ProductQuality].[BrixMid] (SqlSimpleColumn) will not be renamed to BrixAvg';


GO
PRINT N'Rename refactoring operation with key fb39ef49-0e8c-4326-b9b8-33187edbba89 is skipped, element [dbo].[ProductQuality].[AcidityType] (SqlSimpleColumn) will not be renamed to AcidityTypeId';


GO
PRINT N'Rename refactoring operation with key 600f6abe-6ad2-49a7-891f-f339b288d484 is skipped, element [dbo].[AcidityType].[Id] (SqlSimpleColumn) will not be renamed to AcidityTypeId';


GO
PRINT N'Rename refactoring operation with key 94bdad74-fb7c-441b-901c-9d4640481410, e736c13d-e47e-403d-856f-f84b4ecb39e8 is skipped, element [dbo].[ProductQuality].[LMax] (SqlSimpleColumn) will not be renamed to HunterLMin';


GO
PRINT N'Rename refactoring operation with key 899a03d2-fca3-4a3f-ad01-f076844f7e1f, 8e37048c-d79c-4cb7-949f-a5a78ecde497 is skipped, element [dbo].[ProductQuality].[aMax] (SqlSimpleColumn) will not be renamed to HunterLMax';


GO
PRINT N'Rename refactoring operation with key 8ee06832-a8a8-416f-ae18-4745362695b8 is skipped, element [dbo].[ProductQuality].[HunterBMax] (SqlSimpleColumn) will not be renamed to HunterLAvg';


GO
PRINT N'Dropping [dbo].[FK_ProductProperty_ProductPackage]...';


GO
ALTER TABLE [dbo].[ProductProperty] DROP CONSTRAINT [FK_ProductProperty_ProductPackage];


GO
PRINT N'Dropping [dbo].[FK_ProductProperty_ProductQuality]...';


GO
ALTER TABLE [dbo].[ProductProperty] DROP CONSTRAINT [FK_ProductProperty_ProductQuality];


GO
PRINT N'Starting rebuilding table [dbo].[ProductPackage]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProductPackage] (
    [ProductPackageId]     INT            IDENTITY (1, 1) NOT NULL,
    [PackageType]          NVARCHAR (50)  NOT NULL,
    [isInTank]             BIT            NOT NULL,
    [TankId]               INT            NULL,
    [isInDrum]             BIT            NOT NULL,
    [StartingDrumNumber]   INT            NULL,
    [EndingDrumNumber]     INT            NULL,
    [TotalDrumCount]       INT            NULL,
    [isInPallet]           BIT            NOT NULL,
    [StartingPalletNumber] INT            NULL,
    [EndingPalletNumber]   INT            NULL,
    [TotalPalletCount]     INT            NULL,
    [ProductPackageNote]   NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([ProductPackageId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProductPackage])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProductPackage] ON;
        INSERT INTO [dbo].[tmp_ms_xx_ProductPackage] ([ProductPackageId])
        SELECT   [ProductPackageId]
        FROM     [dbo].[ProductPackage]
        ORDER BY [ProductPackageId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProductPackage] OFF;
    END

DROP TABLE [dbo].[ProductPackage];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProductPackage]', N'ProductPackage';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProductQuality]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProductQuality] (
    [ProductQualityId]  INT        IDENTITY (1, 1) NOT NULL,
    [ProductPropertyId] INT        NOT NULL,
    [BrixMin]           FLOAT (53) NOT NULL,
    [BrixMax]           FLOAT (53) NOT NULL,
    [BrixAvg]           FLOAT (53) NOT NULL,
    [AcidityTypeId]     INT        NOT NULL,
    [AcidityMin]        FLOAT (53) NOT NULL,
    [AcidityMax]        FLOAT (53) NOT NULL,
    [AcidityAvg]        FLOAT (53) NOT NULL,
    [PhMin]             FLOAT (53) NOT NULL,
    [PhMax]             FLOAT (53) NOT NULL,
    [PhAvg]             FLOAT (53) NOT NULL,
    [isPuree]           BIT        NOT NULL,
    [HunterLMin]        FLOAT (53) NULL,
    [HunterLMax]        FLOAT (53) NULL,
    [HunterLAvg]        FLOAT (53) NULL,
    [HunerAMin]         FLOAT (53) NULL,
    [HunterAMax]        FLOAT (53) NULL,
    [HunterAAvg]        FLOAT (53) NULL,
    [HunterBMin]        FLOAT (53) NULL,
    [HunterBMax]        FLOAT (53) NULL,
    [HunterBAvg]        FLOAT (53) NULL,
    PRIMARY KEY CLUSTERED ([ProductQualityId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProductQuality])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProductQuality] ON;
        INSERT INTO [dbo].[tmp_ms_xx_ProductQuality] ([ProductQualityId])
        SELECT   [ProductQualityId]
        FROM     [dbo].[ProductQuality]
        ORDER BY [ProductQualityId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProductQuality] OFF;
    END

DROP TABLE [dbo].[ProductQuality];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProductQuality]', N'ProductQuality';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating [dbo].[AcidityType]...';


GO
CREATE TABLE [dbo].[AcidityType] (
    [AcidityTypeId] INT           NOT NULL,
    [AcidityType]   NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([AcidityTypeId] ASC)
);


GO
PRINT N'Creating [dbo].[FK_ProductProperty_ProductPackage]...';


GO
ALTER TABLE [dbo].[ProductProperty] WITH NOCHECK
    ADD CONSTRAINT [FK_ProductProperty_ProductPackage] FOREIGN KEY ([ProductPackageId]) REFERENCES [dbo].[ProductPackage] ([ProductPackageId]);


GO
PRINT N'Creating [dbo].[FK_ProductProperty_ProductQuality]...';


GO
ALTER TABLE [dbo].[ProductProperty] WITH NOCHECK
    ADD CONSTRAINT [FK_ProductProperty_ProductQuality] FOREIGN KEY ([ProductQualityId]) REFERENCES [dbo].[ProductQuality] ([ProductQualityId]);


GO
PRINT N'Creating [dbo].[FK_ProductQuality_AcidityType]...';


GO
ALTER TABLE [dbo].[ProductQuality] WITH NOCHECK
    ADD CONSTRAINT [FK_ProductQuality_AcidityType] FOREIGN KEY ([AcidityTypeId]) REFERENCES [dbo].[AcidityType] ([AcidityTypeId]);


GO
-- Refactoring step to update target server with deployed transaction logs

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'e7e3db4d-6109-4e44-8c19-e6a8cfd12a33')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('e7e3db4d-6109-4e44-8c19-e6a8cfd12a33')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '205f2914-4abb-423f-9f23-3c77ef1b9a55')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('205f2914-4abb-423f-9f23-3c77ef1b9a55')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '1cffa8a5-dd0c-4ee7-9e39-5fd210f2b0e6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('1cffa8a5-dd0c-4ee7-9e39-5fd210f2b0e6')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fe387894-6099-4d50-8447-d30c68ac0c83')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fe387894-6099-4d50-8447-d30c68ac0c83')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ac155ace-aa9a-4f6b-81d9-fcff4b839bc1')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ac155ace-aa9a-4f6b-81d9-fcff4b839bc1')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '042f2e95-df2e-44d2-9b22-857d5a65537b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('042f2e95-df2e-44d2-9b22-857d5a65537b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '61345eaf-2147-470e-9172-855c881d460d')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('61345eaf-2147-470e-9172-855c881d460d')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fb39ef49-0e8c-4326-b9b8-33187edbba89')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fb39ef49-0e8c-4326-b9b8-33187edbba89')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '600f6abe-6ad2-49a7-891f-f339b288d484')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('600f6abe-6ad2-49a7-891f-f339b288d484')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '94bdad74-fb7c-441b-901c-9d4640481410')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('94bdad74-fb7c-441b-901c-9d4640481410')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '899a03d2-fca3-4a3f-ad01-f076844f7e1f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('899a03d2-fca3-4a3f-ad01-f076844f7e1f')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'e736c13d-e47e-403d-856f-f84b4ecb39e8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('e736c13d-e47e-403d-856f-f84b4ecb39e8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '8e37048c-d79c-4cb7-949f-a5a78ecde497')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('8e37048c-d79c-4cb7-949f-a5a78ecde497')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '8ee06832-a8a8-416f-ae18-4745362695b8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('8ee06832-a8a8-416f-ae18-4745362695b8')

GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[ProductProperty] WITH CHECK CHECK CONSTRAINT [FK_ProductProperty_ProductPackage];

ALTER TABLE [dbo].[ProductProperty] WITH CHECK CHECK CONSTRAINT [FK_ProductProperty_ProductQuality];

ALTER TABLE [dbo].[ProductQuality] WITH CHECK CHECK CONSTRAINT [FK_ProductQuality_AcidityType];


GO
PRINT N'Update complete.';


GO
