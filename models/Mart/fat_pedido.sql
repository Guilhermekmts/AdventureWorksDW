with
    staging_salesorderheader as 
    (
        select *
        from {{ref('stg_salesorderheader')}}
    )

    , staging_salesorderdetail as
    (
        select *
        from {{ref ('stg_salesorderdetail')}}
    )

    , transformed as
    (
        select
            ss.status
            , ss.salesorderid
            , ss.freight
            , ss.orderdate
            , ss.customerid
            , ss.territoryid
            , ss.creditcardid
            , ss.salespersonid
            , ss.shiptoaddressid
            , ss2.orderqty
            , ss2.productid
            , ss2.unitprice
            , ss2.specialofferid
            , ss2.unitpricediscount

        from staging_salesorderheader ss
            left join staging_salesorderdetail ss2 on 
            ss.salesorderid = ss2.salesorderid
    )

select *  from transformed