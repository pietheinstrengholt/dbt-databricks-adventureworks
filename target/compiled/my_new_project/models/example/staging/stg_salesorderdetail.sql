with source_data as (
    select
        salesorderid
        , orderqty
        , salesorderdetailid
        , unitprice
        , specialofferid
        , modifieddate
        , rowguid
        , productid
        , unitpricediscount
    from saleslt.salesorderdetail
)
select *
from source_data