with
    source_data as (
        select
            *
        from {{ source('adventure-works','salesterritoryhistory')}}
)

select *
from source_data