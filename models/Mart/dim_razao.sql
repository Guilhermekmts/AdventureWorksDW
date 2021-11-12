with
    staging_salesreason as 
    (
        select *
        from {{ref('stg_salesreason')}}
    )

    , staging_salesorderheadersalesreason as
    (
        select *
        from {{ref ('stg_salesorderheadersalesreason')}}
    )

    , transformed as
    (
        select
            ss2.salesorderid
            , ss.reasontype
            , ss.name
        from staging_salesreason ss
            left join staging_salesorderheadersalesreason ss2 on 
            ss.salesreasonid = ss2.salesreasonid
    )

select *  from transformed