select Country,code,to_date(updateAt,'MM-DD-YYYY') as updateAt from {{ref('country')}}