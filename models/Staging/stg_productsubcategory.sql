with
    source_data as (
        select
            *
        from {{ source('adventure-works','productsubcategory')}}
)

select *
from source_data