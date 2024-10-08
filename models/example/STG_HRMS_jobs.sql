
    /**STG_HRMS_jobs**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("JOB_ID" AS NUMBER(38,0)) AS "JOB_ID"
                        ,CAST("JOB_TITLE" AS TEXT(100) ) AS "JOB_TITLE"
                        ,CAST("MIN_SALARY" AS NUMBER(8,2)) AS "MIN_SALARY"
                        ,CAST("MAX_SALARY" AS NUMBER(8,2)) AS "MAX_SALARY"
                    FROM {{ref('LND_HRMS_jobs')}}
                    ) T 

