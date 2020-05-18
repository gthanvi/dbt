select distinct c.code,c.country from "ELASTIC"."PRESS" as p
join {{ref('country')}} as c on p."_source.country" = c.country