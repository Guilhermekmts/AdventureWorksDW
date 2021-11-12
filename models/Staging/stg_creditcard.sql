with
    source_data as (
        select
            *
        from {{ source('adventure-works','creditcard')}}
)

select *
from source_data