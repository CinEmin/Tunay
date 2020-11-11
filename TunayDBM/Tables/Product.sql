CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
    [ProductName] VARCHAR(50) NOT NULL,
    [ProductPropertyId] INT NOT NULL,
    [ProductQuantity] INT NOT NULL,
    [ProductNotes] NVARCHAR(MAX) NULL,
    [DateProduced] DATETIME NOT NULL,
    [DateCreated] DATETIME NOT NULL,
    [UserCreated] INT NOT NULL,
    [DateUpdated] DATETIME NOT NULL,
    [UserUpdated] INT NOT NULL,
    [DateDeleted] DATETIME NULL,
    [UserDeleted] INT NULL,
    [isDeleted] BIT NOT NULL,
    CONSTRAINT [FK_Product_ProductProperty] FOREIGN KEY (ProductPropertyId) REFERENCES dbo.ProductProperty([ProductPropertyId])
)
