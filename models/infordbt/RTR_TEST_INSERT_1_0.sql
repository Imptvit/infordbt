SELECT 
ROW_NUMBER() OVER(ORDER BY in0.UNIQUE_ID) as UNIQUE_ID, 
in0.out_Field_Name AS out_Field_Name1,
in0.out_Field_Value AS out_Field_Value1,
in0.Insert_new_record AS Insert_new_record1,
in0.update_new_record AS update_new_record1 
FROM {{ ref ('EXP_ECONSOP03_VALIDITY__DAT_OUT_1_0') }} AS in0 
WHERE  in0.Insert_new_record='TRUE' 