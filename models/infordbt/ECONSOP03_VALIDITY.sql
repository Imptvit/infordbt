SELECT
in1.Field_Name AS Field_Name,
in1.Field_Value AS Field_Value 
FROM {{ ref ('FINAL_ECONSOP03_VALIDITY') }} AS in1