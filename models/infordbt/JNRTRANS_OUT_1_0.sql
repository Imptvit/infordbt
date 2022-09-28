SELECT 
ROW_NUMBER() OVER(ORDER BY d.UNIQUE_ID) as UNIQUE_ID, 
'110' AS sop03_file_count,
m.documentdatametainfo_payloadgroup_payloadinfo_payloadfilemetainfo_recordcoun AS sop03_meta_count 
FROM RDW_reclass__meta_0 AS m  
LEFT JOIN {{ ref('AGG_SFB_ECONSOP03_FILECHECK_ROLLUP_OUT_0_OUT_1_0') }} AS d  
ON m.documentdatametainfo_payloadgroup_payloadinfo_payloadfilemetainfo_recordcoun  =  d.sop03_file_count;