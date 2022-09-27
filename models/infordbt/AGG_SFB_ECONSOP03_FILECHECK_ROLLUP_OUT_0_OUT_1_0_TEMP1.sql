SELECT 
COUNT ( in0.SOP3_LNDR_NO ) AS sop03_file_count 
FROM  {{ ref('qualifier_SQ_RDW_RECLASS__DAT_0') }} AS in0