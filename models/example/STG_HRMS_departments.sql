
    /**STG_HRMS_departments**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("DEPARTMENT_ID" AS NUMBER(38,0)) AS "DEPARTMENT_ID"
                        ,CAST("DEPARTMENT_NAME" AS TEXT(100) ) AS "DEPARTMENT_NAME"
                        ,CAST("LOCATION_ID" AS NUMBER(38,0)) AS "LOCATION_ID"
                    FROM {{source('LND','LND_HRMS_departments')}}
                    ) T 

