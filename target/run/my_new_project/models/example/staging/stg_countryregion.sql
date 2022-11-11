create or replace view default.stg_countryregion
  
  
  as
    with source_data as (
    select
        countryregioncode
        , modifieddate
        , name as country_name
    from saleslt.countryregion
)
select *
from source_data
