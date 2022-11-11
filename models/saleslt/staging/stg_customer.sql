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
    from {{ source('saleslt', 'customer') }}
)
select *
from source_data