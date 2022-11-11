create or replace view default.stg_customer
  
  
  as
    with source_data as (
    select
        CustomerId,
        NameStyle,
        Title,
        FirstName,
        MiddleName,
        LastName,
        Suffix,
        CompanyName,
        SalesPerson,
        EmailAddress,
        Phone,
        PasswordHash,
        PasswordSalt,
        rowguid,
        ModifiedDate
    from saleslt.customer
)
select *
from source_data
