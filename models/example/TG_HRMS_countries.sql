    /**STG_HRMS_countries**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("COUNTRY_ID" AS TEXT(100) ) AS "COUNTRY_ID"
                        ,CAST("COUNTRY_NAME" AS TEXT(100) ) AS "COUNTRY_NAME"
                        ,CAST("REGION_ID" AS NUMBER(38,0)) AS "REGION_ID"
                    FROM {{source('LND','LND_HRMS_countries')}}
                    ) T 

