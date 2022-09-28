SELECT 
ROW_NUMBER() OVER(ORDER BY m.UNIQUE_ID) as UNIQUE_ID, 
d.sop03_file_count AS sop03_file_count,
d.sop03_meta_count AS sop03_meta_count,
m.econ_file_count AS econ_file_count,
m.econ_meta_count AS econ_meta_count 
FROM {{ ref('JNRTRANS1_OUT_1_0') }} AS m  
INNER JOIN {{ ref('JNRTRANS_OUT_1_0') }} AS d  
ON m.econ_file_count  =  d.sop03_file_count  AND  m.econ_meta_count  =  d.sop03_meta_count