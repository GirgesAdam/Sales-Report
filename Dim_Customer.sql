-- Cleansed DimCustomer Table --
Select 
  CustomerKey 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] 
  --,[MiddleName]
  , 
  [LastName], 
  [FirstName] + ' ' + [LastName] As [FullName] 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  Case Gender When 'M' Then 'Male' When 'F' Then 'Female' END As Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  [DateFirstPurchase] 
  --,[CommuteDistance]
  , 
  g.City As [Customer City] -- Joined in Customer City from Geography Table
FROM 
  dbo.DimCustomer As C 
  Left Join dbo.DimgeoGraphy As g on g.GeographyKey = c.GeographyKey 
Order By 
  CustomerKey ASC 
