with
    source_data as (
        select
            *
        from {{ source('adventure-works','salesorderheadersalesreason')}}
)

select *
from source_data