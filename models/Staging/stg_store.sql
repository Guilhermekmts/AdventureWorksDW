with
    source_data as (
        select
            *
        from {{ source('adventure-works','store')}}
)

select *
from source_data