with
    staging_customer as 
    (
        select *
        from {{ref('stg_customer')}}
    )


    , staging_person as
    (
        select *
        from {{ref ('stg_person')}}
    )


    , transformed as
    (
        select
            sc.customerid
            , sp.firstname
            , sp.lastname           
        from staging_customer sc 
            left join staging_person sp on 
            sc.personid = sp.businessentityid
    )

select *  from transformed