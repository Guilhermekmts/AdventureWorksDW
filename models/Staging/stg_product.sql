with
    source_data as (
        select
            *
        from {{ source('adventure-works','product')}}
)

select *
from source_data