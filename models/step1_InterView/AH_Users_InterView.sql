{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[BillingAddressID] [BillingAddressID],
	[BillingCreditCardID] [BillingCreditCardID],
	[PrimaryAddressID] [PrimaryAddressID],
	[AccessFailedCount] [AccessfailedCount],
	[IsApproved] [IsApproved],
	[IsLockedOut] [IsLockedOut],
	[Newsletter] [NewsLetter],
	[IsVerified] [IsVerified],
	[IsActive] [IsActive],
	[EmailConfirmed] [EmailConfirmed],
	[PhoneNumberConfirmed] [PhoneNumberConfirmed],
	[TwoFactorEnabled] [TwoFactorEnabled],
	[LockoutEnabled] [LockOutEnabled],
	[WebAPIEnabled] [WebapiEnabled],
	[CreationDate] [CreationDate],
	[LastLoginDate] [LastLoginDate],
	[LastActivityDate] [LastActivityDate],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[LockoutEndDateUtc] [LockOutEndDateUTC],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Email] as nvarchar(4000)) [Email],
	cast([Password] as nvarchar(4000)) [Password],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([LastIP] as nvarchar(4000)) [Lastip],
	cast([VerificationToken] as nvarchar(4000)) [VerificationToken],
	cast([PasswordResetToken] as nvarchar(4000)) [PasswordResetToken],
	cast([ServiceAuthorizationToken] as nvarchar(4000)) [ServiceAuthorizationToken],
	cast([PasswordHash] as nvarchar(4000)) [PasswordHash],
	cast([SecurityStamp] as nvarchar(4000)) [SecURItyStamp],
	cast([PhoneNumber] as nvarchar(4000)) [PhoneNumber]
From stg.[AH_Users_Raw]
