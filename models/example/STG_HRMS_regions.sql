
    /**STG_HRMS_regions**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("REGION_ID" AS NUMBER(38,0)) AS "REGION_ID"
                        ,CAST("REGION_NAME" AS TEXT(100) ) AS "REGION_NAME"
                    FROM {{ref('LND_HRMS_regions')}}
                    ) T 

