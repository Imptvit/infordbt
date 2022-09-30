SELECT ROW_NUMBER() OVER(ORDER BY d.UNIQUE_ID) as UNIQUE_ID, 
'110' AS econ_file_count,m."documentdatametainfo_payloadgroup_payloadinfo_payloadfilemetainfo_recordcoun" AS econ_meta_count 
FROM {{ ref('SIR_ECON_EXTRACT_LRF34002_META_PRIOR_0') }} AS m 
LEFT JOIN {{ ref('AGGTRANS_OUT_1_0') }}  AS d  ON 
m."documentdatametainfo_payloadgroup_payloadinfo_payloadfilemetainfo_recordcoun"  =  d.econ_file_count