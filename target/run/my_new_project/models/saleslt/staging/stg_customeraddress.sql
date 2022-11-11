create or replace view default.stg_customeraddress
  
  
  as
    with source_data as (
    select
        CustomerId,
        AddressId,
        AddressType,
        rowguid,
        ModifiedDate
    from saleslt.customeraddress
)
select *
from source_data
