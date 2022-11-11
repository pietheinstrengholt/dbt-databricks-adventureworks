with source_data as (
    select
        countryregioncode
        , modifieddate
        , name as country_name
    from saleslt.countryregion
)
select *
from source_data