
    /**STG_HRMS_employees**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("EMPLOYEE_ID" AS NUMBER(38,0)) AS "EMPLOYEE_ID"
                        ,CAST("FIRST_NAME" AS TEXT(100) ) AS "FIRST_NAME"
                        ,CAST("LAST_NAME" AS TEXT(100) ) AS "LAST_NAME"
                        ,CAST("EMAIL" AS TEXT(1000) ) AS "EMAIL"
                        ,CAST("PHONE_NUMBER" AS TEXT(100) ) AS "PHONE_NUMBER"
                        ,CAST("HIRE_DATE" AS DATE) AS "HIRE_DATE"
                        ,CAST("JOB_ID" AS NUMBER(38,0)) AS "JOB_ID"
                        ,CAST("SALARY" AS NUMBER(8,2)) AS "SALARY"
                        ,CAST("MANAGER_ID" AS NUMBER(38,0)) AS "MANAGER_ID"
                        ,CAST("DEPARTMENT_ID" AS NUMBER(38,0)) AS "DEPARTMENT_ID"
                    FROM {{ref('LND_HRMS_employees')}}
                    ) T 

