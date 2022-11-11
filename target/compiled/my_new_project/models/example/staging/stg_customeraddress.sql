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