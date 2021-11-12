with
    source_data as (
        select
            *
        from {{ source('adventure-works','salesreason')}}
)

select *
from source_data