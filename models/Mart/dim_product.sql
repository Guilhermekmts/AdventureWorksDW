with
    staging_product as 
    (
        select *
        from {{ref('stg_product')}}
    )

    , staging_procutsubcategory as
    (
        select *
        from {{ref ('stg_productsubcategory')}}
    )

    , staging_productcategory as
    (
        select *
        from {{ref ('stg_productcategory')}}
    )

    , transformed as
    (
        select
            sp.productid
            , sp.name product
            , sp2.name subcategory
            , sp3.name category
        from staging_product sp 
            left join staging_procutsubcategory sp2 on 
            sp.productsubcategoryid = sp2.productsubcategoryid
            left join staging_productcategory sp3 on 
            sp2.productcategoryid = sp3.productcategoryid
    )

select *  from transformed