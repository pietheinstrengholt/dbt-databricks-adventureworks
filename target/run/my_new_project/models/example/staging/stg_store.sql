create or replace view default.stg_store
  
  
  as
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
