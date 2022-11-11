create or replace view default.stg_salesorderheader
  
  
  as
    with source_data as (
    select
        salesorderid
        , shipmethodid
        , billtoaddressid
        , modifieddate
        , rowguid
        , taxamt
        , shiptoaddressid
        , onlineorderflag
        , territoryid
        , status as order_status
        , orderdate
        , creditcardapprovalcode
        , subtotal
        , creditcardid
        , currencyrateid
        , revisionnumber
        , freight
        , duedate
        , totaldue
        , customerid
        , salespersonid
        , shipdate
        , accountnumber
    from saleslt.salesorderheader
)
select *
from source_data
