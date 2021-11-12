with
    source_data as (
        select
            *
        from {{ source('adventure-works','salesorderdetail')}}
)

select *
from source_data