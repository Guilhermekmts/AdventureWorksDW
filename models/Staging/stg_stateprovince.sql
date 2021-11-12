with
    source_data as (
        select
            *
        from {{ source('adventure-works','stateprovince')}}
)

select *
from source_data