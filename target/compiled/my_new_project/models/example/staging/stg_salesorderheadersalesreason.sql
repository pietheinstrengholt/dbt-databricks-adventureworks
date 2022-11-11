with source_data as (
    select
        salesorderid
        , modifieddate
        , salesreasonid
    from saleslt.salesorderheadersalesreason
)
select *
from source_data