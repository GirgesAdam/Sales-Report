SELECT 
       P.[ProductKey]
      ,P.[ProductAlternateKey] As [Product Item Code]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,P.[EnglishProductName] As ProductName
	  ,PS.[EnglishProductSubcategoryName] As SubCategory -- Joined in from Subcategory Table
	  ,PC.[EnglishProductCategoryName] As Category -- Joined in from Category Table 
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,P.[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,P.[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,P.[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,P.[ModelName]
      --,[LargePhoto]
      ,P.[EnglishDescription] As ProductDescription
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,P.[Status]
      
  FROM dbo.DimProduct As P
  Left Join dbo.DimProductSubcategory As PS On P.ProductSubcategoryKey = PS.ProductSubcategoryKey
  Left Join dbo.DimProductCategory As PC On PC.ProductCategoryKey = PS.ProductCategoryKey
  Order By P.ProductKey ASC 
