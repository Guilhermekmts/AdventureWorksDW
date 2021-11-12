with
    source_data as (
        select
            *
        from {{ source('adventure-works','productcategory')}}
)

select *
from source_data