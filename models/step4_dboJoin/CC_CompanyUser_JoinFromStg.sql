{{ config(materialized='table',schema='dbo')}}
SELECT
	C_C.[ID] [CompanyID],
	C_C.[IsActive] [IsActive_Company],
	C_C.[OptinThirdParty] [IsOptInThirdParty],
	C_C.[DisableImmediateSavedSearches] [HasDisableImmediateSavedSearches],
	C_C.[BlacklistedForAHNominations] [IsBlacklistedForAHNominations],
	C_C.[BuyerInquiry_IncludeADF] [HasBuyerInquiryIncludeADF],
	C_C.[DashboardLock] [HasDashboardLock],
	C_C.[WhiteListedForAHNominations] [IsWhitelistedForAHNominations],
	C_C.[OptOutAHNominationAlerts] [IsOptOutAHNominationAlerts],
	cast(C_C.[Latitude] as varchar(128)) [Latitude],
	cast(C_C.[Longitude] as varchar(128)) [Longitude],
	cast(C_C.[CreateDate] as datetime) [Created_Company],
	cast(C_C.[ModifyDate] as datetime) [ModifiedDate_Company],
	C_C.[BuyerInquiry_AdfOptionID] [BuyerInquiryADFOptionID],
	C_C.[CompanyTypeID],
	C_C.[MaxActiveListings],
	C_C.[MaxFeaturedListings],
	C_C.[ListingPaymentType] [ListingPaymentTypeID],
	C_C.[OverrideMAxActiveAlertCount] [OverrideMaxActiveAlertCount],
	cast(C_C.[CompanyName] as nvarchar(500)) [CompanyName],
	cast(C_C.[TelePhone] as nvarchar(40)) [PhoneNumber],
	cast(C_C.[Country] as nvarchar(100)) [Country],
	cast(C_C.[Aboutus] as nvarchar(4000)) [AboutUs],
	cast(C_C.[LogoURL] as nvarchar(2048)) [LogoURL],
	cast(C_C.[CompanyURL] as nvarchar(2048)) [CompanyURL],
	cast(C_C.[BuyerInquiryEmailAddress] as nvarchar(500)) [BuyerInquiryEmail],
	cast(C_C.[CompanyDescription] as nvarchar(4000)) [CompanyDescription],
	cast(C_C.[Email] as nvarchar(320)) [Email_Company],
	cast(C_C.[Address1] as nvarchar(256)) [Address1],
	cast(C_C.[Address2] as nvarchar(256)) [Address2],
	cast(C_C.[City] as nvarchar(100)) [City],
	cast(C_C.[State] as nvarchar(50)) [State],
	cast(C_C.[ZipCode] as nvarchar(50)) [PostalCode],
	C_U.[ID] [UserID],
	C_U.[CompanyID],
	C_U.[UserCreationSourceID],
	cast(C_U.[CreateDate] as datetime) [Created_User],
	cast(C_U.[ModifyDate] as datetime) [ModifiedDate_User],
	cast(C_U.[PasswordResetDate] as datetime) [PasswordResetDate],
	cast(C_U.[TwoFactorResetDate] as datetime) [TwoFactorResetDate],
	cast(C_U.[SessionToken] as nvarchar(100)) [SessionToken],
	cast(C_U.[Email] as nvarchar(320)) [Email_User],
	cast(C_U.[FirstName] as nvarchar(500)) [FirstName],
	cast(C_U.[LastName] as nvarchar(500)) [LastName],
	cast(C_U.[DataTokenID] as uniqueidentifier) [DataTokenID],
	cast(C_U.[PasswordResetToken] as uniqueidentifier) [PasswordResetToken],
	cast(C_U.[TwoFactorToken] as nvarchar(10)) [TwoFactorToken],
	C_U.[IsActive] [IsActive_User],
	C_U.[EmailConfirmed] [HasEmailConfirmed],
	C_U.[UseTwoFactor] [IsUseTwoFactor]
FROM [stg].[CC_Company_FinalView] AS C_C 
JOIN [stg].[CC_User_FinalView] AS C_U ON C_U.[CompanyID]=C_C.[ID]
