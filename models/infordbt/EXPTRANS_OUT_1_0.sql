SELECT 
in0.UNIQUE_ID,
in0.sop03_file_count AS sop03_file_count,
in0.sop03_meta_count AS sop03_meta_count,
in0.econ_file_count AS econ_file_count,
in0.econ_meta_count AS econ_meta_count,
IFF ( (  in0.sop03_file_count IS NOT NULL )   AND  (  in0.sop03_meta_count IS NOT NULL  )     AND in0.sop03_file_count = in0.sop03_meta_count  ,  'OK' ,  'MISMATCH'  ) AS sop03_validity,
IFF ( (  in0.econ_file_count  IS NOT NULL )   AND  (  in0.econ_meta_count  IS NOT NULL )     AND in0.econ_file_count = in0.econ_meta_count   ,  'OK' ,  'MISMATCH'  ) AS econ_validity,
'ECON File Count' AS Name_econ_file_count,
'ECON Meta Count' AS Name_econ_meta_count,
'ECON Validity Check' AS Name_econ_validity,
 '------------------' AS Name_Dash,
'SOP03 File Count' AS Name_sop03_file_count,
'SOP03 Meta Count' AS Name_sop03_meta_count,
'SOP03 Validity Check' AS Name_sop03_validity 
FROM {{ ref('JNR_SFB_ECONSOP03_FILECHECK_JOIN_OUT_0_OUT_1_0 AS in0') }} 