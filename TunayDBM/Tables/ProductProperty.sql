CREATE TABLE [dbo].[ProductProperty]
(
	[ProductPropertyId] INT NOT NULL PRIMARY KEY,
    [ProductId] INT NOT NULL,
    [ProductQualityChemicalId] INT NOT NULL,
    [ProductPackageId] INT NOT NULL,
    [ProductQualityPhysicalId] INT NOT NULL,
    [DateCreated] DATETIME NOT NULL,
    [UserCreated] INT NOT NULL,
    [DateUpdated] DATETIME NOT NULL,
    [UserUpdated] INT NOT NULL,
    [DateDeleted] DATETIME NULL,
    [UserDeleted] INT NULL,
    [isDeleted] BIT NOT NULL,
    CONSTRAINT [FK_ProductProperty_ProductQuality] FOREIGN KEY ([ProductQualityChemicalId]) REFERENCES [ProductQualityChemical]([ProductQualityChemicalId]),
    CONSTRAINT [FK_ProductProperty_ProductPackage] FOREIGN KEY ([ProductPackageId]) REFERENCES [ProductPackage]([ProductPackageId]),


)
