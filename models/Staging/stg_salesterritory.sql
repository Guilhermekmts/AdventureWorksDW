with
    source_data as (
        select
            *
        from {{ source('adventure-works','salesterritory')}}
)

select *
from source_data