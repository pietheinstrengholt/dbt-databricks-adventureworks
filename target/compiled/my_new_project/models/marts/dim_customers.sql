

with stg_customer as (
    select
        CustomerId,
        -- Adopted function concat() to concatenate first, middle and lastnames
        concat(ifnull(FirstName,' '),' ',ifnull(MiddleName,' '),' ',ifnull(LastName,' ')) as FullName
    from default.stg_customer
)

, stg_customeraddress as (
    select
        CustomerId,
        AddressId,
        AddressType
    from default.stg_customeraddress
)

, stg_address as (
    select
        AddressID,
        AddressLine1,
        City,
        StateProvince,
        CountryRegion,
        PostalCode
    from default.stg_address
)

, transformed as (
    select
    row_number() over (order by stg_customer.customerid) as customer_sk, -- auto-incremental surrogate key    
    stg_customer.CustomerId,
    stg_customer.fullname,
    stg_customeraddress.AddressID,
    stg_customeraddress.AddressType,
    stg_address.AddressLine1,
    stg_address.City,
    stg_address.StateProvince,
    stg_address.CountryRegion,
    stg_address.PostalCode
    from stg_customer
    inner join stg_customeraddress on stg_customer.CustomerId = stg_customeraddress.CustomerId
    inner join stg_address on stg_customeraddress.AddressID = stg_address.AddressID
)
select *
from transformed