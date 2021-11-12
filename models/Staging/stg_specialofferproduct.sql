with
    source_data as (
        select
            *
        from {{ source('adventure-works','specialofferproduct')}}
)

select *
from source_data