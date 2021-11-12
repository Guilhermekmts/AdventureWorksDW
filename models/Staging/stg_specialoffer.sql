with
    source_data as (
        select
            *
        from {{ source('adventure-works','specialoffer')}}
)

select *
from source_data