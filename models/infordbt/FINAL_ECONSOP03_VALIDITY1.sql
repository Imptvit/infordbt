{{
  config(
    materialized='run_custom_sql'
  )
}}

MERGE INTO {{ ref( 'FINAL_ECONSOP03_VALIDITY' ) }} AS T1 
USING (SELECT  in1.out_Field_Name3 AS Field_Name, in1.out_Field_Value3 AS Field_Value 
FROM {{ ref( 'RTR_TEST_UPDATE_1_0') }} AS in1 ) T2 ON T2.Field_Name = T1.out_Field_Name3 
 WHEN MATCHED THEN 
 UPDATE SET T1.out_Field_Name3 = T2.Field_Name,
 T1.OUT_FIELD_VALUE3 = T2.Field_Value 