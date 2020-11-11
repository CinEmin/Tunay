CREATE TABLE [dbo].[ProductPackage]
(
	[ProductPackageId] INT NOT NULL PRIMARY KEY IDENTITY,
    [ProductPropertyId] INT NOT NULL,
    [PackageType] NVARCHAR(50) NOT NULL,
    [isInTank] BIT NOT NULL,
    [TankId] INT NULL,
    [isInDrum] BIT NOT NULL,
    [StartingDrumNumber] INT NULL,
    [EndingDrumNumber] INT NULL,
    [TotalDrumCount] INT NULL,
    [isInPallet] BIT NOT NULL,
    [StartingPalletNumber] INT NULL,
    [EndingPalletNumber] INT NULL,
    [TotalPalletCount] INT NULL,
    [ProductPackageNote] NVARCHAR(MAX) NULL,
    [DateCreated] DATETIME NOT NULL,
    [UserCreated] INT NOT NULL,
    [DateUpdated] DATETIME NOT NULL,
    [UserUpdated] INT NOT NULL,
    [DateDeleted] DATETIME NULL,
    [UserDeleted] INT NULL,
    [isDeleted] BIT NOT NULL



)
