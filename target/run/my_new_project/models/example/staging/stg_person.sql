create or replace view default.stg_person
  
  
  as
    with source_data as (
    select
        businessentityid
        , title
        , firstname
        , middlename
        , lastname
        , persontype
        , namestyle
        , suffix
        , modifieddate
        , rowguid
        , emailpromotion
    from saleslt.person
)
select *
from source_data
