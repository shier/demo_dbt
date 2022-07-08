{{ config(materialized='incremental')}}

with hashData as (
  select 
    HASHBYTES('MD5', concat(cast(ApprovedByUserID as varchar),'|',cast(Comments as varchar))) as hashValue,
    CURRENT_TIMESTAMP as effectiveTime,
    * 
  From DBT_Auct_Bidder_Source
)

select * from hashData
{% if is_incremental() %}

    where BidderID 
        not exists (
            select BidderID 
            from {{ this }}
        )
        or exists (
            select BidderID, hashValue 
            from {{ this }} compareData 
            where hashData.BidderID = compareData.BidderID and hashData.hashValue != compareData.hashValue
        )

{% endif %}
