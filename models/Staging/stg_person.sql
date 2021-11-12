with
    source_data as (
        select
            *
        from {{ source('adventure-works','person')}}
)

select *
from source_data