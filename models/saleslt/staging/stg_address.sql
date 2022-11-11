with source_data as (
    select
        AddressID,
        AddressLine1,
        AddressLine2,
        City,
        StateProvince,
        CountryRegion,
        PostalCode,
        rowguid,
        modifieddate
    from {{ source('saleslt', 'address') }}
)
select *
from source_data