
    /**STG_HRMS_dependents**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("DEPENDENT_ID" AS NUMBER(38,0)) AS "DEPENDENT_ID"
                        ,CAST("FIRST_NAME" AS TEXT(1000) ) AS "FIRST_NAME"
                        ,CAST("LAST_NAME" AS TEXT(1000) ) AS "LAST_NAME"
                        ,CAST("RELATIONSHIP" AS TEXT(100) ) AS "RELATIONSHIP"
                        ,CAST("EMPLOYEE_ID" AS NUMBER(38,0)) AS "EMPLOYEE_ID"
                    FROM {{source('LND','LND_HRMS_dependents')}}
                    ) T 

