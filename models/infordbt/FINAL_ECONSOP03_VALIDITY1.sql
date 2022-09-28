{{
  config(
    materialized='run_custom_sql'
  )
}}

UPDATE {{ ref( 'FINAL_ECONSOP03_VALIDITY' ) }} AS T1 
SET T1.Field_Name = T2.Field_Name,
 T1.FIELD_VALUE = T2.Field_Value
FROM (SELECT  in1.OUT_FIELD_NAME3 AS Field_Name, in1.OUT_FIELD_VALUE3  AS Field_Value 
FROM {{ ref( 'RTR_TEST_UPDATE_1_0') }} AS in1 ) T2 
WHERE T2.Field_Name = T1.Field_Name