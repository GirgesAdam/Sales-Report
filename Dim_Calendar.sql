-- Cleansed DimDate Table --
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] As Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth] 
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] As Week
      ,[EnglishMonthName] As Month
	  ,LEFT([EnglishMonthName],3) As MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] As MonthN
      ,[CalendarQuarter] As Quarter
      ,[CalendarYear] As Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
       where [CalendarYear] >= 2021
