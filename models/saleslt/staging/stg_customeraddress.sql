with source_data as (
    select
        CustomerId,
        AddressId,
        AddressType,
        rowguid,
        ModifiedDate
    from {{ source('saleslt', 'customeraddress') }}
)
select *
from source_data