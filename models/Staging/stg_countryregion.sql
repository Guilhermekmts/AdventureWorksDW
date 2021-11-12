with
    source_data as (
        select
            *
        from {{ source('adventure-works','countryregion')}}
)

select *
from source_data