create or replace view default.stg_creditcard
  
  
  as
    with source_data as (
    select
        creditcardid
        , cardtype
        , expyear
        , modifieddate
        , expmonth
        , cardnumber
    from saleslt.creditcard
)
select *
from source_data
