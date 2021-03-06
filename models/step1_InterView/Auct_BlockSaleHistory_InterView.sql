{{ config(materialized='view',schema='stg')}}
Select
	[BLOCKSALEID] [BlockSaleID],
	[STATETAXDOLLARS] [StateTaxDollars],
	[STATETAXRATE] [StateTaxRate],
	[COUNTYTAXDOLLARS] [CountyTaxDollars],
	[COUNTYTAXRATE] [CountyTaxRate],
	[CITYTAXDOLLARS] [CityTaxDollars],
	[CITYTAXRATE] [CityTaxRate],
	[PRICE] [Price],
	[BUYERCOMMPERC] [BuyerCommPerc],
	[BUYERCOMMDOLLARS] [BuyerCommDollars],
	[COMMPERC] [CommPerc],
	[COMMDOLLARS] [CommDollars],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[DOCKETID] [DocketID],
	[SALESTATUSID] [SaleStatusID],
	[AUCTIONEERID] [AuctioneerID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[BUYERCOMMOVERRIDE] [BuyerCommOverride],
	[SELLERCOMMOVERRIDE] [SellerCommOverride],
	[RUNDATE] [RunDate],
	[TAXOVERRIDE] [TaxOverride],
	cast([TAXEXEMPTCODE] as nvarchar(4000)) [TaxExemptCode]
From stg.[Auct_BlockSaleHistory_Raw]
