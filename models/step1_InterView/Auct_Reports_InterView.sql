{{ config(materialized='view',schema='stg')}}
Select
	[REPORTSID] [ReportsID],
	cast([REPORTSCATEGORY] as nvarchar(4000)) [ReportsCategory],
	cast([REPORTSTITLE] as nvarchar(4000)) [ReportsTitle],
	cast([REPORTSFILENAME] as nvarchar(4000)) [ReportsFileName],
	cast([AUCTIONIND] as nvarchar(4000)) [Auctionind],
	cast([ACCOUNTIND] as nvarchar(4000)) [Accountind],
	cast([AUCTIONDAYIND] as nvarchar(4000)) [Auctiondayind],
	cast([PAYMENTIND] as nvarchar(4000)) [Paymentind],
	cast([VALUE1IND] as nvarchar(4000)) [Value1ind],
	cast([VALUE2IND] as nvarchar(4000)) [Value2ind],
	cast([VALUE3IND] as nvarchar(4000)) [Value3ind],
	cast([DATEFROMIND] as nvarchar(4000)) [DateFromind],
	cast([DATETOIND] as nvarchar(4000)) [Datetoind],
	cast([VALUE1TITLE] as nvarchar(4000)) [Value1Title],
	cast([VALUE1EXAMPLE] as nvarchar(4000)) [Value1Example],
	cast([VALUE2TITLE] as nvarchar(4000)) [Value2Title],
	cast([VALUE2EXAMPLE] as nvarchar(4000)) [Value2Example],
	cast([VALUE3TITLE] as nvarchar(4000)) [Value3Title],
	cast([VALUE3EXAMPLE] as nvarchar(4000)) [Value3Example],
	cast([DATEFROMTITLE] as nvarchar(4000)) [DateFromTitle],
	cast([DATEFROMEXAMPLE] as nvarchar(4000)) [DateFromExample],
	cast([DATETOTITLE] as nvarchar(4000)) [DatetoTitle],
	cast([DATETOEXAMPLE] as nvarchar(4000)) [DatetoExample],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[ISEXCELEXPORT] [IsexcelExport],
	[ISSORTABLE] [IsSorTable],
	cast([VALUE4IND] as nvarchar(4000)) [Value4ind],
	cast([VALUE4TITLE] as nvarchar(4000)) [Value4Title],
	cast([VALUE4EXAMPLE] as nvarchar(4000)) [Value4Example]
From stg.[Auct_Reports_Raw]
