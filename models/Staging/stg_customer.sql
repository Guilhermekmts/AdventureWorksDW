with
    source_data as (
        select
            *
        from {{ source('adventure-works','customer')}}
)

select *
from source_data