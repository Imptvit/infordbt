{{
  config(
    materialized='table'
  )
}}
SELECT out_Field_Name1 AS Field_Name, 	
NULL AS Field_Value 
FROM {{ ref ('RTR_TEST_INSERT_1_0') }} AS in0   