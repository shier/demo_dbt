-- DBT_Auct_Bidder_Target
-- DBT_Auct_Bidder_Source
-- {{ config(materialized='incremental',incremental_strategy='merge')}}
{{ config(materialized='incremental')}}

with hashData as (
  select 
    HASHBYTES('MD5', concat(cast(COMMENTS as varchar),'|',cast(BidderStatusID as varchar))) as hashValue,
    CURRENT_TIMESTAMP as effectiveTime,
    * 
  From DBT_Auct_Bidder_Source
)

select * from hashData
{% if is_incremental() %}

    where BidderID 
        not in (
            select BidderID 
            from {{ this }}
        )
        or exists (
            select BidderID, hashValue 
            from {{ this }} t2 
            where hashData.BidderID = t2.BidderID and hashData.hashValue != t2.hashValue
        )

{% endif %}
