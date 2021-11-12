with
    staging_address as 
    (
        select *
        from {{ref('stg_address')}}
    )

    , staging_stateprovince as
    (
        select *
        from {{ref ('stg_stateprovince')}}
    )

    , staging_countryregion as
    (
        select *
        from {{ref ('stg_countryregion')}}
    )

    , transformed as
    (
        select
            sa.addressid
            , sa.city city
            , ss.name state_province
            , sc.name country
        from staging_address sa
            left join staging_stateprovince ss on 
            sa.stateprovinceid = ss.stateprovinceid
            left join staging_countryregion sc on 
            ss.countryregioncode = sc.countryregioncode
    )

select *  from transformed