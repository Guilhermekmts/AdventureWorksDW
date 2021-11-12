with
    source_data as (
        select
            *
        from {{ source('adventure-works','salesorderheader')}}
)

select *
from source_data