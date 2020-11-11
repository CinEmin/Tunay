CREATE VIEW [dbo].[FullProductInfo]
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
	[dbo].[ProductQualityChemical].[BrixAvg], [dbo].[AcidityType].[AcidityTypeName],
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
	LEFT JOIN dbo.AcidityType ON [dbo].[ProductQualityChemical].[AcidityTypeId] = [dbo].[AcidityType].[AcidityTypeId]
