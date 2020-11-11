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
The column [dbo].[ProductPackage].[DateCreated] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[DateUpdated] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[isDeleted] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[ProductPropertyId] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[UserCreated] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductPackage].[UserUpdated] on table [dbo].[ProductPackage] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProductPackage])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProductProperty].[DateCreated] on table [dbo].[ProductProperty] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductProperty].[DateUpdated] on table [dbo].[ProductProperty] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductProperty].[isDeleted] on table [dbo].[ProductProperty] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductProperty].[ProductQualityPhysicalId] on table [dbo].[ProductProperty] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductProperty].[UserCreated] on table [dbo].[ProductProperty] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column [dbo].[ProductProperty].[UserUpdated] on table [dbo].[ProductProperty] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProductProperty])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Rename refactoring operation with key da47bb5f-4e42-4d66-bf57-5b4b362bf5ba is skipped, element [dbo].[ProductQuality].[Abs520Max] (SqlSimpleColumn) will not be renamed to Abs520Min';


GO
PRINT N'Rename refactoring operation with key 15b11b53-7c26-4e29-8c4c-5fa4ec9e0983 is skipped, element [dbo].[ProductQuality].[Abs520] (SqlSimpleColumn) will not be renamed to Abs520Max';


GO
PRINT N'The following operation was generated from a refactoring log file 427037d8-6480-4f54-b30b-d20a82e082a7';

PRINT N'Rename [dbo].[ProductQuality].[ProductQualityId] to ProductQualityChemicalId';


GO
EXECUTE sp_rename @objname = N'[dbo].[ProductQuality].[ProductQualityId]', @newname = N'ProductQualityChemicalId', @objtype = N'COLUMN';


GO
PRINT N'The following operation was generated from a refactoring log file 5cd60749-dcdb-4ba7-a0c4-5053840191ae';

PRINT N'Rename [dbo].[ProductProperty].[ProductQualityId] to ProductQualityChemicalId';


GO
EXECUTE sp_rename @objname = N'[dbo].[ProductProperty].[ProductQualityId]', @newname = N'ProductQualityChemicalId', @objtype = N'COLUMN';


GO
PRINT N'Rename refactoring operation with key fccdaa73-9fb4-4443-b8cc-3a39d38effd0 is skipped, element [dbo].[ProductQualityPhysical].[Id] (SqlSimpleColumn) will not be renamed to ProductQualityPhysicalId';


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
    [ProductPropertyId]    INT            NOT NULL,
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
    [DateCreated]          DATETIME       NOT NULL,
    [UserCreated]          INT            NOT NULL,
    [DateUpdated]          DATETIME       NOT NULL,
    [UserUpdated]          INT            NOT NULL,
    [DateDeleted]          DATETIME       NULL,
    [UserDeleted]          INT            NULL,
    [isDeleted]            BIT            NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductPackageId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProductPackage])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProductPackage] ON;
        INSERT INTO [dbo].[tmp_ms_xx_ProductPackage] ([ProductPackageId], [PackageType], [isInTank], [TankId], [isInDrum], [StartingDrumNumber], [EndingDrumNumber], [TotalDrumCount], [isInPallet], [StartingPalletNumber], [EndingPalletNumber], [TotalPalletCount], [ProductPackageNote])
        SELECT   [ProductPackageId],
                 [PackageType],
                 [isInTank],
                 [TankId],
                 [isInDrum],
                 [StartingDrumNumber],
                 [EndingDrumNumber],
                 [TotalDrumCount],
                 [isInPallet],
                 [StartingPalletNumber],
                 [EndingPalletNumber],
                 [TotalPalletCount],
                 [ProductPackageNote]
        FROM     [dbo].[ProductPackage]
        ORDER BY [ProductPackageId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProductPackage] OFF;
    END

DROP TABLE [dbo].[ProductPackage];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProductPackage]', N'ProductPackage';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Altering [dbo].[ProductProperty]...';


GO
ALTER TABLE [dbo].[ProductProperty]
    ADD [ProductQualityPhysicalId] INT      NOT NULL,
        [DateCreated]              DATETIME NOT NULL,
        [UserCreated]              INT      NOT NULL,
        [DateUpdated]              DATETIME NOT NULL,
        [UserUpdated]              INT      NOT NULL,
        [DateDeleted]              DATETIME NULL,
        [UserDeleted]              INT      NULL,
        [isDeleted]                BIT      NOT NULL;


GO
PRINT N'Creating [dbo].[ProductQualityChemical]...';


GO
CREATE TABLE [dbo].[ProductQualityChemical] (
    [ProductQualityChemicalId] INT        IDENTITY (1, 1) NOT NULL,
    [ProductPropertyId]        INT        NOT NULL,
    [BrixMin]                  FLOAT (53) NOT NULL,
    [BrixMax]                  FLOAT (53) NOT NULL,
    [BrixAvg]                  FLOAT (53) NOT NULL,
    [AcidityTypeId]            INT        NOT NULL,
    [AcidityMin]               FLOAT (53) NOT NULL,
    [AcidityMax]               FLOAT (53) NOT NULL,
    [AcidityAvg]               FLOAT (53) NOT NULL,
    [PhMin]                    FLOAT (53) NOT NULL,
    [PhMax]                    FLOAT (53) NOT NULL,
    [PhAvg]                    FLOAT (53) NOT NULL,
    [isPuree]                  BIT        NOT NULL,
    [isCloudy]                 BIT        NOT NULL,
    [HunterLMin]               FLOAT (53) NULL,
    [HunterLMax]               FLOAT (53) NULL,
    [HunterLAvg]               FLOAT (53) NULL,
    [HunerAMin]                FLOAT (53) NULL,
    [HunterAMax]               FLOAT (53) NULL,
    [HunterAAvg]               FLOAT (53) NULL,
    [HunterBMin]               FLOAT (53) NULL,
    [HunterBMax]               FLOAT (53) NULL,
    [HunterBAvg]               FLOAT (53) NULL,
    [isRedClear]               BIT        NOT NULL,
    [Abs520Min]                FLOAT (53) NULL,
    [Abs520Max]                FLOAT (53) NULL,
    [Abs520Avg]                FLOAT (53) NULL,
    [Abs430Min]                FLOAT (53) NULL,
    [Abs430Max]                FLOAT (53) NULL,
    [Abs430Avg]                FLOAT (53) NULL,
    [ColorRatio]               FLOAT (53) NULL,
    [isLightClear]             BIT        NOT NULL,
    [Trans440Min]              FLOAT (53) NULL,
    [Trans440Max]              FLOAT (53) NULL,
    [Trans440Avg]              FLOAT (53) NULL,
    [Trans625Min]              FLOAT (53) NULL,
    [Trans625Max]              FLOAT (53) NULL,
    [Trans625Avg]              FLOAT (53) NULL,
    [DateCreated]              DATETIME   NOT NULL,
    [UserCreated]              INT        NOT NULL,
    [DateUpdated]              DATETIME   NOT NULL,
    [UserUpdated]              INT        NOT NULL,
    [DateDeleted]              DATETIME   NULL,
    [UserDeleted]              INT        NULL,
    [isDeleted]                BIT        NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductQualityChemicalId] ASC)
);


GO
PRINT N'Creating [dbo].[ProductQualityPhysical]...';


GO
CREATE TABLE [dbo].[ProductQualityPhysical] (
    [ProductQualityPhysicalId] INT      IDENTITY (1, 1) NOT NULL,
    [ProductPropertyId]        INT      NOT NULL,
    [Appearance]               INT      NOT NULL,
    [Taste]                    INT      NOT NULL,
    [Color]                    INT      NOT NULL,
    [Smell]                    INT      NOT NULL,
    [DateCreated]              DATETIME NOT NULL,
    [UserCreated]              INT      NOT NULL,
    [DateUpdated]              DATETIME NOT NULL,
    [UserUpdated]              INT      NOT NULL,
    [DateDeleted]              DATETIME NULL,
    [UserDeleted]              INT      NULL,
    [isDeleted]                BIT      NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductQualityPhysicalId] ASC)
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
    ADD CONSTRAINT [FK_ProductProperty_ProductQuality] FOREIGN KEY ([ProductQualityChemicalId]) REFERENCES [dbo].[ProductQualityChemical] ([ProductQualityChemicalId]);


GO
PRINT N'Creating [dbo].[FK_ProductQuality_AcidityType]...';


GO
ALTER TABLE [dbo].[ProductQualityChemical] WITH NOCHECK
    ADD CONSTRAINT [FK_ProductQuality_AcidityType] FOREIGN KEY ([AcidityTypeId]) REFERENCES [dbo].[AcidityType] ([AcidityTypeId]);


GO
PRINT N'Altering [dbo].[FullProductInfo]...';


GO
ALTER VIEW [dbo].[FullProductInfo]
	AS SELECT [dbo].[Product].[Id], [dbo].[Product].[ProductName],
	[dbo].[Product].[ProductPropertyId], [dbo].[Product].[ProductQuantity],
	[dbo].[Product].[ProductNotes], [dbo].[Product].[DateProduced],
	[dbo].[Product].[DateCreated], [dbo].[Product].[UserCreated],
	[dbo].[Product].[DateUpdated], [dbo].[Product].[UserUpdated],
	[dbo].[Product].[DateDeleted], [dbo].[Product].[UserDeleted],
	[dbo].[Product].[isDeleted],
	[dbo].[ProductProperty].[ProductId], [dbo].[ProductProperty].[ProductQualityChemicalId],
	[dbo].[ProductPackage].[PackageType],
	[dbo].[ProductPackage].[isInTank], [dbo].[ProductPackage].[TankId],
	[dbo].[ProductPackage].[isInDrum], [dbo].[ProductPackage].[StartingDrumNumber],
	[dbo].[ProductPackage].[EndingDrumNumber], [dbo].[ProductPackage].[TotalDrumCount],
	[dbo].[ProductPackage].[isInPallet], [dbo].[ProductPackage].[StartingPalletNumber],
	[dbo].[ProductPackage].[EndingPalletNumber], [dbo].[ProductPackage].[TotalPalletCount],
	[dbo].[ProductPackage].[ProductPackageNote],  [dbo].[ProductQualityPhysical].[Appearance],
	[dbo].[ProductQualityPhysical].[Taste], [dbo].[ProductQualityPhysical].[Color],
	[dbo].[ProductQualityPhysical].[Smell],
	[dbo].[ProductQualityChemical].[BrixMin], [dbo].[ProductQualityChemical].[BrixMax],
	[dbo].[ProductQualityChemical].[BrixAvg], [dbo].[ProductQualityChemical].[AcidityTypeId],
	[dbo].[ProductQualityChemical].[AcidityMin], [dbo].[ProductQualityChemical].[AcidityMax],
	[dbo].[ProductQualityChemical].[AcidityAvg], [dbo].[ProductQualityChemical].[PhMin],
	[dbo].[ProductQualityChemical].[PhMax], [dbo].[ProductQualityChemical].[PhAvg],
	[dbo].[ProductQualityChemical].[isPuree], [dbo].[ProductQualityChemical].[isCloudy],
	[dbo].[ProductQualityChemical].[HunterLMin], [dbo].[ProductQualityChemical].[HunterLMax],
	[dbo].[ProductQualityChemical].[HunterLAvg], [dbo].[ProductQualityChemical].[HunerAMin],
	[dbo].[ProductQualityChemical].[HunterAMax], [dbo].[ProductQualityChemical].[HunterAAvg],
	[dbo].[ProductQualityChemical].[HunterBMin], [dbo].[ProductQualityChemical].[HunterBMax],
	[dbo].[ProductQualityChemical].[HunterBAvg], [dbo].[ProductQualityChemical].[isRedClear],
	[dbo].[ProductQualityChemical].[Abs520Min], [dbo].[ProductQualityChemical].[Abs520Max],
	[dbo].[ProductQualityChemical].[Abs520Avg], [dbo].[ProductQualityChemical].[Abs430Min],
	[dbo].[ProductQualityChemical].[Abs430Max], [dbo].[ProductQualityChemical].[Abs430Avg],
	[dbo].[ProductQualityChemical].[ColorRatio], [dbo].[ProductQualityChemical].[isLightClear],
	[dbo].[ProductQualityChemical].[Trans440Min], [dbo].[ProductQualityChemical].[Trans440Max],
	[dbo].[ProductQualityChemical].[Trans440Avg], [dbo].[ProductQualityChemical].[Trans625Min],
	[dbo].[ProductQualityChemical].[Trans625Max], [dbo].[ProductQualityChemical].[Trans625Avg]

	FROM

	[dbo].[Product]

	LEFT JOIN dbo.ProductProperty ON [dbo].[Product].[Id] = [dbo].[ProductProperty].[ProductId]
	LEFT JOIN dbo.ProductPackage ON [dbo].[ProductProperty].[ProductPackageId] = [dbo].[ProductPackage].[ProductPackageId]
	LEFT JOIN dbo.ProductQualityPhysical ON [dbo].[ProductProperty].[ProductQualityPhysicalId] =[dbo].[ProductQualityPhysical].[ProductQualityPhysicalId]
	LEFT JOIN dbo.ProductQualityChemical ON [dbo].[ProductProperty].[ProductQualityChemicalId] = [dbo].[ProductQualityChemical].[ProductQualityChemicalId]
GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'da47bb5f-4e42-4d66-bf57-5b4b362bf5ba')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('da47bb5f-4e42-4d66-bf57-5b4b362bf5ba')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '15b11b53-7c26-4e29-8c4c-5fa4ec9e0983')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('15b11b53-7c26-4e29-8c4c-5fa4ec9e0983')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '427037d8-6480-4f54-b30b-d20a82e082a7')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('427037d8-6480-4f54-b30b-d20a82e082a7')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '5cd60749-dcdb-4ba7-a0c4-5053840191ae')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('5cd60749-dcdb-4ba7-a0c4-5053840191ae')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fccdaa73-9fb4-4443-b8cc-3a39d38effd0')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fccdaa73-9fb4-4443-b8cc-3a39d38effd0')

GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[ProductProperty] WITH CHECK CHECK CONSTRAINT [FK_ProductProperty_ProductPackage];

ALTER TABLE [dbo].[ProductProperty] WITH CHECK CHECK CONSTRAINT [FK_ProductProperty_ProductQuality];

ALTER TABLE [dbo].[ProductQualityChemical] WITH CHECK CHECK CONSTRAINT [FK_ProductQuality_AcidityType];


GO
PRINT N'Update complete.';


GO