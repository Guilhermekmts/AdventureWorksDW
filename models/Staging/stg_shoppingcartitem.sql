with
    source_data as (
        select
            *
        from {{ source('adventure-works','shoppingcartitem')}}
)

select *
from source_data