/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  c.CustomerKey as customer_key, 
  c.FirstName as first_name, 
  c.LastName as last_name, 
  c.FirstName + ' ' + c.LastName as full_name, 
  case c.gender when 'M' then 'Male' when 'F' then 'Female' end as gender, 
  c.DateFirstPurchase as d_f_purchase, 
  g.city AS [Customer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey 
order by 
  customer_key asc
