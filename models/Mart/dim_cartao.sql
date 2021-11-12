with
    staging_creditcard as 
    (
        select 
        c.creditcardid
        , c.cardtype
        from {{ref('stg_creditcard')}} c
    )

select *  from staging_creditcard