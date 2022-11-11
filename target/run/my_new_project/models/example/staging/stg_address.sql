create or replace view default.stg_address
  
  
  as
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
    from saleslt.address
)
select *
from source_data
