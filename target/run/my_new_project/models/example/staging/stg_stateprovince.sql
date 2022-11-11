create or replace view default.stg_stateprovince
  
  
  as
    with source_data as (
    select
        stateprovinceid
        , countryregioncode
        , modifieddate
        , rowguid
        , name as state_name
        , territoryid
        , isonlystateprovinceflag
        , stateprovincecode
    from saleslt.stateprovince
)
select *
from source_data