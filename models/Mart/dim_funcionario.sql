with
    staging_employee as 
    (
        select *
        from {{ref('stg_employee')}}
    )

    , staging_person as
    (
        select *
        from {{ref ('stg_person')}}
    )

    , transformed as
    (
        select
            se.businessentityid
            , se.jobtitle
            , sp.firstname
            , sp.lastname
        from staging_employee se
            left join staging_person sp on 
            se.businessentityid = sp.businessentityid
    )

select *  from transformed