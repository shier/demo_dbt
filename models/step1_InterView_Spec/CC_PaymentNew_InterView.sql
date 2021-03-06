{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[UserId] [UserID],
	[PaymentTypeId] [PaymentTypeID],
	[CouponId] [CouponID],
	[IsActive] [IsActive],
	[Success] [Success],
	[OrderTotal] [OrderTotal],
	[OrderDiscount] [OrderDiscount],
	[ChargeAmount] [ChargeAmount],
	-- cast([CustomerInfo] as nvarchar(4000)) [CustomerInfo],
	-- cast([PaymentInfo] as nvarchar(4000)) [PaymentInfo],
	-- cast([TransactionInfo] as nvarchar(4000)) [TransactionInfo]
	CAST(JSON_VALUE(CustomerInfo, '$.CardName')  as nvarchar(100)) CardName ,
    CAST(JSON_VALUE(CustomerInfo, '$.CardCity')  as nvarchar(100)) CardCity,
    CAST(JSON_VALUE(CustomerInfo, '$.CardAddress1')  as nvarchar(200)) CardAddress,
    CAST(JSON_VALUE(CustomerInfo, '$.CardState')  as nvarchar(100)) CardState,
    CAST(JSON_VALUE(CustomerInfo, '$.CardCountry')  as nvarchar(100)) CardCountry,   
    CAST(JSON_VALUE(PaymentInfo, '$.ExpirationMonth')  as int) Month,
    CAST(JSON_VALUE(PaymentInfo, '$.ExpirationYear')  as int) Year,
    CAST(JSON_VALUE(PaymentInfo, '$.CardLastFour')  as int) CardLastFour,
    CAST(JSON_VALUE(PaymentInfo, '$.Token')  as nvarchar(100)) Token,
    CAST(JSON_VALUE(PaymentInfo, '$.PayerId')  as nvarchar(100)) PayerId,
    CAST(JSON_VALUE([TransactionInfo], '$.Approved')  as bit) IsApproved,
    CAST(JSON_VALUE(TransactionInfo, '$.AuthorizationCode')  as nvarchar(1000)) AuthorizationCode,
    CAST(JSON_VALUE(TransactionInfo, '$.ResponseCode')  as int) ResponseCode,
    CAST(JSON_VALUE(TransactionInfo, '$.ResponseReasonCode')  as int) ResponseReasonCode,
    CAST(JSON_VALUE(TransactionInfo, '$.TransactionID')  as nvarchar(100)) TransactionID,
    CAST(JSON_VALUE(TransactionInfo, '$.errorCode')  as int) ErrorCode,
    CAST(JSON_VALUE(TransactionInfo, '$.transactionId')  as nvarchar(100)) ErrorTransactionID,
    CAST(JSON_VALUE(TransactionInfo, '$.paymentStatus')  as nvarchar(100)) PaymentStatus
From stg.[CC_PaymentNew_Raw]