
    /**STG_SAP_CONTACTS**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("ID" AS TEXT(500) ) AS "ID"
                        ,CAST("NAME" AS TEXT(500) ) AS "NAME"
                        ,CAST("PHONE" AS TEXT(500) ) AS "PHONE"
                    FROM {{source('LND','LND_SAP_CONTACTS')}}
                    ) T 

