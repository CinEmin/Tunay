CREATE TABLE [dbo].[ProductQualityPhysical]
(
	[ProductQualityPhysicalId] INT NOT NULL PRIMARY KEY IDENTITY,
    [ProductPropertyId] INT NOT NULL,
    [Appearance] INT NOT NULL,
    [Taste] INT NOT NULL,
    [Color] INT NOT NULL,
    [Smell] INT NOT NULL,
    [DateCreated] DATETIME NOT NULL,
    [UserCreated] INT NOT NULL,
    [DateUpdated] DATETIME NOT NULL,
    [UserUpdated] INT NOT NULL,
    [DateDeleted] DATETIME NULL,
    [UserDeleted] INT NULL,
    [isDeleted] BIT NOT NULL,
)
