SELECT TOP (1000) [dteday]
      ,[season]
      ,[yr]
      ,[mnth]
      ,[hr]
      ,[holiday]
      ,[weekday]
      ,[workingday]
      ,[weathersit]
      ,[temp]
      ,[atemp]
      ,[hum]
      ,[windspeed]
      ,[rider_type]
      ,[riders]
  FROM [bike_data].[dbo].[bike_share_yr_0]

  SELECT * FROM bike_share_yr_0
  SELECT * FROM cost_table

with cte as (
       SELECT * FROM bike_share_yr_0
        UNION All
       SELECT * FROM bike_share_yr_1 )
 Select dteday, [weekday], hr, holiday, workingday, rider_type, riders,price, COGS, riders*price as Revenue, (riders*price)-COGS as Profit   from cte a
 left join  
 cost_table b
 on a.yr = b.yr;