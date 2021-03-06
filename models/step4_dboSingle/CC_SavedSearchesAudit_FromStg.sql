{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([SearchDescription] as nvarchar(4000)) [SearchDescription],
	cast([Dml_Operation] as nvarchar(4000)) [Dml_Operation],
	cast([SavedSearchName] as nvarchar(4000)) [SavedSearchName],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Country] as nvarchar(4000)) [Country],
	cast([PriceFrom] as numeric(194)) [PriceFrom],
	cast([Priceto] as numeric(194)) [Priceto],
	cast([IsActive] as bit) [IsActive],
	cast([IncludePrivate] as bit) [IncludePrivate],
	cast([IncludeDealer] as bit) [IncludeDealer],
	cast([IncludeAuction] as bit) [IncludeAuction],
	cast([UserID] as int) [UserID],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [Yearto],
	cast([Distance] as int) [Distance],
	cast([VehicleTypeID] as int) [VehicleTypeID],
	cast([AlertModeID] as int) [AlertModeID],
	cast([AlertFrequencyID] as int) [AlertFrequencyID],
	cast([SavedSearchAuditPK] as int) [SavedSearchAuditPK],
	cast([AuditentryDateUTC] as datetime) [AuditentryDateUTC],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_SavedSearchesAudit_FinalView]