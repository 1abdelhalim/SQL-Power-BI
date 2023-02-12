select 
  datekey, 
  FullDateAlternateKey as date, 
  EnglishDayNameOfWeek as day, 
  left(EnglishMonthName, 3) as month, 
  calendaryear as year, 
  calendarquarter as quarter, 
  DayNumberOfMonth as day_month, 
  DayNumberOfYear as day_year, 
  WeekNumberOfYear as week_number 
from 
  [dbo].[DimDate]
where CalendarYear >= 2020
