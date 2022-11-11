with source_data as (
    select
        businessentityid
        , name as storename
        , salespersonid
        , modifieddate
    from saleslt.store
)
select *
from source_data