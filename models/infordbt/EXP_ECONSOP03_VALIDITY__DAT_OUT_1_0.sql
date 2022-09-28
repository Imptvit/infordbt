SELECT 
in0.UNIQUE_ID,
IFF (   (  in0.Field_Name IS NOT NULL )    ,  LPAD (  in0.Field_Name  ,  10  ,  ' '  )   ,   LPAD (  ' '  ,  10  ,  ' '  )    ) AS out_Field_Name,
IFF (   (  in0.Field_Value IS NOT NULL )    ,  LPAD (  in0.Field_Value  ,  10  ,  ' '  )   ,   LPAD (  ' '  ,  10  ,  ' '  )    ) AS out_Field_Value,
lookup0.Field_Name AS Field_Name1,
lookup0.Field_Value AS Field_Value1,
IFF (   (  lookup0.Field_Name IS NULL )   ,  'TRUE' ,  'FALSE'  ) AS Insert_new_record,
IFF (  in0.Field_Name = lookup0.Field_Name  AND  ( in0.Field_Name  <>  lookup0.Field_Name  )   ,  'TRUE' ,  'FALSE'  ) AS update_new_record 
FROM {{ ref ('UNI_ECONSOP03_VALIDITY__DAT_OUTPUT_1_0') }} AS in0              
LEFT JOIN  {{ ref ('LKPTRANS_OUT_1_0') }} AS lookup0 
ON in0.unique_id = lookup0.unique_id 