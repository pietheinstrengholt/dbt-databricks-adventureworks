with source_data as (
    select
        productid
        , name as product_name
        , safetystocklevel
        , finishedgoodsflag
        , class
        , makeflag
        , productnumber
        , reorderpoint
        , modifieddate
        , rowguid
        , productmodelid
        , weightunitmeasurecode
        , standardcost
        , productsubcategoryid
        , listprice
        , daystomanufacture
        , productline
        , color
        , sellstartdate
        , weight as product_weight
    from saleslt.product
)
select *
from source_data