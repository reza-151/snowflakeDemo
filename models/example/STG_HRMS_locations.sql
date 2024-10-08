
    /**STG_HRMS_locations**/
    {{
          config(
            materialized = 'table',
        )
    }}
                SELECT * FROM (
                    SELECT 
                        CAST("LOCATION_ID" AS NUMBER(38,0)) AS "LOCATION_ID"
                        ,CAST("STREET_ADDRESS" AS TEXT(100) ) AS "STREET_ADDRESS"
                        ,CAST("POSTAL_CODE" AS TEXT(100) ) AS "POSTAL_CODE"
                        ,CAST("CITY" AS TEXT(100) ) AS "CITY"
                        ,CAST("STATE_PROVINCE" AS TEXT(100) ) AS "STATE_PROVINCE"
                        ,CAST("COUNTRY_ID" AS TEXT(100) ) AS "COUNTRY_ID"
                    FROM {{source('LND','LND_HRMS_locations')}}
                    ) T 

