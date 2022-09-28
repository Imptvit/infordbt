SELECT 
in0.UNIQUE_ID,
lkp."Field_Name" AS Field_Name,
lkp."Field_Value" AS Field_Value,
in0.Field_Name AS Field_Name1 
FROM {{ ref ('UNI_ECONSOP03_VALIDITY__DAT_OUTPUT_1_0') }} AS in0 
LEFT OUTER JOIN ( {{ ref ('LKPTRANS_OUT_1_0_TEMP') }} ) AS lkp 
ON lkp."Field_Name" = in0.Field_Name 