{{ config(materialized='view',schema='stg')}}
Select
	[fire_triggers_on_snapshot] [Fire_Triggers_On_Snapshot],
	[artid] [ArtID],
	cast([creation_script] as nvarchar(4000)) [Creation_Script],
	cast([del_cmd] as nvarchar(4000)) [Del_Cmd],
	cast([description] as nvarchar(4000)) [Description],
	cast([dest_table] as nvarchar(4000)) [Dest_Table],
	[filter] [Filter],
	cast([filter_clause] as nvarchar(4000)) [Filter_Clause],
	cast([ins_cmd] as nvarchar(4000)) [Ins_Cmd],
	cast([name] as nvarchar(4000)) [Name],
	[objid] [OBJID],
	[pubid] [PubID],
	[pre_creation_cmd] [Pre_Creation_cmd],
	[status] [Status],
	[sync_objid] [Sync_OBJID],
	[type] [Type],
	cast([upd_cmd] as nvarchar(4000)) [Upd_Cmd],
	cast([schema_option] as nvarchar(4000)) [SchEMA_Option],
	cast([dest_owner] as nvarchar(4000)) [Dest_Owner],
	[ins_scripting_proc] [Ins_Scripting_Proc],
	[del_scripting_proc] [Del_Scripting_Proc],
	[upd_scripting_proc] [Upd_Scripting_Proc],
	cast([custom_script] as nvarchar(4000)) [Custom_Script]
From stg.[Auct_SysArticles_Raw]
