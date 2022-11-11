with source_data as (
    select
        salesreasonid
        , name as reason_name
        , reasontype
        , modifieddate
    from saleslt.salesreason
)
select *
from source_data