with
    source_data as (
        select
            *
        from {{ source('adventure-works','employee')}}
)

select *
from source_data